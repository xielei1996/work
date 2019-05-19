module stage3(
  rst_n,
  data_in,
  data_out,
  req_in,
  req_out,
  ack_in,
  ack_out);
  input rst_n;
  input[2:0] data_in;
  output [2:0] data_out;
  input ack_in;
  input req_in;
  output ack_out;
  output req_out;
  wire req1,req2,ack1,ack2;
  wire[2:0] data1,data2;
  stage one(
  .rst_n(rst_n),
  .req_in(req_in),
  .ack_in(ack2),
  .req_out(req1),
  .ack_out(ack_out),
  .data_in(data_in),
  .data_out(data1)
  );
  stage two(
  .rst_n(rst_n),
  .req_in(req1),
  .ack_in(ack1),
  .req_out(req2),
  .ack_out(ack2),
  .data_in(data1),
  .data_out(data2));
  stage three(
  .rst_n(rst_n),
  .req_in(req2),
  .ack_in(ack_in),
  .req_out(req_out),
  .ack_out(ack1),
  .data_in(data2),
  .data_out(data_out));
 endmodule