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

   //Create a 1-bit wide, 256-to-1 multiplexer.
   //The 256 inputs are all packed into a single 256-bit input vector.
   //sel=0 should select in[0], sel=1 selects bits in[1],
   //sel=2 selects bits in[2], etc.
   
   $in[255:0] = $input[255:0];
   $out = $in[$sel[7:0]];
   
\SV
   endmodule
