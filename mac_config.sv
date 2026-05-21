function automatic void mac_unicast(ref bit [47:0] mac_t[`NO_OF_AGENTS]);
    for(int i = 0; i < `NO_OF_AGENTS; i++) begin
    	mac_t[i] = {8'h00,8'(8'h50 + i),8'(8'h40 + i),8'(8'h30 + i),8'(8'h20 + i),8'(8'h10 + i)};
    end
endfunction
