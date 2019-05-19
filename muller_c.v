module muller_C(a,b,z,rst_n);
  input  a,b;
  input rst_n;
  output reg z;
  always@(*)
  if(~rst_n)
  z=0;
else
  assign z=(a^b)? z:a;
endmodule