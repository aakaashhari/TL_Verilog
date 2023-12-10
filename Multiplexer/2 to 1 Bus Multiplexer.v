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
   
   //Create a 100-bit wide, 2-to-1 multiplexer. 
   //When sel=0, choose a. When sel=1, choose b.
   $out[99:0] = ($sel) ? $b[99:0] : $a[99:0]; 
\SV
   endmodule
