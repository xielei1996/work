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
  input req_in;
  input ack_out;
  output req_out;
  output ack_in;

  shakehand s(
   .req_in(req_in),
  .req_out(req_out),
  .rst_n(rst_n),
  .ack_in(ack_in),
  .ack_out(ack_out));
    latch l(
   .rst_n(rst_n),
   .en(req_out),
   .data_in(data_in),
   .data_out(data_out));
   endmodule