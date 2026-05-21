class eth_mon extends uvm_monitor;
  `uvm_component_utils(eth_mon)

  uvm_analysis_port #(eth_seq_item) tx_ap;
  uvm_analysis_port #(eth_seq_item) rx_ap;
  virtual eth_gmii_interface v_intf;
  
  bit [47:0] mac_addr;
  int mac_id;
  int rx_pkt_count;

  bit [7:0] tx_frame_q[$];
  bit [7:0] rx_frame_q[$];

  function new(string name="eth_mon", uvm_component parent=null);
    super.new(name,parent);
  endfunction

  //------------------------------------------------------------
  // BUILD
  //------------------------------------------------------------
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    tx_ap = new("tx_ap", this);
    rx_ap = new("rx_ap", this);

    if(!uvm_config_db #(virtual eth_gmii_interface)::get(this,"","vif",v_intf))
      `uvm_fatal("MON","VIF CONNECTION FAILED")
  endfunction

  //------------------------------------------------------------
  // RUN                                                        
  //------------------------------------------------------------
  task run_phase(uvm_phase phase);
    
    reset_counters();
    wait(v_intf.rst);

    fork
      tx_mon();
      rx_mon();
    join_none
  endtask

   //------------------------------------------------------------
// TX MONITOR
//------------------------------------------------------------
task tx_mon();

  eth_seq_item tr;

  bit bad_pkt;
  bit crc_ok;
  bit da_match;

  int byte_cnt;

  bit [47:0] tx_da;

  bit invalid_ethertype_tx;
  bit bad_preamble_sfd_tx;
  bit tx_er_seen;
  bit len_mismatch_tx;

  bit pkt_bad;

  forever begin

    @(posedge v_intf.TX_CLK);

    tx_frame_q.delete();

    bad_pkt              = 0;
    crc_ok               = 0;
    da_match             = 0;
    byte_cnt             = 0;
    invalid_ethertype_tx = 0;
    bad_preamble_sfd_tx  = 0;
    tx_er_seen           = 0;
    len_mismatch_tx      = 0;
    pkt_bad              = 0;

    if(v_intf.TX_EN) begin

      //------------------------------------------------
      // CAPTURE FRAME
      //------------------------------------------------
      while(v_intf.TX_EN) begin

        //--------------------------------------------
        // TX_ER
        //--------------------------------------------
        if(v_intf.TX_ER) begin
          bad_pkt   = 1;
          tx_er_seen = 1;
        end

        //--------------------------------------------
        // PREAMBLE CHECK
        //--------------------------------------------
        if(byte_cnt < 7) begin

          if(v_intf.TXD != 8'h55) begin
            bad_pkt = 1;
            bad_preamble_sfd_tx = 1;
          end

        end

        //--------------------------------------------
        // SFD CHECK
        //--------------------------------------------
        else if(byte_cnt == 7) begin

          if(v_intf.TXD != 8'hD5) begin
            bad_pkt = 1;
            bad_preamble_sfd_tx = 1;
          end

        end

        //--------------------------------------------
        // STORE ONLY DA ONWARDS
        //--------------------------------------------
       // else begin
          tx_frame_q.push_back(v_intf.TXD);
       // end

        byte_cnt++;

        @(posedge v_intf.TX_CLK);

      end

      //------------------------------------------------
      // CREATE TR
      //------------------------------------------------
      tr = eth_seq_item::type_id::create("tr", this);

      //------------------------------------------------
      // DA EXTRACTION
      //------------------------------------------------
      tx_da = {
        tx_frame_q[8],
        tx_frame_q[9],
        tx_frame_q[10],
        tx_frame_q[11],
        tx_frame_q[12],
        tx_frame_q[13]
      };

      //------------------------------------------------
      // DA MATCH
      //------------------------------------------------
      foreach(tr.mac_addr[i]) begin
        if(tx_da == tr.mac_addr[i]) begin
          da_match = 1;
          break;
        end
      end

      if(tx_da == 48'hFF_FF_FF_FF_FF_FF)
        da_match = 1;

      if(tx_da[40])
        da_match = 1;

      //------------------------------------------------
      // UNPACK
      //------------------------------------------------
      crc_ok = frame_unpack(
                 tr,
                 tx_frame_q,
                 8,
                 0,
                 len_mismatch_tx,
                 invalid_ethertype_tx
               );

      //------------------------------------------------
      // ERROR CONDITIONS
      //------------------------------------------------
      if(bad_pkt)
        pkt_bad = 1;

      if(!da_match)
        pkt_bad = 1;

      if(invalid_ethertype_tx)
        pkt_bad = 1;

      if(len_mismatch_tx)
        pkt_bad = 1;

      if(!crc_ok)
        pkt_bad = 1;

      //------------------------------------------------
      // ERROR PRINTS
      //------------------------------------------------
      if(tx_er_seen) begin
        `uvm_error("TX_ERR",
          $sformatf(
            "TX_ER asserted frame_size=%0d",
            tx_frame_q.size()))
      end

      if(bad_preamble_sfd_tx) begin
        `uvm_error("TX_PREAMBLE_SFD",
          $sformatf(
            "Bad Preamble/SFD frame_size=%0d",
            tx_frame_q.size()))
      end

      if(!da_match) begin
        `uvm_error("TX_DA",
          $sformatf(
            "Invalid DA=%h",
            tx_da))
      end

      if(invalid_ethertype_tx) begin
        `uvm_error("TX_ETHERTYPE",
          $sformatf(
            "Undefined EtherType=%0d",
            tr.ether_type))
      end

      if(len_mismatch_tx) begin
        `uvm_error("TX_LEN",
          $sformatf(
            "Length mismatch detected"))
      end

      if(!crc_ok) begin
        `uvm_error("TX_CRC",
          $sformatf(
            "Bad CRC DA=%h SA=%h CRC=%h",
            tr.da,
            tr.sa,
            tr.crc))
      end

      //------------------------------------------------
      // CLASSIFICATION
      // ONLY ONCE
      //------------------------------------------------
      if(tr.da == 48'hFF_FF_FF_FF_FF_FF)
        globals::v_uif[mac_addr].tx_broadcast_count++;

      else if(tr.da[40] &&
              tr.da != 48'hFF_FF_FF_FF_FF_FF &&
              !tr.pause_frame_en)
        globals::v_uif[mac_addr].tx_multicast_count++;

      else
        globals::v_uif[mac_addr].tx_unicast_count++;

      //------------------------------------------------
      // VLAN
      //------------------------------------------------
      if(tr.vlan_en)
        globals::v_uif[mac_addr].tx_vlan_count++;

      //------------------------------------------------
      // PAUSE
      //------------------------------------------------
      if(tr.pause_frame_en || tr.ether_type == 16'h8808)
        globals::v_uif[mac_addr].tx_pause_count++;

      //------------------------------------------------
      // RUNT / FRAGMENT
      //------------------------------------------------
      if(tr.payload.size() < 46 &&
         !tr.pause_frame_en) begin

        globals::v_uif[mac_addr].tx_runt_count++;
        globals::v_uif[mac_addr].tx_fragment_count++;

      end

      //------------------------------------------------
      // JUMBO
      //------------------------------------------------
      if(tr.payload.size() > 1500 &&
         tr.payload.size() <= 9000)

        globals::v_uif[mac_addr].tx_jumbo_count++;

      //------------------------------------------------
      // SUPER JUMBO
      //------------------------------------------------
      if(tr.payload.size() > 9000)
        globals::v_uif[mac_addr].tx_super_jumbo_count++;

      //------------------------------------------------
      // COLLISION
      //------------------------------------------------
      if(v_intf.COL)
        globals::v_uif[mac_addr].tx_collison_count++;

      //------------------------------------------------
      // GOOD / BAD COUNTSglobal
      //------------------------------------------------
      if(pkt_bad)
        globals::v_uif[mac_addr].tx_bad_pkt_count++;
      else
        globals::v_uif[mac_addr].tx_good_pkt_count++;



      //------------------------------------------------
      // WRITE ALWAYS
      //------------------------------------------------
      tx_ap.write(tr);

    end

  end

endtask 
    
  //------------------------------------------------------------
  // RX MONITOR
  //------------------------------------------------------------
    task rx_mon();
      eth_seq_item tr;
      bit bad_pkt;
      bit crc_ok;
      bit da_match;
      
      int byte_cnt;
      
      bit [47:0] rx_da;
      
      bit invalid_ethertype;
      
      bit bad_preamble_sfd;
      bit rx_er_seen;
      
      time last_pause_rx_time;
	  bit [15:0] active_pause_time;
      bit len_mismatch_rx;
      forever begin
        @(posedge v_intf.RX_CLK);
        rx_frame_q.delete();
        bad_pkt  = 0;
        byte_cnt = 0;
        len_mismatch_rx=0;
        bad_preamble_sfd  = 0;
   		 rx_er_seen        = 0;
        invalid_ethertype=0;
        
        if(v_intf.RX_DV) begin
          //------------------------------------------------
          // validate preamble/SFD
          // store only DA onwards
          //------------------------------------------------
          while(v_intf.RX_DV) begin
            if(v_intf.RX_ER) begin
              if(!bad_pkt)
                //globals::v_uif[mac_addr].rx_bad_pkt_count++;
              bad_pkt = 1;
              rx_er_seen = 1;
              
            end
            if(byte_cnt < 7) begin
              if(v_intf.RXD != 8'h55) begin
                if(!bad_pkt)
                //globals::v_uif[mac_addr].rx_bad_pkt_count++;
                bad_pkt = 1;
                bad_preamble_sfd = 1;
                
              end
            end
            else if(byte_cnt == 7) begin
              if(v_intf.RXD != 8'hD5) begin
                if(!bad_pkt)
              //  globals::v_uif[mac_addr].rx_bad_pkt_count++;
                bad_pkt = 1;
                bad_preamble_sfd = 1;
                
              end
            end
            
            
            
        
            else begin
              rx_frame_q.push_back(v_intf.RXD);
            end
            byte_cnt++;
            @(posedge v_intf.RX_CLK);
          end
          
          
          
           //------------------------------------------------
      // create transaction
      //------------------------------------------------
          tr = eth_seq_item::type_id::create("tr", this);
          rx_pkt_count++;
         tr.rx_count = rx_pkt_count;
          
         //------------------------------------------------
      // DA extraction
      //------------------------------------------------
      rx_da = {
        rx_frame_q[0],
        rx_frame_q[1],
        rx_frame_q[2],
        rx_frame_q[3],
        rx_frame_q[4],
        rx_frame_q[5]
      }; 
          
         //------------------------------------------------
      // DA validation
      //------------------------------------------------
      da_match = 0;

      foreach(tr.mac_addr[i]) begin
        if(rx_da == tr.mac_addr[i]) begin
          da_match = 1;
          break;
        end
      end  
         
          if(rx_da == 48'hFF_FF_FF_FF_FF_FF)
        da_match = 1;

      if(rx_da[40])
        da_match = 1;
          
          
      //------------------------------------------------
      // bad preamble / sfd / rx_er
      //------------------------------------------------
        if(bad_pkt) begin

        //--------------------------------------------
        // classify packet even if bad
        //--------------------------------------------
 if(tr.da == 48'hFF_FF_FF_FF_FF_FF)
            globals::v_uif[mac_addr].rx_broadcast_count++;
          else if(tr.da[40] && tr.da !== 48'hFF_FF_FF_FF_FF_FF && !tr.pause_frame_en)
            globals::v_uif[mac_addr].rx_multicast_count++;
          else
            globals::v_uif[mac_addr].rx_unicast_count++;

        //--------------------------------------------
        // error messages
        //--------------------------------------------
        if(rx_er_seen) begin
          `uvm_error("RX_ERR",
            $sformatf(
            "RX_ER asserted : Dropping packet frame_size=%0d",
            rx_frame_q.size()))
        end

        if(bad_preamble_sfd) begin
          `uvm_error("RX_PREAMBLE_SFD",
            $sformatf(
            "Bad Preamble/SFD detected : Dropping packet frame_size=%0d",
            rx_frame_q.size()))
        end
          
          
       
            
          
            globals::v_uif[mac_addr].rx_bad_pkt_count++;
			        //  rx_ap.write(tr);

        
        continue;
      end

 //------------------------------------------------
      // Invalid DA
      //------------------------------------------------
     if(!da_match) begin

  //--------------------------------------------
  // classify packet before dropping
  //--------------------------------------------
  if(rx_da == 48'hFF_FF_FF_FF_FF_FF)

   globals::v_uif[mac_addr].rx_broadcast_count++;

  else if(rx_da[40])

     globals::v_uif[mac_addr].rx_multicast_count++;

  else

            globals::v_uif[mac_addr].rx_unicast_count++;

  //--------------------------------------------
  // bad packet count
  //--------------------------------------------
            globals::v_uif[mac_addr].rx_bad_pkt_count++;

  `uvm_error("RX_MON",
    $sformatf("Invalid DA = %h", rx_da))

 // update_ui();

//  ui_ap.write(mon_count);

  continue;

end

      //------------------------------------------------
      // unpack
      // offset = 0 because queue starts from DA
      //------------------------------------------------
        
          crc_ok = frame_unpack(tr, rx_frame_q, 0, 1, len_mismatch_rx,invalid_ethertype);
          
if(invalid_ethertype) begin

  //--------------------------------------------
  // classify before dropping
  //--------------------------------------------
  if(tr.da == 48'hFF_FF_FF_FF_FF_FF)
    globals::v_uif[mac_addr].rx_broadcast_count++;

  else if(tr.da[40])
    globals::v_uif[mac_addr].rx_multicast_count++;

  else
    globals::v_uif[mac_addr].rx_unicast_count++;

  //--------------------------------------------
  // bad packet count
  //--------------------------------------------
  globals::v_uif[mac_addr].rx_bad_pkt_count++;

  `uvm_error("RX_UNDEFINED_ETHERTYPE",
    $sformatf(
    "Dropping packet : Undefined EtherType = %0d",
    tr.ether_type))

  continue;
end
       

          if(len_mismatch_rx) begin
            globals::v_uif[mac_addr].rx_bad_pkt_count++;
            continue;
          end

      //------------------------------------------------
      // publish
      //------------------------------------------------
      if(!crc_ok) begin
        
        if(tr.da == 48'hFF_FF_FF_FF_FF_FF)
   globals::v_uif[mac_addr].rx_broadcast_count++;

        else if(tr.da[40] && !tr.pause_frame_en)
     globals::v_uif[mac_addr].rx_multicast_count++;

        else
            globals::v_uif[mac_addr].rx_unicast_count++;
         
        
        if(!bad_pkt)
          globals::v_uif[mac_addr].rx_bad_pkt_count++;
        `uvm_error("RX_CRC_DROP",$sformatf("Dropping packet : Bad FCS DA=%h SA=%h CRC=%h",tr.da, tr.sa, tr.crc))
        continue;
      end
     
          

          if(tr.pause_frame_en && tr.ether_type == 16'h8808 && tr.pause_time != 0 ) begin
            
             globals::pause_value[mac_addr] = tr.pause_time;
             globals::pause_flag[mac_addr]  = 1;


            `uvm_info("PAUSE_FRAME_RX",
              $sformatf(
                "Pause frame received : opcode=%0h pause_time=%0d",
                tr.pause_opc,
                tr.pause_time),
              UVM_LOW) 
             

            //--------------------------------------
            // Pause DA check
            //--------------------------------------
            if(tr.da != 48'h01_80_C2_00_00_01) begin
              `uvm_error("PAUSE_DA",
                $sformatf("Invalid Pause DA = %h",tr.da))
            end

            //--------------------------------------
            // Pause opcode check
            //--------------------------------------
            if(tr.pause_opc != 16'h0001) begin
              `uvm_error("PAUSE_OPCODE",
                $sformatf("Invalid Pause Opcode = %h",
                tr.pause_opc))
            end

            //--------------------------------------
            // Pause time check
            //--------------------------------------
            if(tr.pause_time == 0) begin
              `uvm_warning("PAUSE_TIME",
                "Pause time is ZERO")
            end

          end
          
          
          //------------------------------------------------
      // GOOD PACKET CLASSIFICATION
      //------------------------------------------------
      `uvm_info("RX_CLASSIFY",
        $sformatf(
          "DA=%h pause=%0b multicast_bit=%0b",
          tr.da,
          tr.pause_frame_en,
          tr.da[40]),
        UVM_LOW)
          
      //------------------------------------------------
      // PAUSE FRAME INFO
      //------------------------------------------------
      if(tr.ether_type == 16'h8808 && tr.pause_opc == 16'h0001) begin
        $display("22222222222222222222222222");
        globals::pause_value[mac_id] = tr.pause_time;
        globals::pause_flag[mac_id]  = 1;
        globals:: pause_update[mac_id]=1;
  

        `uvm_info("PAUSE_FRAME_TX",
          $sformatf(
            "Pause frame opcode=%0h pause_time=%0d,mac_addr=%d",
            tr.pause_opc,
            tr.pause_time,mac_id),
          UVM_LOW)

      end          
          
            //------------------------------------------
            //  PFC pause information
            //------------------------------------------
          if(tr.ether_type == 16'h8808 && tr.pause_opc == 16'h0101) begin 
            for(int i=0;i<8;i++) begin
              if(tr.priority_en_vector[i]) begin
                globals::pfc_value[mac_id][i] = tr.pfc_pause_time[i];
                globals::pfc_flag[mac_id][i] = 1;
                $display("llllllllllllllllllllllllllz");
               `uvm_info("PFC_RX", 
                          $sformatf( "Priority=%0d Pause_Time=%0d,mac_id=%d", 
                                    i,tr.pfc_pause_time[i],mac_id),UVM_LOW)

              end
            end
       
          end
          
          
          if(tr.da == 48'hFF_FF_FF_FF_FF_FF)
            globals::v_uif[mac_addr].rx_broadcast_count++;
          else if(tr.da[40] && tr.da !== 48'hFF_FF_FF_FF_FF_FF && !tr.pause_frame_en)
            globals::v_uif[mac_addr].rx_multicast_count++;
          else
            globals::v_uif[mac_addr].rx_unicast_count++;

          if(tr.vlan_en)
            globals::v_uif[mac_addr].rx_vlan_count++;

          if(tr.pause_frame_en || tr.ether_type == 16'h8808)
            globals::v_uif[mac_addr].rx_pause_count++;

          if(tr.payload.size() < 46 && !tr.pause_frame_en) begin
            globals::v_uif[mac_addr].rx_runt_count++;
            globals::v_uif[mac_addr].rx_fragment_count++;
          end;

          if(tr.payload.size() > 1500 && tr.payload.size() <= 9000)
            globals::v_uif[mac_addr].rx_jumbo_count++;

          if(tr.payload.size() > 9000) begin
            globals::v_uif[mac_addr].rx_super_jumbo_count++;
          end
          
          if(!bad_pkt && crc_ok)
            globals::v_uif[mac_addr].rx_good_pkt_count++;
          
          rx_ap.write(tr);
        end      
  end
endtask

  //------------------------------------------------------------
  // FRAME UNPACK
  //------------------------------------------------------------
  function bit frame_unpack(
    eth_seq_item  tr,
    ref bit [7:0] frame_q[$],
    input int     offset,
    input bit     residue_mode,
    output bit len_mismatch,
    output bit  invalid_ethertype
   
  );

    int idx = offset;
    bit [31:0] next_crc;
    int payload_size;
    int actual_payload_size; 
      len_mismatch = 0;
    invalid_ethertype=0;
    
      //--------------------------------------
      // TX PATH
      // Include preamble + SFD
      //--------------------------------------
    
      if(residue_mode == 0) begin

        for(int i=0;i<7;i++) begin
          tr.preamble[i] = frame_q[i];
        end

        tr.sfd = frame_q[7];

      end

    // DA
    for(int i = 5; i >= 0; i--)
      tr.da[i*8 +: 8] = frame_q[idx++];

    // SA
    for(int i = 5; i >= 0; i--)
      tr.sa[i*8 +: 8] = frame_q[idx++];

    // VLAN
    if({frame_q[idx], frame_q[idx+1]} == 16'h8100) begin
      tr.vlan_en   = 1;
      tr.TPID      = {frame_q[idx], frame_q[idx+1]};
      idx         += 2;

      tr.PCP       = frame_q[idx][7:5];
      tr.DEI       = frame_q[idx][4];
      tr.VID[11:8] = frame_q[idx][3:0];
      idx++;

      tr.VID[7:0]  = frame_q[idx];
      idx++;
    end
    else
      tr.vlan_en = 0;

    // EtherType / Length
    tr.ether_type[15:8] = frame_q[idx++];
    tr.ether_type[7:0]  = frame_q[idx++];

  // Pause frame
      if(tr.ether_type == 16'h8808) begin

        tr.pause_opc = {frame_q[idx], frame_q[idx+1]};
        idx += 2;

        //--------------------------------------------------
        // STANDARD PAUSE FRAME
        //--------------------------------------------------
        if(tr.pause_opc == 16'h0001) begin

          tr.pause_frame_en = 1;
          tr.pfc_frame_en   = 0;

          tr.pause_time = {frame_q[idx], frame_q[idx+1]};
          idx += 2;
          tr.payload = new[42];

          for(int i=0;i<42;i++)
            tr.payload[i] = frame_q[idx++];
        end

        //--------------------------------------------------
        // PFC FRAME
        //--------------------------------------------------
        else if(tr.pause_opc == 16'h0101) begin

          tr.pause_frame_en = 0;
          tr.pfc_frame_en   = 1;

          tr.priority_en_vector =
            {frame_q[idx], frame_q[idx+1]};
          idx += 2;

          for(int i=0;i<8;i++) begin
            tr.pfc_pause_time[i] =
              {frame_q[idx], frame_q[idx+1]};
            idx += 2;
          end

          // reserved bytes
          tr.payload = new[26];

          for(int i=0;i<26;i++)
            tr.payload[i] = frame_q[idx++];

        end

      end
 	 // Actual bytes on wire = total queue - bytes consumed so far - 4 (CRC)
      actual_payload_size = int'(frame_q.size() - idx - 4);
      
       if(tr.ether_type <= 16'd1500) begin
      
      payload_size = int'(tr.ether_type);   // what length field claims

  `uvm_info("MON_LEN_CHECK",
            $sformatf("ether_type(claimed)=%0h  actual_payload=%0h",
               payload_size, actual_payload_size), UVM_LOW)

  // Mismatch detection
  if(actual_payload_size != payload_size) begin
      len_mismatch = 1;
    `uvm_error("MON_LEN_MISMATCH",
               $sformatf("DA=%h SA=%h | ether_type says %0h bytes but payload has %0h bytes",
                 tr.da, tr.sa, payload_size, actual_payload_size))
  end
       end
      
      //-----------------------------------------
  // UNDEFINED RANGE
  //-----------------------------------------
  else if(tr.ether_type > 16'd1500 &&
          tr.ether_type < 16'd1536) begin
    
    invalid_ethertype=1;
    
    /*
    `uvm_error("UNDEFINED_ETHERTYPE",
      $sformatf(
      "Reserved EtherType/Length value detected = %0d",
      tr.ether_type))*/

  end
      
   //-----------------------------------------
  // VALID ETHERTYPE
  //-----------------------------------------
  else begin

    `uvm_info("VALID_ETHERTYPE",
      $sformatf(
      "EtherType frame detected = %0h",
      tr.ether_type),
      UVM_LOW)

  end    
  
  tr.payload = new[actual_payload_size];
  for(int i = actual_payload_size-1; i >= 0; i--)
  tr.payload[i] = frame_q[idx++];
   


    // CRC field: always the last 4 bytes in the queue
    tr.crc = {frame_q[idx], frame_q[idx+1], frame_q[idx+2], frame_q[idx+3]};

    // Running CRC over data bytes (offset..idx-1), skipping preamble+SFD
    next_crc = 32'hFFFF_FFFF;
    for(int i = offset; i < idx; i++)
      next_crc = tr.crc_32(next_crc, frame_q[i]);


    if(!residue_mode) begin
      next_crc = ~next_crc;

      `uvm_info("TX MON UNPACKING",
        $sformatf(
          "\n\tpreamble=%0p \n\t sfd= %0h \n\t DA = %h\n\t SA          = %h\n\t ether_type = 0x%0h\n\t payload = %0d bytes\n\t CRC (frame) = 0x%h\n\t CRC (calc) = 0x%h\n\t CRC match = %0b\n\t frame size  = %0h\n\t VLAN_EN     = %0b\n\t TPID=%h PCP=%h DEI=%h VID=%h\n\t pause_en=%0b pause_opc=%h pause_time=%0d",
          tr.preamble,tr.sfd,
          tr.da, tr.sa, tr.ether_type, tr.payload.size(),
          tr.crc, next_crc, (next_crc == tr.crc),
          frame_q.size(),
          tr.vlan_en, tr.TPID, tr.PCP, tr.DEI, tr.VID,
          tr.pause_frame_en, tr.pause_opc, tr.pause_time),
        UVM_LOW)

      return (next_crc == tr.crc);
    end


    for(int i = 0; i < 4; i++)
      next_crc = tr.crc_32(next_crc, tr.crc[8*i +: 8]);

    next_crc = {<<{next_crc}};

    `uvm_info("RX MON UNPACKING",
      $sformatf(
        "\n\t DA          = %h\n\t SA          = %h\n\t ether_type  = 0x%0h\n\t payload     = %0d bytes\n\t CRC (frame) = 0x%h\n\t residue     = 0x%h\n\t CRC OK      = %0b\n\t frame size  = %0h\n\t VLAN_EN     = %0b\n\t TPID=%h PCP=%h DEI=%h VID=%h\n\t pause_en=%0b pause_opc=%h",
        tr.da, tr.sa, tr.ether_type, tr.payload.size(),
        tr.crc, next_crc, (next_crc == 32'hC704DD7B),
        frame_q.size(),
        tr.vlan_en, tr.TPID, tr.PCP, tr.DEI, tr.VID,
        tr.pause_frame_en, tr.pause_opc),
      UVM_LOW)

    return (next_crc == 32'hC704DD7B);

  endfunction

  //------------------------------------------------------------
  // UPDATE UI
 
    //------------------------------------------------------------
  function void reset_counters();

      globals::v_uif[mac_addr].tx_good_pkt_count      = 0;
      globals::v_uif[mac_addr].tx_bad_pkt_count       = 0;
	  globals::v_uif[mac_addr].tx_collison_count      = 0;
      globals::v_uif[mac_addr].tx_unicast_count       = 0;
      globals::v_uif[mac_addr].tx_multicast_count     = 0;
      globals::v_uif[mac_addr].tx_broadcast_count     = 0;
      globals::v_uif[mac_addr].tx_fragment_count      = 0;
      globals::v_uif[mac_addr].tx_runt_count          = 0;
      globals::v_uif[mac_addr].tx_pause_count         = 0;
      globals::v_uif[mac_addr].tx_vlan_count          = 0;

      globals::v_uif[mac_addr].rx_good_pkt_count      = 0;
      globals::v_uif[mac_addr].rx_bad_pkt_count       = 0;
      globals::v_uif[mac_addr].rx_unicast_count       = 0;
      globals::v_uif[mac_addr].rx_multicast_count     = 0;
      globals::v_uif[mac_addr].rx_broadcast_count     = 0;
      globals::v_uif[mac_addr].rx_fragment_count      = 0;
      globals::v_uif[mac_addr].rx_runt_count          = 0;
      globals::v_uif[mac_addr].rx_pause_count         = 0;
      globals::v_uif[mac_addr].rx_vlan_count          = 0;
    endfunction
endclass

























