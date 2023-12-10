\m5_TLV_version 1d: tl-x.org
\m5
   
   // =================================================
   // Welcome!  New to Makerchip? Try the "Learn" menu.
   // =================================================
   
   //use(m5-1.0)   /// uncomment to use M5 macro library.
\SV
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m5_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   
   
   //Create a 4-bit wide, 256-to-1 multiplexer.
   //The 256 4-bit inputs are all packed into a single 1024-bit input 
   //vector. sel=0 should select bits in[3:0], sel=1 selects bits in[7:4],
   //sel=2 selects bits in[11:8], etc.
   $in[1023:0] = $input[1023:0];
   $sel[7:0] = $select[7:0];
   $out[3:0] = $in[$sel* 4 +:4];
   
\SV
   endmodule
