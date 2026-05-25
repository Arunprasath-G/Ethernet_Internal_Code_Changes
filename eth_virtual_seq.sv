class base_virtual_seq extends uvm_sequence;
  `uvm_object_utils(base_virtual_seq)
  
  int ether_type;
  bit err_b;
  int err_offset;
  bit [47:0] da;
  bit vlan_en;
  bit [15:0] TPID;
  bit payload_rand_en;
  bit corrupt_preamble_en;
  int no_of_pkts;
  
  int unsigned custom_err_offset;
  bit custom_err_b;
  
  bit custom_vlan_en;
  bit [15:0] custom_TPID; 
  
  bit pause_frame_en;
  bit [15:0] pause_opc;
  bit [15:0] pause_time;  
  bit mode;
  bit corrupt_fcs_en;
  bit custom_da;
  bit [11:0] VID;
  bit invld_length_en;
  bit carr_ext_en;
  bit runt_en;
  bit coll_en;
  bit len_payload_mismat_en;   
  bit corrupt_ipg_en;
  int set_corpt_pkt;
  int error_pkt_no;
  bit padding_en;
  bit [2:0]pcp; 
  bit pfc_frame_en;   
  bit pfc_with_vlan_traffic;
  bit pause_normal_traffic ;
  bit middle_coll_en;
  bit constant_rand_slot; 
  bit max_coll_en;
   
  
  function new (string name = "base_virtual_seq");
    super.new(name);
  endfunction  
  

  
endclass

class virtual_seq extends base_virtual_seq;
  `uvm_object_utils(virtual_seq)
  `uvm_declare_p_sequencer(eth_virtual_seqr)
  
  gmii_eth_normal_frame_seq seq1, seq2;  
  

  function new (string name = "virtual_seq");
    super.new(name);
  endfunction  
    
 task body();

   if(!pause_normal_traffic && ! pfc_with_vlan_traffic) begin

    seq1 = gmii_eth_normal_frame_seq::type_id::create("seq1");
    seq2 = gmii_eth_normal_frame_seq::type_id::create("seq2");

    apply_config(seq1);
    apply_config(seq2);
   

     if(this.mode == 0 && !coll_en) begin
      seq1.start(p_sequencer.mac[0]);
    end
    else begin
      if(this.middle_coll_en == 1) begin
        $display("9999999999999999999999999999999999");
        fork
          seq1.start(p_sequencer.mac[0]);
          #160 seq2.start(p_sequencer.mac[1]);
        join        
      end else begin    
        fork
          seq1.start(p_sequencer.mac[0]);
          seq2.start(p_sequencer.mac[1]);
        join
      end
    end

  end
  
   else begin
     if(mode==1) begin
       //------------------pause+normal_traffic--------------
       if(pause_normal_traffic) begin
  	   	fork

 	 	begin
          repeat(this.no_of_pkts) begin
      			seq1 = gmii_eth_normal_frame_seq::type_id::create("seq1");
      			apply_config(seq1);
      			seq1.pause_sel = ($urandom_range(1,2) % 2);
            	//seq1.pfc_sel   = ($urandom_range(1,2) % 2);
      			seq1.start(p_sequencer.mac[0]);
    		end
  		end

   	   begin
         repeat(this.no_of_pkts) begin
       		seq2 = gmii_eth_normal_frame_seq::type_id::create("seq2");
      		apply_config(seq2);
      		seq2.pause_sel = ($urandom_range(1,2) % 2);
        //	seq2.pfc_sel = ($urandom_range(1,2) % 2);
      		seq2.start(p_sequencer.mac[1]);
      	end
  	  end

	join
       end 
    //---------------- VLAN TRAFFIC+pfc ----------------   
    if(pfc_with_vlan_traffic) begin

    fork

      begin
        repeat(this.no_of_pkts) begin

          seq1 = gmii_eth_normal_frame_seq::type_id::create
                 ($sformatf("vlan_seq_%0d",$time));

          apply_config(seq1);

          seq1.pfc_sel = ($urandom_range(1,2) % 2);

          seq1.start(p_sequencer.mac[0]);

        end
      end

      begin
        repeat(this.no_of_pkts) begin

          seq2 = gmii_eth_normal_frame_seq::type_id::create
                 ($sformatf("pfc_seq_%0d",$time));

          apply_config(seq2);

         seq2.pfc_sel = ($urandom_range(1,2) % 2);

          seq2.start(p_sequencer.mac[1]);

        end
      end

    join

  end

   
  end
  end    
endtask
  
  task apply_config(ref gmii_eth_normal_frame_seq seq);
    seq.pkt_no              = this.set_corpt_pkt;
    seq.c_ether_type        = this.ether_type;
    seq.err_b               = this.err_b;
    seq.err_offset          = this.err_offset;
    seq.vlan_en             = this.vlan_en;
    seq.TPID                = this.TPID;
    seq.payload_rand_en     = this.payload_rand_en;
    seq.pause_frame_en      = this.pause_frame_en;
    seq.pause_opc           = this.pause_opc;
    seq.corrupt_preamble_en = this.corrupt_preamble_en;
    seq.mode                = this.mode;
    seq.corrupt_fcs_en      = this.corrupt_fcs_en;
    seq.custom_da           = this.custom_da;  
    seq.da                  = this.da;
    seq.VID                 = this.VID;    
    seq.invld_length_en     = this.invld_length_en;
    seq.carr_ext_en         = this.carr_ext_en;
    seq.runt_en				= this.runt_en;
    seq.len_payload_mismat_en = this.len_payload_mismat_en; 
    seq.corrupt_ipg_en      = this.corrupt_ipg_en;
    seq.error_pkt_no        = this.error_pkt_no;
    seq.padding_en          = this.padding_en;
    seq.pcp                 = this.pcp;
    seq.pfc_frame_en        = this.pfc_frame_en ;     
    seq.constant_rand_slot  = this.constant_rand_slot ;     
    seq.max_coll_en        = this.max_coll_en ;     
  endtask   
    
endclass
  

