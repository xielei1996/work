`timescale 1ns / 1ps
module tb;
  reg rst_n;
  reg req_in,ack_in;
  wire req_out,ack_out;
  reg[2:0] data_in;
  wire[2:0] data_out;
  initial
    begin
	  rst_n=0;
	  #6 
	  rst_n=1;
	  req_in=1;
	  ack_in=0;
	  data_in=3'b001;
	  #2
	  req_in=1;
	  ack_in=0;
	  #1
	  req_in=ack_out?0:1;
	  #1
	  ack_in=req_out?0:1;
	  
	  #6 
	  rst_n=1;
	  req_in=1;
	  ack_in=0;
	  data_in=3'b010;
	  #2
	  req_in=1;
	  ack_in=0;
	  #1
	  req_in=ack_out?0:1;
	  #1
	  ack_in=req_out?0:1;
	  
	  #6 
	  rst_n=1;
	  req_in=1;
	  ack_in=0;
	  data_in=3'b011;
	  #2
	  req_in=1;
	  ack_in=0;
	  #1
	  req_in=ack_out?0:1;
	  #1
	  ack_in=req_out?0:1;
	  
	  #6 
	  rst_n=1;
	  req_in=1;
	  ack_in=0;
	  data_in=3'b100;
	  #2
	  req_in=1;
	  ack_in=0;
	  #1
	  req_in=ack_out?0:1;
	  #1
	  ack_in=req_out?0:1;
	   #6 
	  rst_n=1;
	  req_in=1;
	  ack_in=0;
	  data_in=3'b101;
	  #2
	  req_in=1;
	  ack_in=0;
      #1
	  req_in=ack_out?0:1;
	  #1
	  ack_in=req_out?0:1;
     end
stage3 dut(
.rst_n(rst_n),
.data_in(data_in),
.data_out(data_out),
.req_in(req_in),
.ack_in(ack_in),
.req_out(req_out),
.ack_out(ack_out)
);
endmodule
