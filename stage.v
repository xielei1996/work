`timescale 1ns / 1ps
module stage(
  rst_n,
  data_in,
  data_out,
  req_in,
  req_out,
  ack_in,
  ack_out);
  input rst_n;
  input[2:0] data_in;
  output wire[2:0] data_out;
  input ack_in;
  input req_in;
  output ack_out;
  output req_out;
  wire z;
 muller_C c(
       .a(req_in),
        .b(~ack_in),
        .z(z),
		.rst_n(rst_n)
    );
   
    assign #3 req_out =z;
    assign ack_out = z;

 latch l(
   .rst_n(rst_n),
   .en(z),
   .data_in(data_in),
   .data_out(data_out));
 endmodule
   
 