// Generated by CIRCT unknown git version
module PhitToFlit_p32_f32(	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:103:7]
  output        io_in_ready,	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:105:14]
  input         io_in_valid,	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:105:14]
  input  [31:0] io_in_bits_phit,	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:105:14]
  input         io_out_ready,	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:105:14]
  output        io_out_valid,	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:105:14]
  output [31:0] io_out_bits_flit	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:105:14]
);

  assign io_in_ready = io_out_ready;	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:103:7]
  assign io_out_valid = io_in_valid;	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:103:7]
  assign io_out_bits_flit = io_in_bits_phit;	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:103:7]
endmodule

