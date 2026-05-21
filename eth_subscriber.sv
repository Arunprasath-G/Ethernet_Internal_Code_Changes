class eth_sbscr extends uvm_subscriber#(eth_seq_item);
  `uvm_component_utils(eth_sbscr);
 
  uvm_tlm_analysis_fifo #(eth_seq_item) tx_fifo[`NO_OF_AGENTS];
  uvm_tlm_analysis_fifo #(eth_seq_item) rx_fifo[`NO_OF_AGENTS];  
  
  
  eth_seq_item tr;  
  
  function new(string name = "eth_sbscr", uvm_component parent = null);
    super.new(name,parent);
    foreach(tx_fifo[i])
      tx_fifo[i] = new($sformatf("tx_fifo[%0d]",i),this);
    
    foreach(rx_fifo[i])
      rx_fifo[i] = new($sformatf("rx_fifo[%0d]",i),this);  
  endfunction   
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase); 
  endfunction    
  
  function void write(eth_seq_item t);
    `uvm_info("SUBSCR", "Base write() called", UVM_LOW)
  endfunction   
 
endclass
