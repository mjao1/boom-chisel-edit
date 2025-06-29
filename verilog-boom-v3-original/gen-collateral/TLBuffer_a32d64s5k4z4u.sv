// Generated by CIRCT unknown git version
module TLBuffer_a32d64s5k4z4u(	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:40:9]
  input         clock,	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:40:9]
  input         reset,	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:40:9]
  output        auto_in_a_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input         auto_in_a_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input  [2:0]  auto_in_a_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input  [2:0]  auto_in_a_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input  [3:0]  auto_in_a_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input  [4:0]  auto_in_a_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input  [31:0] auto_in_a_bits_address,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input  [7:0]  auto_in_a_bits_mask,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input  [63:0] auto_in_a_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input         auto_in_a_bits_corrupt,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input         auto_in_d_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output        auto_in_d_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output [2:0]  auto_in_d_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output [1:0]  auto_in_d_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output [3:0]  auto_in_d_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output [4:0]  auto_in_d_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output [3:0]  auto_in_d_bits_sink,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output        auto_in_d_bits_denied,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output [63:0] auto_in_d_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output        auto_in_d_bits_corrupt,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input         auto_out_a_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output        auto_out_a_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output [2:0]  auto_out_a_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output [2:0]  auto_out_a_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output [3:0]  auto_out_a_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output [4:0]  auto_out_a_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output [31:0] auto_out_a_bits_address,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output [7:0]  auto_out_a_bits_mask,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output [63:0] auto_out_a_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output        auto_out_a_bits_corrupt,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output        auto_out_d_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input         auto_out_d_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input  [2:0]  auto_out_d_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input  [1:0]  auto_out_d_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input  [3:0]  auto_out_d_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input  [4:0]  auto_out_d_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input  [3:0]  auto_out_d_bits_sink,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input         auto_out_d_bits_denied,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input  [63:0] auto_out_d_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input         auto_out_d_bits_corrupt	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
);

  wire       _nodeIn_d_q_io_deq_valid;	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
  wire [2:0] _nodeIn_d_q_io_deq_bits_opcode;	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
  wire [1:0] _nodeIn_d_q_io_deq_bits_param;	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
  wire [3:0] _nodeIn_d_q_io_deq_bits_size;	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
  wire [4:0] _nodeIn_d_q_io_deq_bits_source;	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
  wire [3:0] _nodeIn_d_q_io_deq_bits_sink;	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
  wire       _nodeIn_d_q_io_deq_bits_denied;	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
  wire       _nodeIn_d_q_io_deq_bits_corrupt;	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
  wire       _nodeOut_a_q_io_enq_ready;	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
  TLMonitor_13 monitor (	// @[generators/rocket-chip/src/main/scala/tilelink/Nodes.scala:27:25]
    .clock                (clock),
    .reset                (reset),
    .io_in_a_ready        (_nodeOut_a_q_io_enq_ready),	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
    .io_in_a_valid        (auto_in_a_valid),
    .io_in_a_bits_opcode  (auto_in_a_bits_opcode),
    .io_in_a_bits_param   (auto_in_a_bits_param),
    .io_in_a_bits_size    (auto_in_a_bits_size),
    .io_in_a_bits_source  (auto_in_a_bits_source),
    .io_in_a_bits_address (auto_in_a_bits_address),
    .io_in_a_bits_mask    (auto_in_a_bits_mask),
    .io_in_a_bits_corrupt (auto_in_a_bits_corrupt),
    .io_in_d_ready        (auto_in_d_ready),
    .io_in_d_valid        (_nodeIn_d_q_io_deq_valid),	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
    .io_in_d_bits_opcode  (_nodeIn_d_q_io_deq_bits_opcode),	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
    .io_in_d_bits_param   (_nodeIn_d_q_io_deq_bits_param),	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
    .io_in_d_bits_size    (_nodeIn_d_q_io_deq_bits_size),	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
    .io_in_d_bits_source  (_nodeIn_d_q_io_deq_bits_source),	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
    .io_in_d_bits_sink    (_nodeIn_d_q_io_deq_bits_sink),	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
    .io_in_d_bits_denied  (_nodeIn_d_q_io_deq_bits_denied),	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
    .io_in_d_bits_corrupt (_nodeIn_d_q_io_deq_bits_corrupt)	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
  );	// @[generators/rocket-chip/src/main/scala/tilelink/Nodes.scala:27:25]
  Queue2_TLBundleA_a32d64s5k4z4u nodeOut_a_q (	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
    .clock               (clock),
    .reset               (reset),
    .io_enq_ready        (_nodeOut_a_q_io_enq_ready),
    .io_enq_valid        (auto_in_a_valid),
    .io_enq_bits_opcode  (auto_in_a_bits_opcode),
    .io_enq_bits_param   (auto_in_a_bits_param),
    .io_enq_bits_size    (auto_in_a_bits_size),
    .io_enq_bits_source  (auto_in_a_bits_source),
    .io_enq_bits_address (auto_in_a_bits_address),
    .io_enq_bits_mask    (auto_in_a_bits_mask),
    .io_enq_bits_data    (auto_in_a_bits_data),
    .io_enq_bits_corrupt (auto_in_a_bits_corrupt),
    .io_deq_ready        (auto_out_a_ready),
    .io_deq_valid        (auto_out_a_valid),
    .io_deq_bits_opcode  (auto_out_a_bits_opcode),
    .io_deq_bits_param   (auto_out_a_bits_param),
    .io_deq_bits_size    (auto_out_a_bits_size),
    .io_deq_bits_source  (auto_out_a_bits_source),
    .io_deq_bits_address (auto_out_a_bits_address),
    .io_deq_bits_mask    (auto_out_a_bits_mask),
    .io_deq_bits_data    (auto_out_a_bits_data),
    .io_deq_bits_corrupt (auto_out_a_bits_corrupt)
  );	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
  Queue2_TLBundleD_a32d64s5k4z4u nodeIn_d_q (	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
    .clock               (clock),
    .reset               (reset),
    .io_enq_ready        (auto_out_d_ready),
    .io_enq_valid        (auto_out_d_valid),
    .io_enq_bits_opcode  (auto_out_d_bits_opcode),
    .io_enq_bits_param   (auto_out_d_bits_param),
    .io_enq_bits_size    (auto_out_d_bits_size),
    .io_enq_bits_source  (auto_out_d_bits_source),
    .io_enq_bits_sink    (auto_out_d_bits_sink),
    .io_enq_bits_denied  (auto_out_d_bits_denied),
    .io_enq_bits_data    (auto_out_d_bits_data),
    .io_enq_bits_corrupt (auto_out_d_bits_corrupt),
    .io_deq_ready        (auto_in_d_ready),
    .io_deq_valid        (_nodeIn_d_q_io_deq_valid),
    .io_deq_bits_opcode  (_nodeIn_d_q_io_deq_bits_opcode),
    .io_deq_bits_param   (_nodeIn_d_q_io_deq_bits_param),
    .io_deq_bits_size    (_nodeIn_d_q_io_deq_bits_size),
    .io_deq_bits_source  (_nodeIn_d_q_io_deq_bits_source),
    .io_deq_bits_sink    (_nodeIn_d_q_io_deq_bits_sink),
    .io_deq_bits_denied  (_nodeIn_d_q_io_deq_bits_denied),
    .io_deq_bits_data    (auto_in_d_bits_data),
    .io_deq_bits_corrupt (_nodeIn_d_q_io_deq_bits_corrupt)
  );	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
  assign auto_in_a_ready = _nodeOut_a_q_io_enq_ready;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:40:9, src/main/scala/chisel3/util/Decoupled.scala:362:21]
  assign auto_in_d_valid = _nodeIn_d_q_io_deq_valid;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:40:9, src/main/scala/chisel3/util/Decoupled.scala:362:21]
  assign auto_in_d_bits_opcode = _nodeIn_d_q_io_deq_bits_opcode;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:40:9, src/main/scala/chisel3/util/Decoupled.scala:362:21]
  assign auto_in_d_bits_param = _nodeIn_d_q_io_deq_bits_param;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:40:9, src/main/scala/chisel3/util/Decoupled.scala:362:21]
  assign auto_in_d_bits_size = _nodeIn_d_q_io_deq_bits_size;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:40:9, src/main/scala/chisel3/util/Decoupled.scala:362:21]
  assign auto_in_d_bits_source = _nodeIn_d_q_io_deq_bits_source;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:40:9, src/main/scala/chisel3/util/Decoupled.scala:362:21]
  assign auto_in_d_bits_sink = _nodeIn_d_q_io_deq_bits_sink;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:40:9, src/main/scala/chisel3/util/Decoupled.scala:362:21]
  assign auto_in_d_bits_denied = _nodeIn_d_q_io_deq_bits_denied;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:40:9, src/main/scala/chisel3/util/Decoupled.scala:362:21]
  assign auto_in_d_bits_corrupt = _nodeIn_d_q_io_deq_bits_corrupt;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:40:9, src/main/scala/chisel3/util/Decoupled.scala:362:21]
endmodule

