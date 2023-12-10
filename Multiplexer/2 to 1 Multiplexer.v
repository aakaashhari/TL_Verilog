\m4_TLV_version 1d: tl-x.org
\SV
   m4_makerchip_module
\TLV
   
   //Create a one-bit wide, 2-to-1 multiplexer.
   //When sel=0, choose a. When sel=1, choose b.
   
   $out = ($sel)? $b:$a;
   
   
\SV
endmodule
