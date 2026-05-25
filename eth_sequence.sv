class base_seq extends uvm_sequence #(eth_seq_item);
  `uvm_object_utils(base_seq)
  
  bit mode;
  bit [47:0] da;
  
  rand int c_ether_type;
  bit err_b;
  int err_offset;
  bit vlan_en;
  bit [15:0] TPID;
  bit payload_rand_en;
  bit pause_frame_en;
  bit [15:0] pause_opc;
  bit [15:0] pause_time; 
  bit corrupt_preamble_en;
  int count1;
  bit corrupt_fcs_en;
  static int trans_count;
  int count2;
  bit custom_da;
  bit [11:0] VID;
  bit invld_length_en;
  bit carr_ext_en;
  bit set_error;
  bit runt_en;
  bit send_corpt_preamble;
  bit send_runt;
  bit send_corpt_fcs;
  bit len_payload_mismat_en; 
  bit send_len_mismatch;
  bit corrupt_ipg_en;
  int pkt_no;
  int error_pkt_no;
  int exact_pkt;
  bit padding_en;
  bit[2:0] pcp;
  bit pfc_frame_en ; 
  bit pause_sel;
  bit pfc_sel;  
  bit pause_rsd_en;
  bit constant_rand_slot; 
  bit max_coll_en;
  int src_agent;
  int dst_agent;
  static bit [47:0] temp_da1;
  static bit [47:0] temp_da2;  
  
  function new (string name = "base_seq");
    super.new(name);
  endfunction
endclass


class gmii_eth_normal_frame_seq extends base_seq;
  eth_seq_item req;
  `uvm_object_utils(gmii_eth_normal_frame_seq)
  `uvm_declare_p_sequencer(eth_seqr)
  
  function new (string name = "gmii_eth_normal_frame_seq");
    super.new(name);
  endfunction
  
  task body();
    `uvm_info(get_type_name(), "gmii_eth_normal_frame_seq: Inside Body", UVM_LOW)
    
    uvm_config_db#(bit)::set(null,"*","mode",mode);
      req = eth_seq_item::type_id::create("req");
    
      start_item(req);
       trans_count++;
    
     exact_pkt = find_no(trans_count);
      if(this.invld_length_en == 1)
        c_ether_type = $urandom_range(1500, 1536);
      
      
      if(this.carr_ext_en == 1) begin
        c_ether_type = $urandom_range(46,486);
        req.carr_ext_en = carr_ext_en;
      end      
      
      if(this.padding_en==1)begin
       
      	 req.padding_en = ((exact_pkt % 3)==1);
         `uvm_info("SEQ_PKT_INFO",
           $sformatf(
             "TRANS=%0d | PADDING=%0b | MODE=FULL_DUPLEX | SA=%012h --> DA=%012h | LENGTH=%0d",
             exact_pkt,
             req.padding_en,
             req.sa,
             req.da,
             req.ether_type
           ),
         UVM_LOW)
      end
    
      //Runt Frame
      if(this.runt_en == 1) begin
        send_runt = $random;
      
        if(send_runt == 1)
          c_ether_type = $urandom_range(0,45);
        else
          c_ether_type = $urandom_range(46,1500);
      end
        
    
    if(!pfc_sel && !pause_sel) begin   
      if(payload_rand_en == 1) 
        req.randomize() with {sa == p_sequencer.mac_addr;};   
      else
        req.randomize() with {sa == p_sequencer.mac_addr;       
                              ether_type == c_ether_type;};  
    end       

    //--------------------------------------------
    // Print runt packet info
    //--------------------------------------------
    if(this.runt_en == 1 && c_ether_type < 46) begin
     
      src_agent = -1;
      dst_agent = -1;
     
      for(int i = 0; i < `NO_OF_AGENTS; i++) begin
     
        if(req.sa == req.mac_addr[i])
          src_agent = i;
     
        if(req.da == req.mac_addr[i])
          dst_agent = i;
     
      end
     
      `uvm_info("SEQ_RUNT_PKT",
        $sformatf(
          "RUNT PKT : TX_AGENT[%0d] --> RX_AGENT[%0d] | TX_NO=%0d",
          src_agent,
          dst_agent,
          exact_pkt),
        UVM_LOW)
     
    end

    if(custom_da)
      req.da=da;   
     //Fixing DA constant
    //if(custom_da == 1) begin
    //  if(trans_count % 2 != 0) begin
    //    if(trans_count == 1)
    //      temp_da1 = req.da;
    //    else
    //      req.da = temp_da1;
    //  end else begin
    //    if(trans_count == 2)
    //      temp_da2 = req.da;
    //    else
    //      req.da = temp_da2;
    //  end       
    //end       
      req.mode = mode;
      req.constant_rand_slot = constant_rand_slot;
      req.max_coll_en = max_coll_en;
      
      
//       if(len_payload_mismat_en) begin
//         req.ether_type = $urandom_range(46,1500);
//       end  
      
     /* if(this.pause_rsd_en) begin
        req.pause_frame_en = 1;
 	      req.pause_opc      = 16'h0002;
        req.ether_type     = 16'h8808;
        req.pause_time     = 1; //$urandom_range(1,10)
      
      end */
      

      if(this.err_b == 1 && exact_pkt == error_pkt_no) begin
        req.err_b      = 1;
        req.err_offset = this.err_offset;
       `uvm_info("SEQ_ERR_PKT",$sformatf("Injecting error in packet no = %0d", exact_pkt),UVM_LOW)
      end    
    
    
      if(this.vlan_en == 1) begin
        req.vlan_en = this.vlan_en;
        req.TPID = this.TPID;
        req.DEI = $urandom;
        req.PCP = this.pcp;
        if(!pfc_sel) begin
          req.TPID=16'h8100;
          req.PCP =3'b011;
        end  
        if(VID != 0)
          req.VID = VID;
        else 
          req.VID = $urandom_range(1,4095);        
        
      end
      
    //--------------------pause_frame--------

	  if(pause_sel) begin
		req.randomize() with {sa == p_sequencer.mac_addr;};
  		req.pause_frame_en = 1;
 	    req.pause_opc      = 16'h0001;
      //  req.da             = 48'h01_80_c2_00_00_01;
        req.ether_type     = 16'h8808;
        req.pause_time     = $urandom_range(1,4);
        
        if(this.pause_rsd_en) 
		   	  req.pause_opc      = 16'h0002;

      end

 
     //--------------------------pfc_frame--------------
     if(pfc_sel) begin
        req.randomize() with {sa == p_sequencer.mac_addr;};
      
        req.pfc_frame_en=1;
        req.pause_opc =16'h0101;
       // req.da = 48'h01_80_c2_00_00_01;
        req.vlan_en      = 0;
        req.ether_type =16'h8808;
        req.priority_en_vector=16'h8;// priority[3] 
        for(int i=0;i<8;i++) 
        	req.pfc_pause_time[i]=16'h0;
      
       req.pfc_pause_time[3]=16'h0002; //priority[3] time =10;
          
      end  
  
    
      //length and payload mismatch
    if(len_payload_mismat_en == 1 && error_pkt_no == exact_pkt) begin
        req.ether_type = $urandom_range(46,1500);
        `uvm_info("LEN_MISMATCH",
                  $sformatf("Sending wrong Length in Transaction=%d",exact_pkt),UVM_LOW)
    end
      
      
      
      //CORRUPTED PREAMBLE
    if(this.corrupt_preamble_en == 1 && pkt_no == exact_pkt) begin
          req.preamble[3] = 8'hFF;
          `uvm_info("PREAMBLE CORRUPT", $sformatf("Sending Corrupted Preamble Packet, Transaction no = %0d",exact_pkt),UVM_LOW)
      end
      
   
      //CORRUPT FCS
    if(this.corrupt_fcs_en == 1 && error_pkt_no == exact_pkt) begin
          req.corrupt_fcs_en = 1;
          `uvm_info("CORRUPT FCS TX",$sformatf("Sending bad fcs in Transaction = %0d",exact_pkt),UVM_LOW)
      end else
        req.corrupt_fcs_en = 0;
      
      //CORRUPT IPG
    if(this.corrupt_ipg_en == 1 && error_pkt_no == exact_pkt) begin        
      req.ipg_cnt = 7;
          `uvm_info("CORRUPT IPG",$sformatf("Sending Corrupted IPG Frame after Transaction no = %0d, IPG Count = %0d",exact_pkt,req.ipg_cnt),UVM_LOW)
      end else
        req.ipg_cnt = 12;
      
      finish_item(req);
  endtask
  
  function int find_no(int a);
    if((a % 2) == 0)
      return (a/2);
    else
      return ((a/2)+1);
  endfunction
endclass
