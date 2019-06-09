module latch(en,data_in,data_out,rst_n);
  input en;
  input rst_n;
  input[2:0] data_in;
  output reg[2:0] data_out;
always@(*)
begin
  if(~rst_n)
    data_out=3'b000;
  else
   data_out=en?data_in:data_out;
	end
endmodule
  
  
 