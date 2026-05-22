typedef struct{
  // Tx Counters
  bit [31:0] tx_good_pkt_count;
  bit [31:0] tx_bad_pkt_count;
  bit [31:0] tx_collison_count;
  bit [31:0] tx_unicast_count;
  bit [31:0] tx_multicast_count;
  bit [31:0] tx_broadcast_count;
  bit [31:0] tx_runt_count;
  bit [31:0] tx_fragment_count;
  bit [31:0] tx_jumbo_count;
  bit [31:0] tx_super_jumbo_count;
  bit [31:0] tx_jabber_count;
  bit [31:0] tx_pause_count;
  bit [31:0] tx_vlan_count;
  bit [31:0] tx_ipg_violation_count; 
  bit [31:0] tx_pfc_count;
  bit [31:0] tx_carrier_ext_count;
  
  //Rx Counters
  bit [31:0] rx_good_pkt_count;
  bit [31:0] rx_bad_pkt_count;
  bit [31:0] rx_unicast_count;
  bit [31:0] rx_multicast_count;
  bit [31:0] rx_broadcast_count;
  bit [31:0] rx_runt_count;
  bit [31:0] rx_fragment_count;
  bit [31:0] rx_jumbo_count;
  bit [31:0] rx_super_jumbo_count;
  bit [31:0] rx_jabber_count;
  bit [31:0] rx_pause_count;
  bit [31:0] rx_vlan_count;
  bit [31:0] rx_drop_count;
  bit [31:0] rx_pfc_count;
  bit [31:0] rx_ipg_violation_count; 
  bit [31:0] rx_carrier_ext_count;
  
} counters;
