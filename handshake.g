.inputs req_in ack_out
.outputs req_out ack_in Lt
.graph
req_in+ req_out+
req_out+ Lt+
req_out+ ack_out+
Lt+ ack_in+
ack_out+ req_out-
ack_in+ req_in-
req_in- req_out-
req_out- Lt-
req_out- ack_out-
Lt- ack_in-
ack_out- req_out+
ack_in- req_in+
.marking{<ack_out-,req_out+> <ack_in-,req_in+>}
.end
