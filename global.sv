class globals;

  static virtual eth_ui_interface v_uif[bit[47:0]];

  // normal pause
  static int pause_value[bit[47:0]];
  static bit pause_flag[bit[47:0]];
  static bit pause_update[2]; //n0_of_agents=2;

  // PFC
  static int pfc_value[bit[47:0]][int];
  static bit pfc_flag[bit[47:0]][int];

endclass
