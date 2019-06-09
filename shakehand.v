`timescale 1ns / 1ps
module shakehand(rst_n,req_in,req_out,ack_in,ack_out);
  input rst_n;
  input req_in;
  input  ack_out;
  output ack_in;
  output req_out;
  reg req_out,ack_in;
  always@*
  if(~rst_n)
    begin
	req_out=1'b0;
	ack_in=1'b0;
	end
    else begin
	#1 req_out=(req_in&(req_out|~ack_out))|(~ack_out&req_out);
	ack_in=req_out;
	end
endmodule
  