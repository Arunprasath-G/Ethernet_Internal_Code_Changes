`define NO_OF_AGENTS 2
`define FREQ_IN_MHZ 125
`define NO_OF_TX_AGNTS 1  //Valid values 1/2
`define INTF_BIT_WIDTH 8


`define UNICAST 0
`define MULTICAST 1
`define BROADCAST 2

`define ADDRESS_CAST `UNICAST



//MULTICAST
//Agent - 0 is a default transmitter
`define NO_OF_MC_GROUPS 2
`define MC_GROUP_1 {1,2}
`define MC_GROUP_2 {3,4}
`define GRP1_MAC_ADDR 48'h01_00_00_00_00_00
`define GRP2_MAC_ADDR 48'h01_00_00_00_00_01
