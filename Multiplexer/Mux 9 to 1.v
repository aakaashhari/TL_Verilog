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
   
   //Create a 16-bit wide, 9-to-1 multiplexer.
   //sel=0 chooses a, sel=1 chooses b, etc.
   //For the unused cases (sel=9 to 15), set all output bits to '1'.
   
   $out[15:0] = ($sel[3:0] == 0) ? $a[15:0] :
                ($sel[3:0] == 1) ? $b[15:0] :
                ($sel[3:0] == 2) ? $c[15:0] :
                ($sel[3:0] == 3) ? $d[15:0] :
                ($sel[3:0] == 4) ? $e[15:0] :
                ($sel[3:0] == 5) ? $f[15:0] :
                ($sel[3:0] == 6) ? $g[15:0] :
                ($sel[3:0] == 7) ? $h[15:0] :
                ($sel[3:0] == 8) ? $i[15:0] :
                                   65535;
   
   
\SV
   endmodule
