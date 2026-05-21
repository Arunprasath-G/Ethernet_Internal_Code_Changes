# ** Note: (vsim-220) 'modelsim.ini' is used as the ini file.
# vsim eth_top "+UVM_TESTNAME=gmii_eth_normal_frame_test" "+UVM_VERBOSITY=UVM_LOW" -l file127ef400 -ngflow 
# Start time: 14:39:28 on May 21,2026
# Loading Siemens Visualizer shared object 'C:/questasim64_2025.2_1/win64/VisualizerRls/bin/libqvisualizer.dll'
# ** Note: (vsim-3812) Design is being optimized...
# ** Note: (vopt-220) 'modelsim.ini' is used as the ini file.
# ** Warning: eth_scb.sv(168): (vopt-2897) Using non-standard foreach loop variable list syntax.
# ** Warning: eth_scb.sv(169): (vopt-2897) Using non-standard foreach loop variable list syntax.
# ** Warning: eth_sequence.sv(93): (vopt-2240) Treating stand-alone use of function 'randomize' as an implicit VOID cast.
# ** Warning: eth_sequence.sv(95): (vopt-2240) Treating stand-alone use of function 'randomize' as an implicit VOID cast.
# ** Note: (vsim-12126) Error and warning message counts have been restored: Errors=0, Warnings=4.
# Loading sv_std.std
# Loading work.eth_gmii_interface(fast)
# Loading mtiUvm.uvm_pkg(fast)
# Loading work.eth_top_sv_unit(fast)
# Loading mtiUvm.questa_uvm_pkg(fast)
# Loading work.eth_top(fast)
# Loading C:/questasim64_2025.2_1/uvm-1.1d\win64\uvm_dpi.dll
# 
# *****************************************************************
#    Using QuickLZ compression software.
# *****************************************************************
# 
# ----------------------------------------------------------------
# UVM-1.1d
# (C) 2007-2013 Mentor Graphics Corporation
# (C) 2007-2013 Cadence Design Systems, Inc.
# (C) 2006-2013 Synopsys, Inc.
# (C) 2011-2013 Cypress Semiconductor Corp.
# ----------------------------------------------------------------
# 
#   ***********       IMPORTANT RELEASE NOTES         ************
# 
#   You are using a version of the UVM library that has been compiled
#   with `UVM_NO_DEPRECATED undefined.
#   See http://www.eda.org/svdb/view.php?id=3313 for more details.
# 
#   You are using a version of the UVM library that has been compiled
#   with `UVM_OBJECT_MUST_HAVE_CONSTRUCTOR undefined.
#   See http://www.eda.org/svdb/view.php?id=3770 for more details.
# 
#       (Specify +UVM_NO_RELNOTES to turn off this notice)
# 
# top display for mac: 005040302010
# top display for mac: 005141312111
# UVM_INFO @ 0: reporter [RNTST] Running test gmii_eth_normal_frame_test...
# UVM_INFO eth_drv.sv(35) @ 0: uvm_test_top.env_h.agnt_mac[0].drv_h [MESSAGE] CONNECTION_PASSED
# UVM_INFO eth_drv.sv(35) @ 0: uvm_test_top.env_h.agnt_mac[1].drv_h [MESSAGE] CONNECTION_PASSED
# UVM_INFO @ 0: reporter [UVMTOP] UVM testbench topology:
# ------------------------------------------------------------------
# Name                       Type                        Size  Value
# ------------------------------------------------------------------
# uvm_test_top               gmii_eth_normal_frame_test  -     @473 
#   env_h                    eth_env                     -     @480 
#     agnt_mac[0]            eth_agnt                    -     @487 
#       drv_h                eth_drv                     -     @966 
#         rsp_port           uvm_analysis_port           -     @981 
#         seq_item_port      uvm_seq_item_pull_port      -     @973 
#       mon_h                eth_mon                     -     @989 
#         rx_ap              uvm_analysis_port           -     @1005
#         tx_ap              uvm_analysis_port           -     @997 
#       seqr_h               eth_seqr                    -     @857 
#         rsp_export         uvm_analysis_export         -     @864 
#         seq_item_export    uvm_seq_item_pull_imp       -     @958 
#         arbitration_queue  array                       0     -    
#         lock_queue         array                       0     -    
#         num_last_reqs      integral                    32    'd1  
#         num_last_rsps      integral                    32    'd1  
#     agnt_mac[1]            eth_agnt                    -     @494 
#       drv_h                eth_drv                     -     @1129
#         rsp_port           uvm_analysis_port           -     @1144
#         seq_item_port      uvm_seq_item_pull_port      -     @1136
#       mon_h                eth_mon                     -     @1152
#         rx_ap              uvm_analysis_port           -     @1168
#         tx_ap              uvm_analysis_port           -     @1160
#       seqr_h               eth_seqr                    -     @1020
#         rsp_export         uvm_analysis_export         -     @1027
#         seq_item_export    uvm_seq_item_pull_imp       -     @1121
#         arbitration_queue  array                       0     -    
#         lock_queue         array                       0     -    
#         num_last_reqs      integral                    32    'd1  
#         num_last_rsps      integral                    32    'd1  
#     sbscr_h                eth_sbscr                   -     @540 
#       analysis_imp         uvm_analysis_imp            -     @547 
#       rx_fifo[0]           uvm_tlm_analysis_fifo #(T)  -     @649 
#         analysis_export    uvm_analysis_imp            -     @688 
#         get_ap             uvm_analysis_port           -     @680 
#         get_peek_export    uvm_get_peek_imp            -     @664 
#         put_ap             uvm_analysis_port           -     @672 
#         put_export         uvm_put_imp                 -     @656 
#       rx_fifo[1]           uvm_tlm_analysis_fifo #(T)  -     @696 
#         analysis_export    uvm_analysis_imp            -     @735 
#         get_ap             uvm_analysis_port           -     @727 
#         get_peek_export    uvm_get_peek_imp            -     @711 
#         put_ap             uvm_analysis_port           -     @719 
#         put_export         uvm_put_imp                 -     @703 
#       tx_fifo[0]           uvm_tlm_analysis_fifo #(T)  -     @555 
#         analysis_export    uvm_analysis_imp            -     @594 
#         get_ap             uvm_analysis_port           -     @586 
#         get_peek_export    uvm_get_peek_imp            -     @570 
#         put_ap             uvm_analysis_port           -     @578 
#         put_export         uvm_put_imp                 -     @562 
#       tx_fifo[1]           uvm_tlm_analysis_fifo #(T)  -     @602 
#         analysis_export    uvm_analysis_imp            -     @641 
#         get_ap             uvm_analysis_port           -     @633 
#         get_peek_export    uvm_get_peek_imp            -     @617 
#         put_ap             uvm_analysis_port           -     @625 
#         put_export         uvm_put_imp                 -     @609 
#     scb_h                  eth_scb                     -     @501 
#       ai_1[0]              uvm_analysis_imp_ap_1       -     @508 
#       ai_1[1]              uvm_analysis_imp_ap_1       -     @516 
#       ai_2[0]              uvm_analysis_imp_ap_2       -     @524 
#       ai_2[1]              uvm_analysis_imp_ap_2       -     @532 
#     vseqr_h                eth_virtual_seqr            -     @747 
#       rsp_export           uvm_analysis_export         -     @754 
#       seq_item_export      uvm_seq_item_pull_imp       -     @848 
#       arbitration_queue    array                       0     -    
#       lock_queue           array                       0     -    
#       num_last_reqs        integral                    32    'd1  
#       num_last_rsps        integral                    32    'd1  
# ------------------------------------------------------------------
# 
# UVM_INFO eth_sequence.sv(59) @ 0: uvm_test_top.env_h.agnt_mac[0].seqr_h@@seq1 [gmii_eth_normal_frame_seq] gmii_eth_normal_frame_seq: Inside Body
# UVM_INFO eth_sequence.sv(59) @ 0: uvm_test_top.env_h.agnt_mac[1].seqr_h@@seq2 [gmii_eth_normal_frame_seq] gmii_eth_normal_frame_seq: Inside Body
# Siemens software version 2025.2_1 (Build number 0)
# Unpublished work. Copyright 2026 Siemens
# qwavedb_dumpvars: Initiating qwavedb waveform capturing
# 
# 
# qwavedb_dumpvars: Done initiating qwavedb waveform capturing
# 
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 36 ns  Iteration: 2  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 51
# 5555555555555555555555555555555555555
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 36 ns  Iteration: 2  Process: /eth_top_sv_unit::eth_drv::run_phase/#FORK#46_7ff4f6271b2 File: eth_drv.sv Line: 71
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 36 ns  Iteration: 2  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 51
# 5555555555555555555555555555555555555
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 36 ns  Iteration: 2  Process: /eth_top_sv_unit::eth_drv::run_phase/#FORK#46_7ff4f627631 File: eth_drv.sv Line: 71
# //  Questa Sim-64
# //  Version 2025.2_1 win64 Jun 25 2025
# //
# // Unpublished work. Copyright 2025 Siemens
# //
# // This material contains trade secrets or otherwise confidential information
# // owned by Siemens Industry Software Inc. or its affiliates (collectively,
# // "SISW"), or its licensors. Access to and use of this information is strictly
# // limited as set forth in the Customer's applicable agreements with SISW.
# //
# // This material may not be copied, distributed, or otherwise disclosed outside
# // of the Customer's facilities without the express written permission of SISW,
# // and may not be used in any way not expressly authorized by SISW.
# //
# *****************************ETH_DRIVER***********************************
# UVM_INFO eth_drv.sv(413) @ 36: uvm_test_top.env_h.agnt_mac[0].drv_h [DRIVER PACKING] 
# 	 preamble = '{85, 85, 85, 85, 85, 85, 85}
# 	 sfd = 0xd5
# 	 DA = 005141312111
# 	 SA = 005040302010
# 	 ether_type = 0x358
# 	 payload = 00000358 bytes
# 	 crc = 0xaa4f9ab3
# 	 Total frame size = 882, Frame size from DA = 874
# 	 Payload size = 856
# 
# 	 VLAN_EN = 0
# 	 VLAN_TPID = 0000
# 	 PCP = 0, DEI = 0, VID = 000
# UVM_INFO eth_drv.sv(420) @ 36: uvm_test_top.env_h.agnt_mac[0].drv_h [DRIVING DATA] Frame size = 882, CRC = aa4f9ab3
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 36 ns  Iteration: 5  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 36 ns  Iteration: 5  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 36 ns  Iteration: 5  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 36 ns  Iteration: 5  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# UVM_INFO eth_drv.sv(213) @ 36: uvm_test_top.env_h.agnt_mac[0].drv_h [DRV_DEBUG] mac_id=0 PCP=0 flag=0 value=0
# *****************************ETH_DRIVER***********************************
# UVM_INFO eth_drv.sv(413) @ 36: uvm_test_top.env_h.agnt_mac[1].drv_h [DRIVER PACKING] 
# 	 preamble = '{85, 85, 85, 85, 85, 85, 85}
# 	 sfd = 0xd5
# 	 DA = 005040302010
# 	 SA = 005141312111
# 	 ether_type = 0x4cd
# 	 payload = 000004cd bytes
# 	 crc = 0x1287ed50
# 	 Total frame size = 1255, Frame size from DA = 1247
# 	 Payload size = 1229
# 
# 	 VLAN_EN = 0
# 	 VLAN_TPID = 0000
# 	 PCP = 0, DEI = 0, VID = 000
# UVM_INFO eth_drv.sv(420) @ 36: uvm_test_top.env_h.agnt_mac[1].drv_h [DRIVING DATA] Frame size = 1255, CRC = 1287ed50
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 36 ns  Iteration: 5  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 36 ns  Iteration: 5  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 36 ns  Iteration: 5  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 36 ns  Iteration: 5  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# UVM_INFO eth_drv.sv(213) @ 36: uvm_test_top.env_h.agnt_mac[1].drv_h [DRV_DEBUG] mac_id=1 PCP=0 flag=0 value=0
# Moding =  1
# UVM_INFO eth_mon.sv(823) @ 7108: uvm_test_top.env_h.agnt_mac[0].mon_h [MON_LEN_CHECK] ether_type(claimed)=358  actual_payload=358
# UVM_INFO eth_mon.sv(883) @ 7108: uvm_test_top.env_h.agnt_mac[0].mon_h [TX MON UNPACKING] 
# 	preamble=85 85 85 85 85 85 85 
# 	 sfd= d5 
# 	 DA = 005141312111
# 	 SA          = 005040302010
# 	 ether_type = 0x358
# 	 payload = 856 bytes
# 	 CRC (frame) = 0xaa4f9ab3
# 	 CRC (calc) = 0xaa4f9ab3
# 	 CRC match = 1
# 	 frame size  = 372
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000 pause_time=0
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 7108 ns  Iteration: 1  Process: /eth_top_sv_unit::eth_mon::run_phase/#FORK#41_7ff4f627752 File: eth_scb.sv Line: 79
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 7108 ns  Iteration: 1  Process: /eth_top_sv_unit::eth_mon::run_phase/#FORK#41_7ff4f627752 File: eth_scb.sv Line: 79
# UVM_INFO eth_scb.sv(83) @ 7108: uvm_test_top.env_h.scb_h [SCB_TX] Stored TX Packet : TX_AGENT[0] --> RX_AGENT[1] | TX_NO=1 | DA=005141312111 | SA=005040302010
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 7188 ns  Iteration: 1  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 51
# UVM_INFO eth_mon.sv(823) @ 7220: uvm_test_top.env_h.agnt_mac[1].mon_h [MON_LEN_CHECK] ether_type(claimed)=358  actual_payload=358
# UVM_INFO eth_mon.sv(903) @ 7220: uvm_test_top.env_h.agnt_mac[1].mon_h [RX MON UNPACKING] 
# 	 DA          = 005141312111
# 	 SA          = 005040302010
# 	 ether_type  = 0x358
# 	 payload     = 856 bytes
# 	 CRC (frame) = 0xaa4f9ab3
# 	 residue     = 0xc704dd7b
# 	 CRC OK      = 1
# 	 frame size  = 36a
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000
# UVM_INFO eth_mon.sv(624) @ 7220: uvm_test_top.env_h.agnt_mac[1].mon_h [RX_CLASSIFY] DA=005141312111 pause=0 multicast_bit=0
# UVM_INFO eth_scb.sv(556) @ 7220: uvm_test_top.env_h.scb_h [SCB_TRANS_NUM] 
# TX_TRANSACTION_NO = 1
# RX_TRANSACTION_NO = 1
# UVM_INFO eth_scb.sv(564) @ 7220: uvm_test_top.env_h.scb_h [SCB_COMPARE] 
# ==============================================================================
# EXPECTED (TX)      :                    | ACTUAL (RX)        :                   
# ==============================================================================
# TX_AGENT           : 0                  | RX_AGENT           : 1                 
# DA                 : 005141312111       | DA                 : 005141312111
# SA                 : 005040302010       | SA                 : 005040302010
# ETHER_TYPE         : 0358             | ETHER_TYPE         : 0358
# PAYLOAD_SIZE       : 358                | PAYLOAD_SIZE       : 358               
# CRC                : aa4f9ab3           | CRC                : aa4f9ab3
# ERR_B              : 0                  | ERR_B              : 0                 
# ==============================================================================
# UVM_INFO eth_scb.sv(622) @ 7220: uvm_test_top.env_h.scb_h [SCB_RX_COUNT] RX packet count received in SB = 1
# Moding =  1
# UVM_INFO eth_mon.sv(823) @ 10092: uvm_test_top.env_h.agnt_mac[1].mon_h [MON_LEN_CHECK] ether_type(claimed)=4cd  actual_payload=4cd
# UVM_INFO eth_mon.sv(883) @ 10092: uvm_test_top.env_h.agnt_mac[1].mon_h [TX MON UNPACKING] 
# 	preamble=85 85 85 85 85 85 85 
# 	 sfd= d5 
# 	 DA = 005040302010
# 	 SA          = 005141312111
# 	 ether_type = 0x4cd
# 	 payload = 1229 bytes
# 	 CRC (frame) = 0x1287ed50
# 	 CRC (calc) = 0x1287ed50
# 	 CRC match = 1
# 	 frame size  = 4e7
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000 pause_time=0
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 10092 ns  Iteration: 1  Process: /eth_top_sv_unit::eth_mon::run_phase/#FORK#41_7ff4f6277e2 File: eth_scb.sv Line: 79
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 10092 ns  Iteration: 1  Process: /eth_top_sv_unit::eth_mon::run_phase/#FORK#41_7ff4f6277e2 File: eth_scb.sv Line: 79
# UVM_INFO eth_scb.sv(83) @ 10092: uvm_test_top.env_h.scb_h [SCB_TX] Stored TX Packet : TX_AGENT[1] --> RX_AGENT[0] | TX_NO=1 | DA=005040302010 | SA=005141312111
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 10172 ns  Iteration: 1  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 51
# UVM_INFO eth_sequence.sv(59) @ 10172: uvm_test_top.env_h.agnt_mac[0].seqr_h@@seq1 [gmii_eth_normal_frame_seq] gmii_eth_normal_frame_seq: Inside Body
# UVM_INFO eth_sequence.sv(59) @ 10172: uvm_test_top.env_h.agnt_mac[1].seqr_h@@seq2 [gmii_eth_normal_frame_seq] gmii_eth_normal_frame_seq: Inside Body
# *****************************ETH_DRIVER***********************************
# UVM_INFO eth_drv.sv(413) @ 10172: uvm_test_top.env_h.agnt_mac[0].drv_h [DRIVER PACKING] 
# 	 preamble = '{85, 85, 85, 85, 85, 85, 85}
# 	 sfd = 0xd5
# 	 DA = 005141312111
# 	 SA = 005040302010
# 	 ether_type = 0x192
# 	 payload = 00000192 bytes
# 	 crc = 0x795c0704
# 	 Total frame size = 428, Frame size from DA = 420
# 	 Payload size = 402
# 
# 	 VLAN_EN = 0
# 	 VLAN_TPID = 0000
# 	 PCP = 0, DEI = 0, VID = 000
# UVM_INFO eth_drv.sv(420) @ 10172: uvm_test_top.env_h.agnt_mac[0].drv_h [DRIVING DATA] Frame size = 428, CRC = 795c0704
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 10172 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 10172 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 10172 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 10172 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# UVM_INFO eth_drv.sv(213) @ 10172: uvm_test_top.env_h.agnt_mac[0].drv_h [DRV_DEBUG] mac_id=0 PCP=0 flag=0 value=0
# *****************************ETH_DRIVER***********************************
# UVM_INFO eth_drv.sv(413) @ 10172: uvm_test_top.env_h.agnt_mac[1].drv_h [DRIVER PACKING] 
# 	 preamble = '{85, 85, 85, 85, 85, 85, 85}
# 	 sfd = 0xd5
# 	 DA = 005040302010
# 	 SA = 005141312111
# 	 ether_type = 0x34d
# 	 payload = 0000034d bytes
# 	 crc = 0x61908631
# 	 Total frame size = 871, Frame size from DA = 863
# 	 Payload size = 845
# 
# 	 VLAN_EN = 0
# 	 VLAN_TPID = 0000
# 	 PCP = 0, DEI = 0, VID = 000
# UVM_INFO eth_drv.sv(420) @ 10172: uvm_test_top.env_h.agnt_mac[1].drv_h [DRIVING DATA] Frame size = 871, CRC = 61908631
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 10172 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 10172 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 10172 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 10172 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# UVM_INFO eth_drv.sv(213) @ 10172: uvm_test_top.env_h.agnt_mac[1].drv_h [DRV_DEBUG] mac_id=1 PCP=0 flag=0 value=0
# UVM_INFO eth_mon.sv(823) @ 10204: uvm_test_top.env_h.agnt_mac[0].mon_h [MON_LEN_CHECK] ether_type(claimed)=4cd  actual_payload=4cd
# UVM_INFO eth_mon.sv(903) @ 10204: uvm_test_top.env_h.agnt_mac[0].mon_h [RX MON UNPACKING] 
# 	 DA          = 005040302010
# 	 SA          = 005141312111
# 	 ether_type  = 0x4cd
# 	 payload     = 1229 bytes
# 	 CRC (frame) = 0x1287ed50
# 	 residue     = 0xc704dd7b
# 	 CRC OK      = 1
# 	 frame size  = 4df
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000
# UVM_INFO eth_mon.sv(624) @ 10204: uvm_test_top.env_h.agnt_mac[0].mon_h [RX_CLASSIFY] DA=005040302010 pause=0 multicast_bit=0
# UVM_INFO eth_scb.sv(556) @ 10204: uvm_test_top.env_h.scb_h [SCB_TRANS_NUM] 
# TX_TRANSACTION_NO = 1
# RX_TRANSACTION_NO = 1
# UVM_INFO eth_scb.sv(564) @ 10204: uvm_test_top.env_h.scb_h [SCB_COMPARE] 
# ==============================================================================
# EXPECTED (TX)      :                    | ACTUAL (RX)        :                   
# ==============================================================================
# TX_AGENT           : 1                  | RX_AGENT           : 0                 
# DA                 : 005040302010       | DA                 : 005040302010
# SA                 : 005141312111       | SA                 : 005141312111
# ETHER_TYPE         : 04cd             | ETHER_TYPE         : 04cd
# PAYLOAD_SIZE       : 4cd                | PAYLOAD_SIZE       : 4cd               
# CRC                : 1287ed50           | CRC                : 1287ed50
# ERR_B              : 0                  | ERR_B              : 0                 
# ==============================================================================
# UVM_INFO eth_scb.sv(622) @ 10204: uvm_test_top.env_h.scb_h [SCB_RX_COUNT] RX packet count received in SB = 1
# Moding =  1
# UVM_INFO eth_mon.sv(823) @ 13612: uvm_test_top.env_h.agnt_mac[0].mon_h [MON_LEN_CHECK] ether_type(claimed)=192  actual_payload=192
# UVM_INFO eth_mon.sv(883) @ 13612: uvm_test_top.env_h.agnt_mac[0].mon_h [TX MON UNPACKING] 
# 	preamble=85 85 85 85 85 85 85 
# 	 sfd= d5 
# 	 DA = 005141312111
# 	 SA          = 005040302010
# 	 ether_type = 0x192
# 	 payload = 402 bytes
# 	 CRC (frame) = 0x795c0704
# 	 CRC (calc) = 0x795c0704
# 	 CRC match = 1
# 	 frame size  = 1ac
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000 pause_time=0
# UVM_INFO eth_scb.sv(83) @ 13612: uvm_test_top.env_h.scb_h [SCB_TX] Stored TX Packet : TX_AGENT[0] --> RX_AGENT[1] | TX_NO=2 | DA=005141312111 | SA=005040302010
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 13692 ns  Iteration: 1  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 51
# UVM_INFO eth_mon.sv(823) @ 13724: uvm_test_top.env_h.agnt_mac[1].mon_h [MON_LEN_CHECK] ether_type(claimed)=192  actual_payload=192
# UVM_INFO eth_mon.sv(903) @ 13724: uvm_test_top.env_h.agnt_mac[1].mon_h [RX MON UNPACKING] 
# 	 DA          = 005141312111
# 	 SA          = 005040302010
# 	 ether_type  = 0x192
# 	 payload     = 402 bytes
# 	 CRC (frame) = 0x795c0704
# 	 residue     = 0xc704dd7b
# 	 CRC OK      = 1
# 	 frame size  = 1a4
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000
# UVM_INFO eth_mon.sv(624) @ 13724: uvm_test_top.env_h.agnt_mac[1].mon_h [RX_CLASSIFY] DA=005141312111 pause=0 multicast_bit=0
# UVM_INFO eth_scb.sv(556) @ 13724: uvm_test_top.env_h.scb_h [SCB_TRANS_NUM] 
# TX_TRANSACTION_NO = 2
# RX_TRANSACTION_NO = 2
# UVM_INFO eth_scb.sv(564) @ 13724: uvm_test_top.env_h.scb_h [SCB_COMPARE] 
# ==============================================================================
# EXPECTED (TX)      :                    | ACTUAL (RX)        :                   
# ==============================================================================
# TX_AGENT           : 0                  | RX_AGENT           : 1                 
# DA                 : 005141312111       | DA                 : 005141312111
# SA                 : 005040302010       | SA                 : 005040302010
# ETHER_TYPE         : 0192             | ETHER_TYPE         : 0192
# PAYLOAD_SIZE       : 192                | PAYLOAD_SIZE       : 192               
# CRC                : 795c0704           | CRC                : 795c0704
# ERR_B              : 0                  | ERR_B              : 0                 
# ==============================================================================
# UVM_INFO eth_scb.sv(622) @ 13724: uvm_test_top.env_h.scb_h [SCB_RX_COUNT] RX packet count received in SB = 2
# Moding =  1
# UVM_INFO eth_mon.sv(823) @ 17156: uvm_test_top.env_h.agnt_mac[1].mon_h [MON_LEN_CHECK] ether_type(claimed)=34d  actual_payload=34d
# UVM_INFO eth_mon.sv(883) @ 17156: uvm_test_top.env_h.agnt_mac[1].mon_h [TX MON UNPACKING] 
# 	preamble=85 85 85 85 85 85 85 
# 	 sfd= d5 
# 	 DA = 005040302010
# 	 SA          = 005141312111
# 	 ether_type = 0x34d
# 	 payload = 845 bytes
# 	 CRC (frame) = 0x61908631
# 	 CRC (calc) = 0x61908631
# 	 CRC match = 1
# 	 frame size  = 367
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000 pause_time=0
# UVM_INFO eth_scb.sv(83) @ 17156: uvm_test_top.env_h.scb_h [SCB_TX] Stored TX Packet : TX_AGENT[1] --> RX_AGENT[0] | TX_NO=2 | DA=005040302010 | SA=005141312111
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 17236 ns  Iteration: 1  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 51
# UVM_INFO eth_sequence.sv(59) @ 17236: uvm_test_top.env_h.agnt_mac[0].seqr_h@@seq1 [gmii_eth_normal_frame_seq] gmii_eth_normal_frame_seq: Inside Body
# UVM_INFO eth_sequence.sv(59) @ 17236: uvm_test_top.env_h.agnt_mac[1].seqr_h@@seq2 [gmii_eth_normal_frame_seq] gmii_eth_normal_frame_seq: Inside Body
# *****************************ETH_DRIVER***********************************
# UVM_INFO eth_drv.sv(413) @ 17236: uvm_test_top.env_h.agnt_mac[0].drv_h [DRIVER PACKING] 
# 	 preamble = '{85, 85, 85, 85, 85, 85, 85}
# 	 sfd = 0xd5
# 	 DA = 005141312111
# 	 SA = 005040302010
# 	 ether_type = 0x233
# 	 payload = 00000233 bytes
# 	 crc = 0xb9d40cb8
# 	 Total frame size = 589, Frame size from DA = 581
# 	 Payload size = 563
# 
# 	 VLAN_EN = 0
# 	 VLAN_TPID = 0000
# 	 PCP = 0, DEI = 0, VID = 000
# UVM_INFO eth_drv.sv(420) @ 17236: uvm_test_top.env_h.agnt_mac[0].drv_h [DRIVING DATA] Frame size = 589, CRC = b9d40cb8
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 17236 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 17236 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 17236 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 17236 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# UVM_INFO eth_drv.sv(213) @ 17236: uvm_test_top.env_h.agnt_mac[0].drv_h [DRV_DEBUG] mac_id=0 PCP=0 flag=0 value=0
# *****************************ETH_DRIVER***********************************
# UVM_INFO eth_drv.sv(413) @ 17236: uvm_test_top.env_h.agnt_mac[1].drv_h [DRIVER PACKING] 
# 	 preamble = '{85, 85, 85, 85, 85, 85, 85}
# 	 sfd = 0xd5
# 	 DA = 005040302010
# 	 SA = 005141312111
# 	 ether_type = 0x164
# 	 payload = 00000164 bytes
# 	 crc = 0xb4fe04be
# 	 Total frame size = 382, Frame size from DA = 374
# 	 Payload size = 356
# 
# 	 VLAN_EN = 0
# 	 VLAN_TPID = 0000
# 	 PCP = 0, DEI = 0, VID = 000
# UVM_INFO eth_drv.sv(420) @ 17236: uvm_test_top.env_h.agnt_mac[1].drv_h [DRIVING DATA] Frame size = 382, CRC = b4fe04be
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 17236 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 17236 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 17236 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 17236 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# UVM_INFO eth_drv.sv(213) @ 17236: uvm_test_top.env_h.agnt_mac[1].drv_h [DRV_DEBUG] mac_id=1 PCP=0 flag=0 value=0
# UVM_INFO eth_mon.sv(823) @ 17268: uvm_test_top.env_h.agnt_mac[0].mon_h [MON_LEN_CHECK] ether_type(claimed)=34d  actual_payload=34d
# UVM_INFO eth_mon.sv(903) @ 17268: uvm_test_top.env_h.agnt_mac[0].mon_h [RX MON UNPACKING] 
# 	 DA          = 005040302010
# 	 SA          = 005141312111
# 	 ether_type  = 0x34d
# 	 payload     = 845 bytes
# 	 CRC (frame) = 0x61908631
# 	 residue     = 0xc704dd7b
# 	 CRC OK      = 1
# 	 frame size  = 35f
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000
# UVM_INFO eth_mon.sv(624) @ 17268: uvm_test_top.env_h.agnt_mac[0].mon_h [RX_CLASSIFY] DA=005040302010 pause=0 multicast_bit=0
# UVM_INFO eth_scb.sv(556) @ 17268: uvm_test_top.env_h.scb_h [SCB_TRANS_NUM] 
# TX_TRANSACTION_NO = 2
# RX_TRANSACTION_NO = 2
# UVM_INFO eth_scb.sv(564) @ 17268: uvm_test_top.env_h.scb_h [SCB_COMPARE] 
# ==============================================================================
# EXPECTED (TX)      :                    | ACTUAL (RX)        :                   
# ==============================================================================
# TX_AGENT           : 1                  | RX_AGENT           : 0                 
# DA                 : 005040302010       | DA                 : 005040302010
# SA                 : 005141312111       | SA                 : 005141312111
# ETHER_TYPE         : 034d             | ETHER_TYPE         : 034d
# PAYLOAD_SIZE       : 34d                | PAYLOAD_SIZE       : 34d               
# CRC                : 61908631           | CRC                : 61908631
# ERR_B              : 0                  | ERR_B              : 0                 
# ==============================================================================
# UVM_INFO eth_scb.sv(622) @ 17268: uvm_test_top.env_h.scb_h [SCB_RX_COUNT] RX packet count received in SB = 2
# Moding =  1
# UVM_INFO eth_mon.sv(823) @ 20308: uvm_test_top.env_h.agnt_mac[1].mon_h [MON_LEN_CHECK] ether_type(claimed)=164  actual_payload=164
# UVM_INFO eth_mon.sv(883) @ 20308: uvm_test_top.env_h.agnt_mac[1].mon_h [TX MON UNPACKING] 
# 	preamble=85 85 85 85 85 85 85 
# 	 sfd= d5 
# 	 DA = 005040302010
# 	 SA          = 005141312111
# 	 ether_type = 0x164
# 	 payload = 356 bytes
# 	 CRC (frame) = 0xb4fe04be
# 	 CRC (calc) = 0xb4fe04be
# 	 CRC match = 1
# 	 frame size  = 17e
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000 pause_time=0
# UVM_INFO eth_scb.sv(83) @ 20308: uvm_test_top.env_h.scb_h [SCB_TX] Stored TX Packet : TX_AGENT[1] --> RX_AGENT[0] | TX_NO=3 | DA=005040302010 | SA=005141312111
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 20388 ns  Iteration: 1  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 51
# UVM_INFO eth_mon.sv(823) @ 20420: uvm_test_top.env_h.agnt_mac[0].mon_h [MON_LEN_CHECK] ether_type(claimed)=164  actual_payload=164
# UVM_INFO eth_mon.sv(903) @ 20420: uvm_test_top.env_h.agnt_mac[0].mon_h [RX MON UNPACKING] 
# 	 DA          = 005040302010
# 	 SA          = 005141312111
# 	 ether_type  = 0x164
# 	 payload     = 356 bytes
# 	 CRC (frame) = 0xb4fe04be
# 	 residue     = 0xc704dd7b
# 	 CRC OK      = 1
# 	 frame size  = 176
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000
# UVM_INFO eth_mon.sv(624) @ 20420: uvm_test_top.env_h.agnt_mac[0].mon_h [RX_CLASSIFY] DA=005040302010 pause=0 multicast_bit=0
# UVM_INFO eth_scb.sv(556) @ 20420: uvm_test_top.env_h.scb_h [SCB_TRANS_NUM] 
# TX_TRANSACTION_NO = 3
# RX_TRANSACTION_NO = 3
# UVM_INFO eth_scb.sv(564) @ 20420: uvm_test_top.env_h.scb_h [SCB_COMPARE] 
# ==============================================================================
# EXPECTED (TX)      :                    | ACTUAL (RX)        :                   
# ==============================================================================
# TX_AGENT           : 1                  | RX_AGENT           : 0                 
# DA                 : 005040302010       | DA                 : 005040302010
# SA                 : 005141312111       | SA                 : 005141312111
# ETHER_TYPE         : 0164             | ETHER_TYPE         : 0164
# PAYLOAD_SIZE       : 164                | PAYLOAD_SIZE       : 164               
# CRC                : b4fe04be           | CRC                : b4fe04be
# ERR_B              : 0                  | ERR_B              : 0                 
# ==============================================================================
# UVM_INFO eth_scb.sv(622) @ 20420: uvm_test_top.env_h.scb_h [SCB_RX_COUNT] RX packet count received in SB = 3
# Moding =  1
# UVM_INFO eth_mon.sv(823) @ 21964: uvm_test_top.env_h.agnt_mac[0].mon_h [MON_LEN_CHECK] ether_type(claimed)=233  actual_payload=233
# UVM_INFO eth_mon.sv(883) @ 21964: uvm_test_top.env_h.agnt_mac[0].mon_h [TX MON UNPACKING] 
# 	preamble=85 85 85 85 85 85 85 
# 	 sfd= d5 
# 	 DA = 005141312111
# 	 SA          = 005040302010
# 	 ether_type = 0x233
# 	 payload = 563 bytes
# 	 CRC (frame) = 0xb9d40cb8
# 	 CRC (calc) = 0xb9d40cb8
# 	 CRC match = 1
# 	 frame size  = 24d
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000 pause_time=0
# UVM_INFO eth_scb.sv(83) @ 21964: uvm_test_top.env_h.scb_h [SCB_TX] Stored TX Packet : TX_AGENT[0] --> RX_AGENT[1] | TX_NO=3 | DA=005141312111 | SA=005040302010
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 22044 ns  Iteration: 1  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 51
# UVM_INFO eth_sequence.sv(59) @ 22044: uvm_test_top.env_h.agnt_mac[0].seqr_h@@seq1 [gmii_eth_normal_frame_seq] gmii_eth_normal_frame_seq: Inside Body
# UVM_INFO eth_sequence.sv(59) @ 22044: uvm_test_top.env_h.agnt_mac[1].seqr_h@@seq2 [gmii_eth_normal_frame_seq] gmii_eth_normal_frame_seq: Inside Body
# *****************************ETH_DRIVER***********************************
# UVM_INFO eth_drv.sv(413) @ 22044: uvm_test_top.env_h.agnt_mac[1].drv_h [DRIVER PACKING] 
# 	 preamble = '{85, 85, 85, 85, 85, 85, 85}
# 	 sfd = 0xd5
# 	 DA = 005040302010
# 	 SA = 005141312111
# 	 ether_type = 0x255
# 	 payload = 00000255 bytes
# 	 crc = 0xf401a71e
# 	 Total frame size = 623, Frame size from DA = 615
# 	 Payload size = 597
# 
# 	 VLAN_EN = 0
# 	 VLAN_TPID = 0000
# 	 PCP = 0, DEI = 0, VID = 000
# UVM_INFO eth_drv.sv(420) @ 22044: uvm_test_top.env_h.agnt_mac[1].drv_h [DRIVING DATA] Frame size = 623, CRC = f401a71e
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 22044 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 22044 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 22044 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 22044 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# UVM_INFO eth_drv.sv(213) @ 22044: uvm_test_top.env_h.agnt_mac[1].drv_h [DRV_DEBUG] mac_id=1 PCP=0 flag=0 value=0
# *****************************ETH_DRIVER***********************************
# UVM_INFO eth_drv.sv(413) @ 22044: uvm_test_top.env_h.agnt_mac[0].drv_h [DRIVER PACKING] 
# 	 preamble = '{85, 85, 85, 85, 85, 85, 85}
# 	 sfd = 0xd5
# 	 DA = 005141312111
# 	 SA = 005040302010
# 	 ether_type = 0x39c
# 	 payload = 0000039c bytes
# 	 crc = 0xbd246f6a
# 	 Total frame size = 950, Frame size from DA = 942
# 	 Payload size = 924
# 
# 	 VLAN_EN = 0
# 	 VLAN_TPID = 0000
# 	 PCP = 0, DEI = 0, VID = 000
# UVM_INFO eth_drv.sv(420) @ 22044: uvm_test_top.env_h.agnt_mac[0].drv_h [DRIVING DATA] Frame size = 950, CRC = bd246f6a
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 22044 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 22044 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 22044 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 22044 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# UVM_INFO eth_drv.sv(213) @ 22044: uvm_test_top.env_h.agnt_mac[0].drv_h [DRV_DEBUG] mac_id=0 PCP=0 flag=0 value=0
# UVM_INFO eth_mon.sv(823) @ 22076: uvm_test_top.env_h.agnt_mac[1].mon_h [MON_LEN_CHECK] ether_type(claimed)=233  actual_payload=233
# UVM_INFO eth_mon.sv(903) @ 22076: uvm_test_top.env_h.agnt_mac[1].mon_h [RX MON UNPACKING] 
# 	 DA          = 005141312111
# 	 SA          = 005040302010
# 	 ether_type  = 0x233
# 	 payload     = 563 bytes
# 	 CRC (frame) = 0xb9d40cb8
# 	 residue     = 0xc704dd7b
# 	 CRC OK      = 1
# 	 frame size  = 245
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000
# UVM_INFO eth_mon.sv(624) @ 22076: uvm_test_top.env_h.agnt_mac[1].mon_h [RX_CLASSIFY] DA=005141312111 pause=0 multicast_bit=0
# UVM_INFO eth_scb.sv(556) @ 22076: uvm_test_top.env_h.scb_h [SCB_TRANS_NUM] 
# TX_TRANSACTION_NO = 3
# RX_TRANSACTION_NO = 3
# UVM_INFO eth_scb.sv(564) @ 22076: uvm_test_top.env_h.scb_h [SCB_COMPARE] 
# ==============================================================================
# EXPECTED (TX)      :                    | ACTUAL (RX)        :                   
# ==============================================================================
# TX_AGENT           : 0                  | RX_AGENT           : 1                 
# DA                 : 005141312111       | DA                 : 005141312111
# SA                 : 005040302010       | SA                 : 005040302010
# ETHER_TYPE         : 0233             | ETHER_TYPE         : 0233
# PAYLOAD_SIZE       : 233                | PAYLOAD_SIZE       : 233               
# CRC                : b9d40cb8           | CRC                : b9d40cb8
# ERR_B              : 0                  | ERR_B              : 0                 
# ==============================================================================
# UVM_INFO eth_scb.sv(622) @ 22076: uvm_test_top.env_h.scb_h [SCB_RX_COUNT] RX packet count received in SB = 3
# Moding =  1
# UVM_INFO eth_mon.sv(823) @ 27044: uvm_test_top.env_h.agnt_mac[1].mon_h [MON_LEN_CHECK] ether_type(claimed)=255  actual_payload=255
# UVM_INFO eth_mon.sv(883) @ 27044: uvm_test_top.env_h.agnt_mac[1].mon_h [TX MON UNPACKING] 
# 	preamble=85 85 85 85 85 85 85 
# 	 sfd= d5 
# 	 DA = 005040302010
# 	 SA          = 005141312111
# 	 ether_type = 0x255
# 	 payload = 597 bytes
# 	 CRC (frame) = 0xf401a71e
# 	 CRC (calc) = 0xf401a71e
# 	 CRC match = 1
# 	 frame size  = 26f
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000 pause_time=0
# UVM_INFO eth_scb.sv(83) @ 27044: uvm_test_top.env_h.scb_h [SCB_TX] Stored TX Packet : TX_AGENT[1] --> RX_AGENT[0] | TX_NO=4 | DA=005040302010 | SA=005141312111
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 27124 ns  Iteration: 1  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 51
# UVM_INFO eth_mon.sv(823) @ 27156: uvm_test_top.env_h.agnt_mac[0].mon_h [MON_LEN_CHECK] ether_type(claimed)=255  actual_payload=255
# UVM_INFO eth_mon.sv(903) @ 27156: uvm_test_top.env_h.agnt_mac[0].mon_h [RX MON UNPACKING] 
# 	 DA          = 005040302010
# 	 SA          = 005141312111
# 	 ether_type  = 0x255
# 	 payload     = 597 bytes
# 	 CRC (frame) = 0xf401a71e
# 	 residue     = 0xc704dd7b
# 	 CRC OK      = 1
# 	 frame size  = 267
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000
# UVM_INFO eth_mon.sv(624) @ 27156: uvm_test_top.env_h.agnt_mac[0].mon_h [RX_CLASSIFY] DA=005040302010 pause=0 multicast_bit=0
# UVM_INFO eth_scb.sv(556) @ 27156: uvm_test_top.env_h.scb_h [SCB_TRANS_NUM] 
# TX_TRANSACTION_NO = 4
# RX_TRANSACTION_NO = 4
# UVM_INFO eth_scb.sv(564) @ 27156: uvm_test_top.env_h.scb_h [SCB_COMPARE] 
# ==============================================================================
# EXPECTED (TX)      :                    | ACTUAL (RX)        :                   
# ==============================================================================
# TX_AGENT           : 1                  | RX_AGENT           : 0                 
# DA                 : 005040302010       | DA                 : 005040302010
# SA                 : 005141312111       | SA                 : 005141312111
# ETHER_TYPE         : 0255             | ETHER_TYPE         : 0255
# PAYLOAD_SIZE       : 255                | PAYLOAD_SIZE       : 255               
# CRC                : f401a71e           | CRC                : f401a71e
# ERR_B              : 0                  | ERR_B              : 0                 
# ==============================================================================
# UVM_INFO eth_scb.sv(622) @ 27156: uvm_test_top.env_h.scb_h [SCB_RX_COUNT] RX packet count received in SB = 4
# Moding =  1
# UVM_INFO eth_mon.sv(823) @ 29660: uvm_test_top.env_h.agnt_mac[0].mon_h [MON_LEN_CHECK] ether_type(claimed)=39c  actual_payload=39c
# UVM_INFO eth_mon.sv(883) @ 29660: uvm_test_top.env_h.agnt_mac[0].mon_h [TX MON UNPACKING] 
# 	preamble=85 85 85 85 85 85 85 
# 	 sfd= d5 
# 	 DA = 005141312111
# 	 SA          = 005040302010
# 	 ether_type = 0x39c
# 	 payload = 924 bytes
# 	 CRC (frame) = 0xbd246f6a
# 	 CRC (calc) = 0xbd246f6a
# 	 CRC match = 1
# 	 frame size  = 3b6
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000 pause_time=0
# UVM_INFO eth_scb.sv(83) @ 29660: uvm_test_top.env_h.scb_h [SCB_TX] Stored TX Packet : TX_AGENT[0] --> RX_AGENT[1] | TX_NO=4 | DA=005141312111 | SA=005040302010
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 29740 ns  Iteration: 1  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 51
# UVM_INFO eth_sequence.sv(59) @ 29740: uvm_test_top.env_h.agnt_mac[0].seqr_h@@seq1 [gmii_eth_normal_frame_seq] gmii_eth_normal_frame_seq: Inside Body
# UVM_INFO eth_sequence.sv(59) @ 29740: uvm_test_top.env_h.agnt_mac[1].seqr_h@@seq2 [gmii_eth_normal_frame_seq] gmii_eth_normal_frame_seq: Inside Body
# *****************************ETH_DRIVER***********************************
# UVM_INFO eth_drv.sv(413) @ 29740: uvm_test_top.env_h.agnt_mac[1].drv_h [DRIVER PACKING] 
# 	 preamble = '{85, 85, 85, 85, 85, 85, 85}
# 	 sfd = 0xd5
# 	 DA = 005040302010
# 	 SA = 005141312111
# 	 ether_type = 0xf2
# 	 payload = 000000f2 bytes
# 	 crc = 0xef99a932
# 	 Total frame size = 268, Frame size from DA = 260
# 	 Payload size = 242
# 
# 	 VLAN_EN = 0
# 	 VLAN_TPID = 0000
# 	 PCP = 0, DEI = 0, VID = 000
# UVM_INFO eth_drv.sv(420) @ 29740: uvm_test_top.env_h.agnt_mac[1].drv_h [DRIVING DATA] Frame size = 268, CRC = ef99a932
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 29740 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 29740 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 29740 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 29740 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# UVM_INFO eth_drv.sv(213) @ 29740: uvm_test_top.env_h.agnt_mac[1].drv_h [DRV_DEBUG] mac_id=1 PCP=0 flag=0 value=0
# *****************************ETH_DRIVER***********************************
# UVM_INFO eth_drv.sv(413) @ 29740: uvm_test_top.env_h.agnt_mac[0].drv_h [DRIVER PACKING] 
# 	 preamble = '{85, 85, 85, 85, 85, 85, 85}
# 	 sfd = 0xd5
# 	 DA = 005141312111
# 	 SA = 005040302010
# 	 ether_type = 0x1eb
# 	 payload = 000001eb bytes
# 	 crc = 0x413d8930
# 	 Total frame size = 517, Frame size from DA = 509
# 	 Payload size = 491
# 
# 	 VLAN_EN = 0
# 	 VLAN_TPID = 0000
# 	 PCP = 0, DEI = 0, VID = 000
# UVM_INFO eth_drv.sv(420) @ 29740: uvm_test_top.env_h.agnt_mac[0].drv_h [DRIVING DATA] Frame size = 517, CRC = 413d8930
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 29740 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 29740 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 29740 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 29740 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# UVM_INFO eth_drv.sv(213) @ 29740: uvm_test_top.env_h.agnt_mac[0].drv_h [DRV_DEBUG] mac_id=0 PCP=0 flag=0 value=0
# UVM_INFO eth_mon.sv(823) @ 29772: uvm_test_top.env_h.agnt_mac[1].mon_h [MON_LEN_CHECK] ether_type(claimed)=39c  actual_payload=39c
# UVM_INFO eth_mon.sv(903) @ 29772: uvm_test_top.env_h.agnt_mac[1].mon_h [RX MON UNPACKING] 
# 	 DA          = 005141312111
# 	 SA          = 005040302010
# 	 ether_type  = 0x39c
# 	 payload     = 924 bytes
# 	 CRC (frame) = 0xbd246f6a
# 	 residue     = 0xc704dd7b
# 	 CRC OK      = 1
# 	 frame size  = 3ae
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000
# UVM_INFO eth_mon.sv(624) @ 29772: uvm_test_top.env_h.agnt_mac[1].mon_h [RX_CLASSIFY] DA=005141312111 pause=0 multicast_bit=0
# UVM_INFO eth_scb.sv(556) @ 29772: uvm_test_top.env_h.scb_h [SCB_TRANS_NUM] 
# TX_TRANSACTION_NO = 4
# RX_TRANSACTION_NO = 4
# UVM_INFO eth_scb.sv(564) @ 29772: uvm_test_top.env_h.scb_h [SCB_COMPARE] 
# ==============================================================================
# EXPECTED (TX)      :                    | ACTUAL (RX)        :                   
# ==============================================================================
# TX_AGENT           : 0                  | RX_AGENT           : 1                 
# DA                 : 005141312111       | DA                 : 005141312111
# SA                 : 005040302010       | SA                 : 005040302010
# ETHER_TYPE         : 039c             | ETHER_TYPE         : 039c
# PAYLOAD_SIZE       : 39c                | PAYLOAD_SIZE       : 39c               
# CRC                : bd246f6a           | CRC                : bd246f6a
# ERR_B              : 0                  | ERR_B              : 0                 
# ==============================================================================
# UVM_INFO eth_scb.sv(622) @ 29772: uvm_test_top.env_h.scb_h [SCB_RX_COUNT] RX packet count received in SB = 4
# Moding =  1
# UVM_INFO eth_mon.sv(823) @ 31900: uvm_test_top.env_h.agnt_mac[1].mon_h [MON_LEN_CHECK] ether_type(claimed)=f2  actual_payload=f2
# UVM_INFO eth_mon.sv(883) @ 31900: uvm_test_top.env_h.agnt_mac[1].mon_h [TX MON UNPACKING] 
# 	preamble=85 85 85 85 85 85 85 
# 	 sfd= d5 
# 	 DA = 005040302010
# 	 SA          = 005141312111
# 	 ether_type = 0xf2
# 	 payload = 242 bytes
# 	 CRC (frame) = 0xef99a932
# 	 CRC (calc) = 0xef99a932
# 	 CRC match = 1
# 	 frame size  = 10c
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000 pause_time=0
# UVM_INFO eth_scb.sv(83) @ 31900: uvm_test_top.env_h.scb_h [SCB_TX] Stored TX Packet : TX_AGENT[1] --> RX_AGENT[0] | TX_NO=5 | DA=005040302010 | SA=005141312111
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 31980 ns  Iteration: 1  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 51
# UVM_INFO eth_mon.sv(823) @ 32012: uvm_test_top.env_h.agnt_mac[0].mon_h [MON_LEN_CHECK] ether_type(claimed)=f2  actual_payload=f2
# UVM_INFO eth_mon.sv(903) @ 32012: uvm_test_top.env_h.agnt_mac[0].mon_h [RX MON UNPACKING] 
# 	 DA          = 005040302010
# 	 SA          = 005141312111
# 	 ether_type  = 0xf2
# 	 payload     = 242 bytes
# 	 CRC (frame) = 0xef99a932
# 	 residue     = 0xc704dd7b
# 	 CRC OK      = 1
# 	 frame size  = 104
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000
# UVM_INFO eth_mon.sv(624) @ 32012: uvm_test_top.env_h.agnt_mac[0].mon_h [RX_CLASSIFY] DA=005040302010 pause=0 multicast_bit=0
# UVM_INFO eth_scb.sv(556) @ 32012: uvm_test_top.env_h.scb_h [SCB_TRANS_NUM] 
# TX_TRANSACTION_NO = 5
# RX_TRANSACTION_NO = 5
# UVM_INFO eth_scb.sv(564) @ 32012: uvm_test_top.env_h.scb_h [SCB_COMPARE] 
# ==============================================================================
# EXPECTED (TX)      :                    | ACTUAL (RX)        :                   
# ==============================================================================
# TX_AGENT           : 1                  | RX_AGENT           : 0                 
# DA                 : 005040302010       | DA                 : 005040302010
# SA                 : 005141312111       | SA                 : 005141312111
# ETHER_TYPE         : 00f2             | ETHER_TYPE         : 00f2
# PAYLOAD_SIZE       : f2                 | PAYLOAD_SIZE       : f2                
# CRC                : ef99a932           | CRC                : ef99a932
# ERR_B              : 0                  | ERR_B              : 0                 
# ==============================================================================
# UVM_INFO eth_scb.sv(622) @ 32012: uvm_test_top.env_h.scb_h [SCB_RX_COUNT] RX packet count received in SB = 5
# Moding =  1
# UVM_INFO eth_mon.sv(823) @ 33892: uvm_test_top.env_h.agnt_mac[0].mon_h [MON_LEN_CHECK] ether_type(claimed)=1eb  actual_payload=1eb
# UVM_INFO eth_mon.sv(883) @ 33892: uvm_test_top.env_h.agnt_mac[0].mon_h [TX MON UNPACKING] 
# 	preamble=85 85 85 85 85 85 85 
# 	 sfd= d5 
# 	 DA = 005141312111
# 	 SA          = 005040302010
# 	 ether_type = 0x1eb
# 	 payload = 491 bytes
# 	 CRC (frame) = 0x413d8930
# 	 CRC (calc) = 0x413d8930
# 	 CRC match = 1
# 	 frame size  = 205
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000 pause_time=0
# UVM_INFO eth_scb.sv(83) @ 33892: uvm_test_top.env_h.scb_h [SCB_TX] Stored TX Packet : TX_AGENT[0] --> RX_AGENT[1] | TX_NO=5 | DA=005141312111 | SA=005040302010
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 33972 ns  Iteration: 1  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 51
# UVM_INFO eth_sequence.sv(59) @ 33972: uvm_test_top.env_h.agnt_mac[0].seqr_h@@seq1 [gmii_eth_normal_frame_seq] gmii_eth_normal_frame_seq: Inside Body
# UVM_INFO eth_sequence.sv(59) @ 33972: uvm_test_top.env_h.agnt_mac[1].seqr_h@@seq2 [gmii_eth_normal_frame_seq] gmii_eth_normal_frame_seq: Inside Body
# *****************************ETH_DRIVER***********************************
# UVM_INFO eth_drv.sv(413) @ 33972: uvm_test_top.env_h.agnt_mac[1].drv_h [DRIVER PACKING] 
# 	 preamble = '{85, 85, 85, 85, 85, 85, 85}
# 	 sfd = 0xd5
# 	 DA = 005040302010
# 	 SA = 005141312111
# 	 ether_type = 0x4c8
# 	 payload = 000004c8 bytes
# 	 crc = 0x1091f903
# 	 Total frame size = 1250, Frame size from DA = 1242
# 	 Payload size = 1224
# 
# 	 VLAN_EN = 0
# 	 VLAN_TPID = 0000
# 	 PCP = 0, DEI = 0, VID = 000
# UVM_INFO eth_drv.sv(420) @ 33972: uvm_test_top.env_h.agnt_mac[1].drv_h [DRIVING DATA] Frame size = 1250, CRC = 1091f903
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 33972 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 33972 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 33972 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 33972 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# UVM_INFO eth_drv.sv(213) @ 33972: uvm_test_top.env_h.agnt_mac[1].drv_h [DRV_DEBUG] mac_id=1 PCP=0 flag=0 value=0
# *****************************ETH_DRIVER***********************************
# UVM_INFO eth_drv.sv(413) @ 33972: uvm_test_top.env_h.agnt_mac[0].drv_h [DRIVER PACKING] 
# 	 preamble = '{85, 85, 85, 85, 85, 85, 85}
# 	 sfd = 0xd5
# 	 DA = 005141312111
# 	 SA = 005040302010
# 	 ether_type = 0x3a1
# 	 payload = 000003a1 bytes
# 	 crc = 0xbd4c7e50
# 	 Total frame size = 955, Frame size from DA = 947
# 	 Payload size = 929
# 
# 	 VLAN_EN = 0
# 	 VLAN_TPID = 0000
# 	 PCP = 0, DEI = 0, VID = 000
# UVM_INFO eth_drv.sv(420) @ 33972: uvm_test_top.env_h.agnt_mac[0].drv_h [DRIVING DATA] Frame size = 955, CRC = bd4c7e50
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 33972 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 33972 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 33972 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 33972 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# UVM_INFO eth_drv.sv(213) @ 33972: uvm_test_top.env_h.agnt_mac[0].drv_h [DRV_DEBUG] mac_id=0 PCP=0 flag=0 value=0
# UVM_INFO eth_mon.sv(823) @ 34004: uvm_test_top.env_h.agnt_mac[1].mon_h [MON_LEN_CHECK] ether_type(claimed)=1eb  actual_payload=1eb
# UVM_INFO eth_mon.sv(903) @ 34004: uvm_test_top.env_h.agnt_mac[1].mon_h [RX MON UNPACKING] 
# 	 DA          = 005141312111
# 	 SA          = 005040302010
# 	 ether_type  = 0x1eb
# 	 payload     = 491 bytes
# 	 CRC (frame) = 0x413d8930
# 	 residue     = 0xc704dd7b
# 	 CRC OK      = 1
# 	 frame size  = 1fd
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000
# UVM_INFO eth_mon.sv(624) @ 34004: uvm_test_top.env_h.agnt_mac[1].mon_h [RX_CLASSIFY] DA=005141312111 pause=0 multicast_bit=0
# UVM_INFO eth_scb.sv(556) @ 34004: uvm_test_top.env_h.scb_h [SCB_TRANS_NUM] 
# TX_TRANSACTION_NO = 5
# RX_TRANSACTION_NO = 5
# UVM_INFO eth_scb.sv(564) @ 34004: uvm_test_top.env_h.scb_h [SCB_COMPARE] 
# ==============================================================================
# EXPECTED (TX)      :                    | ACTUAL (RX)        :                   
# ==============================================================================
# TX_AGENT           : 0                  | RX_AGENT           : 1                 
# DA                 : 005141312111       | DA                 : 005141312111
# SA                 : 005040302010       | SA                 : 005040302010
# ETHER_TYPE         : 01eb             | ETHER_TYPE         : 01eb
# PAYLOAD_SIZE       : 1eb                | PAYLOAD_SIZE       : 1eb               
# CRC                : 413d8930           | CRC                : 413d8930
# ERR_B              : 0                  | ERR_B              : 0                 
# ==============================================================================
# UVM_INFO eth_scb.sv(622) @ 34004: uvm_test_top.env_h.scb_h [SCB_RX_COUNT] RX packet count received in SB = 5
# Moding =  1
# UVM_INFO eth_mon.sv(823) @ 41628: uvm_test_top.env_h.agnt_mac[0].mon_h [MON_LEN_CHECK] ether_type(claimed)=3a1  actual_payload=3a1
# UVM_INFO eth_mon.sv(883) @ 41628: uvm_test_top.env_h.agnt_mac[0].mon_h [TX MON UNPACKING] 
# 	preamble=85 85 85 85 85 85 85 
# 	 sfd= d5 
# 	 DA = 005141312111
# 	 SA          = 005040302010
# 	 ether_type = 0x3a1
# 	 payload = 929 bytes
# 	 CRC (frame) = 0xbd4c7e50
# 	 CRC (calc) = 0xbd4c7e50
# 	 CRC match = 1
# 	 frame size  = 3bb
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000 pause_time=0
# UVM_INFO eth_scb.sv(83) @ 41628: uvm_test_top.env_h.scb_h [SCB_TX] Stored TX Packet : TX_AGENT[0] --> RX_AGENT[1] | TX_NO=6 | DA=005141312111 | SA=005040302010
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 41708 ns  Iteration: 1  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 51
# UVM_INFO eth_mon.sv(823) @ 41740: uvm_test_top.env_h.agnt_mac[1].mon_h [MON_LEN_CHECK] ether_type(claimed)=3a1  actual_payload=3a1
# UVM_INFO eth_mon.sv(903) @ 41740: uvm_test_top.env_h.agnt_mac[1].mon_h [RX MON UNPACKING] 
# 	 DA          = 005141312111
# 	 SA          = 005040302010
# 	 ether_type  = 0x3a1
# 	 payload     = 929 bytes
# 	 CRC (frame) = 0xbd4c7e50
# 	 residue     = 0xc704dd7b
# 	 CRC OK      = 1
# 	 frame size  = 3b3
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000
# UVM_INFO eth_mon.sv(624) @ 41740: uvm_test_top.env_h.agnt_mac[1].mon_h [RX_CLASSIFY] DA=005141312111 pause=0 multicast_bit=0
# UVM_INFO eth_scb.sv(556) @ 41740: uvm_test_top.env_h.scb_h [SCB_TRANS_NUM] 
# TX_TRANSACTION_NO = 6
# RX_TRANSACTION_NO = 6
# UVM_INFO eth_scb.sv(564) @ 41740: uvm_test_top.env_h.scb_h [SCB_COMPARE] 
# ==============================================================================
# EXPECTED (TX)      :                    | ACTUAL (RX)        :                   
# ==============================================================================
# TX_AGENT           : 0                  | RX_AGENT           : 1                 
# DA                 : 005141312111       | DA                 : 005141312111
# SA                 : 005040302010       | SA                 : 005040302010
# ETHER_TYPE         : 03a1             | ETHER_TYPE         : 03a1
# PAYLOAD_SIZE       : 3a1                | PAYLOAD_SIZE       : 3a1               
# CRC                : bd4c7e50           | CRC                : bd4c7e50
# ERR_B              : 0                  | ERR_B              : 0                 
# ==============================================================================
# UVM_INFO eth_scb.sv(622) @ 41740: uvm_test_top.env_h.scb_h [SCB_RX_COUNT] RX packet count received in SB = 6
# Moding =  1
# UVM_INFO eth_mon.sv(823) @ 43988: uvm_test_top.env_h.agnt_mac[1].mon_h [MON_LEN_CHECK] ether_type(claimed)=4c8  actual_payload=4c8
# UVM_INFO eth_mon.sv(883) @ 43988: uvm_test_top.env_h.agnt_mac[1].mon_h [TX MON UNPACKING] 
# 	preamble=85 85 85 85 85 85 85 
# 	 sfd= d5 
# 	 DA = 005040302010
# 	 SA          = 005141312111
# 	 ether_type = 0x4c8
# 	 payload = 1224 bytes
# 	 CRC (frame) = 0x1091f903
# 	 CRC (calc) = 0x1091f903
# 	 CRC match = 1
# 	 frame size  = 4e2
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000 pause_time=0
# UVM_INFO eth_scb.sv(83) @ 43988: uvm_test_top.env_h.scb_h [SCB_TX] Stored TX Packet : TX_AGENT[1] --> RX_AGENT[0] | TX_NO=6 | DA=005040302010 | SA=005141312111
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 44068 ns  Iteration: 1  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 51
# UVM_INFO eth_sequence.sv(59) @ 44068: uvm_test_top.env_h.agnt_mac[0].seqr_h@@seq1 [gmii_eth_normal_frame_seq] gmii_eth_normal_frame_seq: Inside Body
# UVM_INFO eth_sequence.sv(59) @ 44068: uvm_test_top.env_h.agnt_mac[1].seqr_h@@seq2 [gmii_eth_normal_frame_seq] gmii_eth_normal_frame_seq: Inside Body
# *****************************ETH_DRIVER***********************************
# UVM_INFO eth_drv.sv(413) @ 44068: uvm_test_top.env_h.agnt_mac[0].drv_h [DRIVER PACKING] 
# 	 preamble = '{85, 85, 85, 85, 85, 85, 85}
# 	 sfd = 0xd5
# 	 DA = 005141312111
# 	 SA = 005040302010
# 	 ether_type = 0x34a
# 	 payload = 0000034a bytes
# 	 crc = 0x4a30321d
# 	 Total frame size = 868, Frame size from DA = 860
# 	 Payload size = 842
# 
# 	 VLAN_EN = 0
# 	 VLAN_TPID = 0000
# 	 PCP = 0, DEI = 0, VID = 000
# UVM_INFO eth_drv.sv(420) @ 44068: uvm_test_top.env_h.agnt_mac[0].drv_h [DRIVING DATA] Frame size = 868, CRC = 4a30321d
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 44068 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 44068 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 44068 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 44068 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# UVM_INFO eth_drv.sv(213) @ 44068: uvm_test_top.env_h.agnt_mac[0].drv_h [DRV_DEBUG] mac_id=0 PCP=0 flag=0 value=0
# *****************************ETH_DRIVER***********************************
# UVM_INFO eth_drv.sv(413) @ 44068: uvm_test_top.env_h.agnt_mac[1].drv_h [DRIVER PACKING] 
# 	 preamble = '{85, 85, 85, 85, 85, 85, 85}
# 	 sfd = 0xd5
# 	 DA = 005040302010
# 	 SA = 005141312111
# 	 ether_type = 0x376
# 	 payload = 00000376 bytes
# 	 crc = 0x58441239
# 	 Total frame size = 912, Frame size from DA = 904
# 	 Payload size = 886
# 
# 	 VLAN_EN = 0
# 	 VLAN_TPID = 0000
# 	 PCP = 0, DEI = 0, VID = 000
# UVM_INFO eth_drv.sv(420) @ 44068: uvm_test_top.env_h.agnt_mac[1].drv_h [DRIVING DATA] Frame size = 912, CRC = 58441239
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 44068 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 44068 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 44068 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 44068 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# UVM_INFO eth_drv.sv(213) @ 44068: uvm_test_top.env_h.agnt_mac[1].drv_h [DRV_DEBUG] mac_id=1 PCP=0 flag=0 value=0
# UVM_INFO eth_mon.sv(823) @ 44100: uvm_test_top.env_h.agnt_mac[0].mon_h [MON_LEN_CHECK] ether_type(claimed)=4c8  actual_payload=4c8
# UVM_INFO eth_mon.sv(903) @ 44100: uvm_test_top.env_h.agnt_mac[0].mon_h [RX MON UNPACKING] 
# 	 DA          = 005040302010
# 	 SA          = 005141312111
# 	 ether_type  = 0x4c8
# 	 payload     = 1224 bytes
# 	 CRC (frame) = 0x1091f903
# 	 residue     = 0xc704dd7b
# 	 CRC OK      = 1
# 	 frame size  = 4da
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000
# UVM_INFO eth_mon.sv(624) @ 44100: uvm_test_top.env_h.agnt_mac[0].mon_h [RX_CLASSIFY] DA=005040302010 pause=0 multicast_bit=0
# UVM_INFO eth_scb.sv(556) @ 44100: uvm_test_top.env_h.scb_h [SCB_TRANS_NUM] 
# TX_TRANSACTION_NO = 6
# RX_TRANSACTION_NO = 6
# UVM_INFO eth_scb.sv(564) @ 44100: uvm_test_top.env_h.scb_h [SCB_COMPARE] 
# ==============================================================================
# EXPECTED (TX)      :                    | ACTUAL (RX)        :                   
# ==============================================================================
# TX_AGENT           : 1                  | RX_AGENT           : 0                 
# DA                 : 005040302010       | DA                 : 005040302010
# SA                 : 005141312111       | SA                 : 005141312111
# ETHER_TYPE         : 04c8             | ETHER_TYPE         : 04c8
# PAYLOAD_SIZE       : 4c8                | PAYLOAD_SIZE       : 4c8               
# CRC                : 1091f903           | CRC                : 1091f903
# ERR_B              : 0                  | ERR_B              : 0                 
# ==============================================================================
# UVM_INFO eth_scb.sv(622) @ 44100: uvm_test_top.env_h.scb_h [SCB_RX_COUNT] RX packet count received in SB = 6
# Moding =  1
# UVM_INFO eth_mon.sv(823) @ 51028: uvm_test_top.env_h.agnt_mac[0].mon_h [MON_LEN_CHECK] ether_type(claimed)=34a  actual_payload=34a
# UVM_INFO eth_mon.sv(883) @ 51028: uvm_test_top.env_h.agnt_mac[0].mon_h [TX MON UNPACKING] 
# 	preamble=85 85 85 85 85 85 85 
# 	 sfd= d5 
# 	 DA = 005141312111
# 	 SA          = 005040302010
# 	 ether_type = 0x34a
# 	 payload = 842 bytes
# 	 CRC (frame) = 0x4a30321d
# 	 CRC (calc) = 0x4a30321d
# 	 CRC match = 1
# 	 frame size  = 364
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000 pause_time=0
# UVM_INFO eth_scb.sv(83) @ 51028: uvm_test_top.env_h.scb_h [SCB_TX] Stored TX Packet : TX_AGENT[0] --> RX_AGENT[1] | TX_NO=7 | DA=005141312111 | SA=005040302010
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 51108 ns  Iteration: 1  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 51
# UVM_INFO eth_mon.sv(823) @ 51140: uvm_test_top.env_h.agnt_mac[1].mon_h [MON_LEN_CHECK] ether_type(claimed)=34a  actual_payload=34a
# UVM_INFO eth_mon.sv(903) @ 51140: uvm_test_top.env_h.agnt_mac[1].mon_h [RX MON UNPACKING] 
# 	 DA          = 005141312111
# 	 SA          = 005040302010
# 	 ether_type  = 0x34a
# 	 payload     = 842 bytes
# 	 CRC (frame) = 0x4a30321d
# 	 residue     = 0xc704dd7b
# 	 CRC OK      = 1
# 	 frame size  = 35c
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000
# UVM_INFO eth_mon.sv(624) @ 51140: uvm_test_top.env_h.agnt_mac[1].mon_h [RX_CLASSIFY] DA=005141312111 pause=0 multicast_bit=0
# UVM_INFO eth_scb.sv(556) @ 51140: uvm_test_top.env_h.scb_h [SCB_TRANS_NUM] 
# TX_TRANSACTION_NO = 7
# RX_TRANSACTION_NO = 7
# UVM_INFO eth_scb.sv(564) @ 51140: uvm_test_top.env_h.scb_h [SCB_COMPARE] 
# ==============================================================================
# EXPECTED (TX)      :                    | ACTUAL (RX)        :                   
# ==============================================================================
# TX_AGENT           : 0                  | RX_AGENT           : 1                 
# DA                 : 005141312111       | DA                 : 005141312111
# SA                 : 005040302010       | SA                 : 005040302010
# ETHER_TYPE         : 034a             | ETHER_TYPE         : 034a
# PAYLOAD_SIZE       : 34a                | PAYLOAD_SIZE       : 34a               
# CRC                : 4a30321d           | CRC                : 4a30321d
# ERR_B              : 0                  | ERR_B              : 0                 
# ==============================================================================
# UVM_INFO eth_scb.sv(622) @ 51140: uvm_test_top.env_h.scb_h [SCB_RX_COUNT] RX packet count received in SB = 7
# Moding =  1
# UVM_INFO eth_mon.sv(823) @ 51380: uvm_test_top.env_h.agnt_mac[1].mon_h [MON_LEN_CHECK] ether_type(claimed)=376  actual_payload=376
# UVM_INFO eth_mon.sv(883) @ 51380: uvm_test_top.env_h.agnt_mac[1].mon_h [TX MON UNPACKING] 
# 	preamble=85 85 85 85 85 85 85 
# 	 sfd= d5 
# 	 DA = 005040302010
# 	 SA          = 005141312111
# 	 ether_type = 0x376
# 	 payload = 886 bytes
# 	 CRC (frame) = 0x58441239
# 	 CRC (calc) = 0x58441239
# 	 CRC match = 1
# 	 frame size  = 390
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000 pause_time=0
# UVM_INFO eth_scb.sv(83) @ 51380: uvm_test_top.env_h.scb_h [SCB_TX] Stored TX Packet : TX_AGENT[1] --> RX_AGENT[0] | TX_NO=7 | DA=005040302010 | SA=005141312111
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 51460 ns  Iteration: 1  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 51
# UVM_INFO eth_sequence.sv(59) @ 51460: uvm_test_top.env_h.agnt_mac[0].seqr_h@@seq1 [gmii_eth_normal_frame_seq] gmii_eth_normal_frame_seq: Inside Body
# UVM_INFO eth_sequence.sv(59) @ 51460: uvm_test_top.env_h.agnt_mac[1].seqr_h@@seq2 [gmii_eth_normal_frame_seq] gmii_eth_normal_frame_seq: Inside Body
# *****************************ETH_DRIVER***********************************
# UVM_INFO eth_drv.sv(413) @ 51460: uvm_test_top.env_h.agnt_mac[0].drv_h [DRIVER PACKING] 
# 	 preamble = '{85, 85, 85, 85, 85, 85, 85}
# 	 sfd = 0xd5
# 	 DA = 005141312111
# 	 SA = 005040302010
# 	 ether_type = 0x58e
# 	 payload = 0000058e bytes
# 	 crc = 0xdf8b9774
# 	 Total frame size = 1448, Frame size from DA = 1440
# 	 Payload size = 1422
# 
# 	 VLAN_EN = 0
# 	 VLAN_TPID = 0000
# 	 PCP = 0, DEI = 0, VID = 000
# UVM_INFO eth_drv.sv(420) @ 51460: uvm_test_top.env_h.agnt_mac[0].drv_h [DRIVING DATA] Frame size = 1448, CRC = df8b9774
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 51460 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 51460 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 51460 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 51460 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# UVM_INFO eth_drv.sv(213) @ 51460: uvm_test_top.env_h.agnt_mac[0].drv_h [DRV_DEBUG] mac_id=0 PCP=0 flag=0 value=0
# *****************************ETH_DRIVER***********************************
# UVM_INFO eth_drv.sv(413) @ 51460: uvm_test_top.env_h.agnt_mac[1].drv_h [DRIVER PACKING] 
# 	 preamble = '{85, 85, 85, 85, 85, 85, 85}
# 	 sfd = 0xd5
# 	 DA = 005040302010
# 	 SA = 005141312111
# 	 ether_type = 0x2a3
# 	 payload = 000002a3 bytes
# 	 crc = 0x224a46d8
# 	 Total frame size = 701, Frame size from DA = 693
# 	 Payload size = 675
# 
# 	 VLAN_EN = 0
# 	 VLAN_TPID = 0000
# 	 PCP = 0, DEI = 0, VID = 000
# UVM_INFO eth_drv.sv(420) @ 51460: uvm_test_top.env_h.agnt_mac[1].drv_h [DRIVING DATA] Frame size = 701, CRC = 224a46d8
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 51460 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 51460 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 51460 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 51460 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# UVM_INFO eth_drv.sv(213) @ 51460: uvm_test_top.env_h.agnt_mac[1].drv_h [DRV_DEBUG] mac_id=1 PCP=0 flag=0 value=0
# UVM_INFO eth_mon.sv(823) @ 51492: uvm_test_top.env_h.agnt_mac[0].mon_h [MON_LEN_CHECK] ether_type(claimed)=376  actual_payload=376
# UVM_INFO eth_mon.sv(903) @ 51492: uvm_test_top.env_h.agnt_mac[0].mon_h [RX MON UNPACKING] 
# 	 DA          = 005040302010
# 	 SA          = 005141312111
# 	 ether_type  = 0x376
# 	 payload     = 886 bytes
# 	 CRC (frame) = 0x58441239
# 	 residue     = 0xc704dd7b
# 	 CRC OK      = 1
# 	 frame size  = 388
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000
# UVM_INFO eth_mon.sv(624) @ 51492: uvm_test_top.env_h.agnt_mac[0].mon_h [RX_CLASSIFY] DA=005040302010 pause=0 multicast_bit=0
# UVM_INFO eth_scb.sv(556) @ 51492: uvm_test_top.env_h.scb_h [SCB_TRANS_NUM] 
# TX_TRANSACTION_NO = 7
# RX_TRANSACTION_NO = 7
# UVM_INFO eth_scb.sv(564) @ 51492: uvm_test_top.env_h.scb_h [SCB_COMPARE] 
# ==============================================================================
# EXPECTED (TX)      :                    | ACTUAL (RX)        :                   
# ==============================================================================
# TX_AGENT           : 1                  | RX_AGENT           : 0                 
# DA                 : 005040302010       | DA                 : 005040302010
# SA                 : 005141312111       | SA                 : 005141312111
# ETHER_TYPE         : 0376             | ETHER_TYPE         : 0376
# PAYLOAD_SIZE       : 376                | PAYLOAD_SIZE       : 376               
# CRC                : 58441239           | CRC                : 58441239
# ERR_B              : 0                  | ERR_B              : 0                 
# ==============================================================================
# UVM_INFO eth_scb.sv(622) @ 51492: uvm_test_top.env_h.scb_h [SCB_RX_COUNT] RX packet count received in SB = 7
# Moding =  1
# UVM_INFO eth_mon.sv(823) @ 57084: uvm_test_top.env_h.agnt_mac[1].mon_h [MON_LEN_CHECK] ether_type(claimed)=2a3  actual_payload=2a3
# UVM_INFO eth_mon.sv(883) @ 57084: uvm_test_top.env_h.agnt_mac[1].mon_h [TX MON UNPACKING] 
# 	preamble=85 85 85 85 85 85 85 
# 	 sfd= d5 
# 	 DA = 005040302010
# 	 SA          = 005141312111
# 	 ether_type = 0x2a3
# 	 payload = 675 bytes
# 	 CRC (frame) = 0x224a46d8
# 	 CRC (calc) = 0x224a46d8
# 	 CRC match = 1
# 	 frame size  = 2bd
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000 pause_time=0
# UVM_INFO eth_scb.sv(83) @ 57084: uvm_test_top.env_h.scb_h [SCB_TX] Stored TX Packet : TX_AGENT[1] --> RX_AGENT[0] | TX_NO=8 | DA=005040302010 | SA=005141312111
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 57164 ns  Iteration: 1  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 51
# UVM_INFO eth_mon.sv(823) @ 57196: uvm_test_top.env_h.agnt_mac[0].mon_h [MON_LEN_CHECK] ether_type(claimed)=2a3  actual_payload=2a3
# UVM_INFO eth_mon.sv(903) @ 57196: uvm_test_top.env_h.agnt_mac[0].mon_h [RX MON UNPACKING] 
# 	 DA          = 005040302010
# 	 SA          = 005141312111
# 	 ether_type  = 0x2a3
# 	 payload     = 675 bytes
# 	 CRC (frame) = 0x224a46d8
# 	 residue     = 0xc704dd7b
# 	 CRC OK      = 1
# 	 frame size  = 2b5
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000
# UVM_INFO eth_mon.sv(624) @ 57196: uvm_test_top.env_h.agnt_mac[0].mon_h [RX_CLASSIFY] DA=005040302010 pause=0 multicast_bit=0
# UVM_INFO eth_scb.sv(556) @ 57196: uvm_test_top.env_h.scb_h [SCB_TRANS_NUM] 
# TX_TRANSACTION_NO = 8
# RX_TRANSACTION_NO = 8
# UVM_INFO eth_scb.sv(564) @ 57196: uvm_test_top.env_h.scb_h [SCB_COMPARE] 
# ==============================================================================
# EXPECTED (TX)      :                    | ACTUAL (RX)        :                   
# ==============================================================================
# TX_AGENT           : 1                  | RX_AGENT           : 0                 
# DA                 : 005040302010       | DA                 : 005040302010
# SA                 : 005141312111       | SA                 : 005141312111
# ETHER_TYPE         : 02a3             | ETHER_TYPE         : 02a3
# PAYLOAD_SIZE       : 2a3                | PAYLOAD_SIZE       : 2a3               
# CRC                : 224a46d8           | CRC                : 224a46d8
# ERR_B              : 0                  | ERR_B              : 0                 
# ==============================================================================
# UVM_INFO eth_scb.sv(622) @ 57196: uvm_test_top.env_h.scb_h [SCB_RX_COUNT] RX packet count received in SB = 8
# Moding =  1
# UVM_INFO eth_mon.sv(823) @ 63060: uvm_test_top.env_h.agnt_mac[0].mon_h [MON_LEN_CHECK] ether_type(claimed)=58e  actual_payload=58e
# UVM_INFO eth_mon.sv(883) @ 63060: uvm_test_top.env_h.agnt_mac[0].mon_h [TX MON UNPACKING] 
# 	preamble=85 85 85 85 85 85 85 
# 	 sfd= d5 
# 	 DA = 005141312111
# 	 SA          = 005040302010
# 	 ether_type = 0x58e
# 	 payload = 1422 bytes
# 	 CRC (frame) = 0xdf8b9774
# 	 CRC (calc) = 0xdf8b9774
# 	 CRC match = 1
# 	 frame size  = 5a8
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000 pause_time=0
# UVM_INFO eth_scb.sv(83) @ 63060: uvm_test_top.env_h.scb_h [SCB_TX] Stored TX Packet : TX_AGENT[0] --> RX_AGENT[1] | TX_NO=8 | DA=005141312111 | SA=005040302010
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 63140 ns  Iteration: 1  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 51
# UVM_INFO eth_sequence.sv(59) @ 63140: uvm_test_top.env_h.agnt_mac[0].seqr_h@@seq1 [gmii_eth_normal_frame_seq] gmii_eth_normal_frame_seq: Inside Body
# UVM_INFO eth_sequence.sv(59) @ 63140: uvm_test_top.env_h.agnt_mac[1].seqr_h@@seq2 [gmii_eth_normal_frame_seq] gmii_eth_normal_frame_seq: Inside Body
# *****************************ETH_DRIVER***********************************
# UVM_INFO eth_drv.sv(413) @ 63140: uvm_test_top.env_h.agnt_mac[1].drv_h [DRIVER PACKING] 
# 	 preamble = '{85, 85, 85, 85, 85, 85, 85}
# 	 sfd = 0xd5
# 	 DA = 005040302010
# 	 SA = 005141312111
# 	 ether_type = 0x554
# 	 payload = 00000554 bytes
# 	 crc = 0xab0050c7
# 	 Total frame size = 1390, Frame size from DA = 1382
# 	 Payload size = 1364
# 
# 	 VLAN_EN = 0
# 	 VLAN_TPID = 0000
# 	 PCP = 0, DEI = 0, VID = 000
# UVM_INFO eth_drv.sv(420) @ 63140: uvm_test_top.env_h.agnt_mac[1].drv_h [DRIVING DATA] Frame size = 1390, CRC = ab0050c7
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 63140 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 63140 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 63140 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 63140 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# UVM_INFO eth_drv.sv(213) @ 63140: uvm_test_top.env_h.agnt_mac[1].drv_h [DRV_DEBUG] mac_id=1 PCP=0 flag=0 value=0
# *****************************ETH_DRIVER***********************************
# UVM_INFO eth_drv.sv(413) @ 63140: uvm_test_top.env_h.agnt_mac[0].drv_h [DRIVER PACKING] 
# 	 preamble = '{85, 85, 85, 85, 85, 85, 85}
# 	 sfd = 0xd5
# 	 DA = 005141312111
# 	 SA = 005040302010
# 	 ether_type = 0x151
# 	 payload = 00000151 bytes
# 	 crc = 0x5041d1b9
# 	 Total frame size = 363, Frame size from DA = 355
# 	 Payload size = 337
# 
# 	 VLAN_EN = 0
# 	 VLAN_TPID = 0000
# 	 PCP = 0, DEI = 0, VID = 000
# UVM_INFO eth_drv.sv(420) @ 63140: uvm_test_top.env_h.agnt_mac[0].drv_h [DRIVING DATA] Frame size = 363, CRC = 5041d1b9
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 63140 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 63140 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 63140 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 63140 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# UVM_INFO eth_drv.sv(213) @ 63140: uvm_test_top.env_h.agnt_mac[0].drv_h [DRV_DEBUG] mac_id=0 PCP=0 flag=0 value=0
# UVM_INFO eth_mon.sv(823) @ 63172: uvm_test_top.env_h.agnt_mac[1].mon_h [MON_LEN_CHECK] ether_type(claimed)=58e  actual_payload=58e
# UVM_INFO eth_mon.sv(903) @ 63172: uvm_test_top.env_h.agnt_mac[1].mon_h [RX MON UNPACKING] 
# 	 DA          = 005141312111
# 	 SA          = 005040302010
# 	 ether_type  = 0x58e
# 	 payload     = 1422 bytes
# 	 CRC (frame) = 0xdf8b9774
# 	 residue     = 0xc704dd7b
# 	 CRC OK      = 1
# 	 frame size  = 5a0
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000
# UVM_INFO eth_mon.sv(624) @ 63172: uvm_test_top.env_h.agnt_mac[1].mon_h [RX_CLASSIFY] DA=005141312111 pause=0 multicast_bit=0
# UVM_INFO eth_scb.sv(556) @ 63172: uvm_test_top.env_h.scb_h [SCB_TRANS_NUM] 
# TX_TRANSACTION_NO = 8
# RX_TRANSACTION_NO = 8
# UVM_INFO eth_scb.sv(564) @ 63172: uvm_test_top.env_h.scb_h [SCB_COMPARE] 
# ==============================================================================
# EXPECTED (TX)      :                    | ACTUAL (RX)        :                   
# ==============================================================================
# TX_AGENT           : 0                  | RX_AGENT           : 1                 
# DA                 : 005141312111       | DA                 : 005141312111
# SA                 : 005040302010       | SA                 : 005040302010
# ETHER_TYPE         : 058e             | ETHER_TYPE         : 058e
# PAYLOAD_SIZE       : 58e                | PAYLOAD_SIZE       : 58e               
# CRC                : df8b9774           | CRC                : df8b9774
# ERR_B              : 0                  | ERR_B              : 0                 
# ==============================================================================
# UVM_INFO eth_scb.sv(622) @ 63172: uvm_test_top.env_h.scb_h [SCB_RX_COUNT] RX packet count received in SB = 8
# Moding =  1
# UVM_INFO eth_mon.sv(823) @ 66060: uvm_test_top.env_h.agnt_mac[0].mon_h [MON_LEN_CHECK] ether_type(claimed)=151  actual_payload=151
# UVM_INFO eth_mon.sv(883) @ 66060: uvm_test_top.env_h.agnt_mac[0].mon_h [TX MON UNPACKING] 
# 	preamble=85 85 85 85 85 85 85 
# 	 sfd= d5 
# 	 DA = 005141312111
# 	 SA          = 005040302010
# 	 ether_type = 0x151
# 	 payload = 337 bytes
# 	 CRC (frame) = 0x5041d1b9
# 	 CRC (calc) = 0x5041d1b9
# 	 CRC match = 1
# 	 frame size  = 16b
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000 pause_time=0
# UVM_INFO eth_scb.sv(83) @ 66060: uvm_test_top.env_h.scb_h [SCB_TX] Stored TX Packet : TX_AGENT[0] --> RX_AGENT[1] | TX_NO=9 | DA=005141312111 | SA=005040302010
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 66140 ns  Iteration: 1  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 51
# UVM_INFO eth_mon.sv(823) @ 66172: uvm_test_top.env_h.agnt_mac[1].mon_h [MON_LEN_CHECK] ether_type(claimed)=151  actual_payload=151
# UVM_INFO eth_mon.sv(903) @ 66172: uvm_test_top.env_h.agnt_mac[1].mon_h [RX MON UNPACKING] 
# 	 DA          = 005141312111
# 	 SA          = 005040302010
# 	 ether_type  = 0x151
# 	 payload     = 337 bytes
# 	 CRC (frame) = 0x5041d1b9
# 	 residue     = 0xc704dd7b
# 	 CRC OK      = 1
# 	 frame size  = 163
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000
# UVM_INFO eth_mon.sv(624) @ 66172: uvm_test_top.env_h.agnt_mac[1].mon_h [RX_CLASSIFY] DA=005141312111 pause=0 multicast_bit=0
# UVM_INFO eth_scb.sv(556) @ 66172: uvm_test_top.env_h.scb_h [SCB_TRANS_NUM] 
# TX_TRANSACTION_NO = 9
# RX_TRANSACTION_NO = 9
# UVM_INFO eth_scb.sv(564) @ 66172: uvm_test_top.env_h.scb_h [SCB_COMPARE] 
# ==============================================================================
# EXPECTED (TX)      :                    | ACTUAL (RX)        :                   
# ==============================================================================
# TX_AGENT           : 0                  | RX_AGENT           : 1                 
# DA                 : 005141312111       | DA                 : 005141312111
# SA                 : 005040302010       | SA                 : 005040302010
# ETHER_TYPE         : 0151             | ETHER_TYPE         : 0151
# PAYLOAD_SIZE       : 151                | PAYLOAD_SIZE       : 151               
# CRC                : 5041d1b9           | CRC                : 5041d1b9
# ERR_B              : 0                  | ERR_B              : 0                 
# ==============================================================================
# UVM_INFO eth_scb.sv(622) @ 66172: uvm_test_top.env_h.scb_h [SCB_RX_COUNT] RX packet count received in SB = 9
# Moding =  1
# UVM_INFO eth_mon.sv(823) @ 74276: uvm_test_top.env_h.agnt_mac[1].mon_h [MON_LEN_CHECK] ether_type(claimed)=554  actual_payload=554
# UVM_INFO eth_mon.sv(883) @ 74276: uvm_test_top.env_h.agnt_mac[1].mon_h [TX MON UNPACKING] 
# 	preamble=85 85 85 85 85 85 85 
# 	 sfd= d5 
# 	 DA = 005040302010
# 	 SA          = 005141312111
# 	 ether_type = 0x554
# 	 payload = 1364 bytes
# 	 CRC (frame) = 0xab0050c7
# 	 CRC (calc) = 0xab0050c7
# 	 CRC match = 1
# 	 frame size  = 56e
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000 pause_time=0
# UVM_INFO eth_scb.sv(83) @ 74276: uvm_test_top.env_h.scb_h [SCB_TX] Stored TX Packet : TX_AGENT[1] --> RX_AGENT[0] | TX_NO=9 | DA=005040302010 | SA=005141312111
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 74356 ns  Iteration: 1  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 51
# UVM_INFO eth_sequence.sv(59) @ 74356: uvm_test_top.env_h.agnt_mac[0].seqr_h@@seq1 [gmii_eth_normal_frame_seq] gmii_eth_normal_frame_seq: Inside Body
# UVM_INFO eth_sequence.sv(59) @ 74356: uvm_test_top.env_h.agnt_mac[1].seqr_h@@seq2 [gmii_eth_normal_frame_seq] gmii_eth_normal_frame_seq: Inside Body
# *****************************ETH_DRIVER***********************************
# UVM_INFO eth_drv.sv(413) @ 74356: uvm_test_top.env_h.agnt_mac[0].drv_h [DRIVER PACKING] 
# 	 preamble = '{85, 85, 85, 85, 85, 85, 85}
# 	 sfd = 0xd5
# 	 DA = 005141312111
# 	 SA = 005040302010
# 	 ether_type = 0x54a
# 	 payload = 0000054a bytes
# 	 crc = 0x67609fd3
# 	 Total frame size = 1380, Frame size from DA = 1372
# 	 Payload size = 1354
# 
# 	 VLAN_EN = 0
# 	 VLAN_TPID = 0000
# 	 PCP = 0, DEI = 0, VID = 000
# UVM_INFO eth_drv.sv(420) @ 74356: uvm_test_top.env_h.agnt_mac[0].drv_h [DRIVING DATA] Frame size = 1380, CRC = 67609fd3
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 74356 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 74356 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 74356 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 74356 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 213
# UVM_INFO eth_drv.sv(213) @ 74356: uvm_test_top.env_h.agnt_mac[0].drv_h [DRV_DEBUG] mac_id=0 PCP=0 flag=0 value=0
# *****************************ETH_DRIVER***********************************
# UVM_INFO eth_drv.sv(413) @ 74356: uvm_test_top.env_h.agnt_mac[1].drv_h [DRIVER PACKING] 
# 	 preamble = '{85, 85, 85, 85, 85, 85, 85}
# 	 sfd = 0xd5
# 	 DA = 005040302010
# 	 SA = 005141312111
# 	 ether_type = 0x309
# 	 payload = 00000309 bytes
# 	 crc = 0x04de7b46
# 	 Total frame size = 803, Frame size from DA = 795
# 	 Payload size = 777
# 
# 	 VLAN_EN = 0
# 	 VLAN_TPID = 0000
# 	 PCP = 0, DEI = 0, VID = 000
# UVM_INFO eth_drv.sv(420) @ 74356: uvm_test_top.env_h.agnt_mac[1].drv_h [DRIVING DATA] Frame size = 803, CRC = 04de7b46
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 74356 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 74356 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 74356 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 74356 ns  Iteration: 22  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 213
# UVM_INFO eth_drv.sv(213) @ 74356: uvm_test_top.env_h.agnt_mac[1].drv_h [DRV_DEBUG] mac_id=1 PCP=0 flag=0 value=0
# UVM_INFO eth_mon.sv(823) @ 74388: uvm_test_top.env_h.agnt_mac[0].mon_h [MON_LEN_CHECK] ether_type(claimed)=554  actual_payload=554
# UVM_INFO eth_mon.sv(903) @ 74388: uvm_test_top.env_h.agnt_mac[0].mon_h [RX MON UNPACKING] 
# 	 DA          = 005040302010
# 	 SA          = 005141312111
# 	 ether_type  = 0x554
# 	 payload     = 1364 bytes
# 	 CRC (frame) = 0xab0050c7
# 	 residue     = 0xc704dd7b
# 	 CRC OK      = 1
# 	 frame size  = 566
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000
# UVM_INFO eth_mon.sv(624) @ 74388: uvm_test_top.env_h.agnt_mac[0].mon_h [RX_CLASSIFY] DA=005040302010 pause=0 multicast_bit=0
# UVM_INFO eth_scb.sv(556) @ 74388: uvm_test_top.env_h.scb_h [SCB_TRANS_NUM] 
# TX_TRANSACTION_NO = 9
# RX_TRANSACTION_NO = 9
# UVM_INFO eth_scb.sv(564) @ 74388: uvm_test_top.env_h.scb_h [SCB_COMPARE] 
# ==============================================================================
# EXPECTED (TX)      :                    | ACTUAL (RX)        :                   
# ==============================================================================
# TX_AGENT           : 1                  | RX_AGENT           : 0                 
# DA                 : 005040302010       | DA                 : 005040302010
# SA                 : 005141312111       | SA                 : 005141312111
# ETHER_TYPE         : 0554             | ETHER_TYPE         : 0554
# PAYLOAD_SIZE       : 554                | PAYLOAD_SIZE       : 554               
# CRC                : ab0050c7           | CRC                : ab0050c7
# ERR_B              : 0                  | ERR_B              : 0                 
# ==============================================================================
# UVM_INFO eth_scb.sv(622) @ 74388: uvm_test_top.env_h.scb_h [SCB_RX_COUNT] RX packet count received in SB = 9
# Moding =  1
# UVM_INFO eth_mon.sv(823) @ 80796: uvm_test_top.env_h.agnt_mac[1].mon_h [MON_LEN_CHECK] ether_type(claimed)=309  actual_payload=309
# UVM_INFO eth_mon.sv(883) @ 80796: uvm_test_top.env_h.agnt_mac[1].mon_h [TX MON UNPACKING] 
# 	preamble=85 85 85 85 85 85 85 
# 	 sfd= d5 
# 	 DA = 005040302010
# 	 SA          = 005141312111
# 	 ether_type = 0x309
# 	 payload = 777 bytes
# 	 CRC (frame) = 0x04de7b46
# 	 CRC (calc) = 0x04de7b46
# 	 CRC match = 1
# 	 frame size  = 323
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000 pause_time=0
# UVM_INFO eth_scb.sv(83) @ 80796: uvm_test_top.env_h.scb_h [SCB_TX] Stored TX Packet : TX_AGENT[1] --> RX_AGENT[0] | TX_NO=10 | DA=005040302010 | SA=005141312111
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 80876 ns  Iteration: 1  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f627667 File: eth_drv.sv Line: 51
# UVM_INFO eth_mon.sv(823) @ 80908: uvm_test_top.env_h.agnt_mac[0].mon_h [MON_LEN_CHECK] ether_type(claimed)=309  actual_payload=309
# UVM_INFO eth_mon.sv(903) @ 80908: uvm_test_top.env_h.agnt_mac[0].mon_h [RX MON UNPACKING] 
# 	 DA          = 005040302010
# 	 SA          = 005141312111
# 	 ether_type  = 0x309
# 	 payload     = 777 bytes
# 	 CRC (frame) = 0x04de7b46
# 	 residue     = 0xc704dd7b
# 	 CRC OK      = 1
# 	 frame size  = 31b
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000
# UVM_INFO eth_mon.sv(624) @ 80908: uvm_test_top.env_h.agnt_mac[0].mon_h [RX_CLASSIFY] DA=005040302010 pause=0 multicast_bit=0
# UVM_INFO eth_scb.sv(556) @ 80908: uvm_test_top.env_h.scb_h [SCB_TRANS_NUM] 
# TX_TRANSACTION_NO = 10
# RX_TRANSACTION_NO = 10
# UVM_INFO eth_scb.sv(564) @ 80908: uvm_test_top.env_h.scb_h [SCB_COMPARE] 
# ==============================================================================
# EXPECTED (TX)      :                    | ACTUAL (RX)        :                   
# ==============================================================================
# TX_AGENT           : 1                  | RX_AGENT           : 0                 
# DA                 : 005040302010       | DA                 : 005040302010
# SA                 : 005141312111       | SA                 : 005141312111
# ETHER_TYPE         : 0309             | ETHER_TYPE         : 0309
# PAYLOAD_SIZE       : 309                | PAYLOAD_SIZE       : 309               
# CRC                : 04de7b46           | CRC                : 04de7b46
# ERR_B              : 0                  | ERR_B              : 0                 
# ==============================================================================
# UVM_INFO eth_scb.sv(622) @ 80908: uvm_test_top.env_h.scb_h [SCB_RX_COUNT] RX packet count received in SB = 10
# Moding =  1
# UVM_INFO eth_mon.sv(823) @ 85412: uvm_test_top.env_h.agnt_mac[0].mon_h [MON_LEN_CHECK] ether_type(claimed)=54a  actual_payload=54a
# UVM_INFO eth_mon.sv(883) @ 85412: uvm_test_top.env_h.agnt_mac[0].mon_h [TX MON UNPACKING] 
# 	preamble=85 85 85 85 85 85 85 
# 	 sfd= d5 
# 	 DA = 005141312111
# 	 SA          = 005040302010
# 	 ether_type = 0x54a
# 	 payload = 1354 bytes
# 	 CRC (frame) = 0x67609fd3
# 	 CRC (calc) = 0x67609fd3
# 	 CRC match = 1
# 	 frame size  = 564
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000 pause_time=0
# UVM_INFO eth_scb.sv(83) @ 85412: uvm_test_top.env_h.scb_h [SCB_TX] Stored TX Packet : TX_AGENT[0] --> RX_AGENT[1] | TX_NO=10 | DA=005141312111 | SA=005040302010
# ** Warning: (vsim-3829) Non-existent associative array entry. Returning default value.
#    Time: 85492 ns  Iteration: 1  Process: /uvm_pkg::uvm_task_phase::execute/#FORK#137(#ublk#215181159#137)_7ff4f62789f File: eth_drv.sv Line: 51
# UVM_INFO eth_mon.sv(823) @ 85524: uvm_test_top.env_h.agnt_mac[1].mon_h [MON_LEN_CHECK] ether_type(claimed)=54a  actual_payload=54a
# UVM_INFO eth_mon.sv(903) @ 85524: uvm_test_top.env_h.agnt_mac[1].mon_h [RX MON UNPACKING] 
# 	 DA          = 005141312111
# 	 SA          = 005040302010
# 	 ether_type  = 0x54a
# 	 payload     = 1354 bytes
# 	 CRC (frame) = 0x67609fd3
# 	 residue     = 0xc704dd7b
# 	 CRC OK      = 1
# 	 frame size  = 55c
# 	 VLAN_EN     = 0
# 	 TPID=0000 PCP=0 DEI=0 VID=000
# 	 pause_en=0 pause_opc=0000
# UVM_INFO eth_mon.sv(624) @ 85524: uvm_test_top.env_h.agnt_mac[1].mon_h [RX_CLASSIFY] DA=005141312111 pause=0 multicast_bit=0
# UVM_INFO eth_scb.sv(556) @ 85524: uvm_test_top.env_h.scb_h [SCB_TRANS_NUM] 
# TX_TRANSACTION_NO = 10
# RX_TRANSACTION_NO = 10
# UVM_INFO eth_scb.sv(564) @ 85524: uvm_test_top.env_h.scb_h [SCB_COMPARE] 
# ==============================================================================
# EXPECTED (TX)      :                    | ACTUAL (RX)        :                   
# ==============================================================================
# TX_AGENT           : 0                  | RX_AGENT           : 1                 
# DA                 : 005141312111       | DA                 : 005141312111
# SA                 : 005040302010       | SA                 : 005040302010
# ETHER_TYPE         : 054a             | ETHER_TYPE         : 054a
# PAYLOAD_SIZE       : 54a                | PAYLOAD_SIZE       : 54a               
# CRC                : 67609fd3           | CRC                : 67609fd3
# ERR_B              : 0                  | ERR_B              : 0                 
# ==============================================================================
# UVM_INFO eth_scb.sv(622) @ 85524: uvm_test_top.env_h.scb_h [SCB_RX_COUNT] RX packet count received in SB = 10
# UVM_INFO verilog_src/uvm-1.1d/src/base/uvm_objection.svh(1267) @ 85592: reporter [TEST_DONE] 'run' phase is ready to proceed to the 'extract' phase
# 
# --- UVM Report Summary ---
# 
# ** Report counts by severity
# UVM_INFO :  265
# UVM_WARNING :    0
# UVM_ERROR :    0
# UVM_FATAL :    0
# ** Report counts by id
# [DRIVER PACKING]    20
# [DRIVING DATA]    20
# [DRV_DEBUG]    20
# [MESSAGE]     2
# [MON_LEN_CHECK]    40
# [RNTST]     1
# [RX MON UNPACKING]    20
# [RX_CLASSIFY]    20
# [SCB_COMPARE]    20
# [SCB_RX_COUNT]    20
# [SCB_TRANS_NUM]    20
# [SCB_TX]    20
# [TEST_DONE]     1
# [TX MON UNPACKING]    20
# [UVMTOP]     1
# [gmii_eth_normal_frame_seq]    20
# ** Note: $finish    : C:/questasim64_2025.2_1/win64/../verilog_src/uvm-1.1d/src/base/uvm_root.svh(430)
#    Time: 85592 ns  Iteration: 54  Instance: /eth_top
# qwavedb_dumpvars : Simulation ending at [0 85592] 0
# 
# 
# End time: 14:40:00 on May 21,2026, Elapsed time: 0:00:32
# Errors: 0, Warnings: 112
