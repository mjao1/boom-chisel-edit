// Generated by CIRCT unknown git version
module TLAsyncCrossingSink_a9d32s1k1z2u(	// @[generators/rocket-chip/src/main/scala/tilelink/AsyncCrossing.scala:59:9]
  input         clock,	// @[generators/rocket-chip/src/main/scala/tilelink/AsyncCrossing.scala:59:9]
  input         reset,	// @[generators/rocket-chip/src/main/scala/tilelink/AsyncCrossing.scala:59:9]
  input  [2:0]  auto_in_a_mem_0_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input  [8:0]  auto_in_a_mem_0_address,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input  [31:0] auto_in_a_mem_0_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output        auto_in_a_ridx,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input         auto_in_a_widx,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output        auto_in_a_safe_ridx_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input         auto_in_a_safe_widx_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input         auto_in_a_safe_source_reset_n,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output        auto_in_a_safe_sink_reset_n,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output [2:0]  auto_in_d_mem_0_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output [1:0]  auto_in_d_mem_0_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output        auto_in_d_mem_0_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output [31:0] auto_in_d_mem_0_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input         auto_in_d_ridx,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output        auto_in_d_widx,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input         auto_in_d_safe_ridx_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output        auto_in_d_safe_widx_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output        auto_in_d_safe_source_reset_n,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input         auto_in_d_safe_sink_reset_n,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input         auto_out_a_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output        auto_out_a_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output [2:0]  auto_out_a_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output [2:0]  auto_out_a_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output [1:0]  auto_out_a_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output        auto_out_a_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output [8:0]  auto_out_a_bits_address,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output [3:0]  auto_out_a_bits_mask,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output [31:0] auto_out_a_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output        auto_out_a_bits_corrupt,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output        auto_out_d_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input         auto_out_d_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input  [2:0]  auto_out_d_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input  [1:0]  auto_out_d_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input         auto_out_d_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input  [31:0] auto_out_d_bits_data	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
);

  AsyncQueueSink_TLBundleA_a9d32s1k1z2u nodeOut_a_sink (	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:211:22]
    .clock                        (clock),
    .reset                        (reset),
    .io_deq_ready                 (auto_out_a_ready),
    .io_deq_valid                 (auto_out_a_valid),
    .io_deq_bits_opcode           (auto_out_a_bits_opcode),
    .io_deq_bits_param            (auto_out_a_bits_param),
    .io_deq_bits_size             (auto_out_a_bits_size),
    .io_deq_bits_source           (auto_out_a_bits_source),
    .io_deq_bits_address          (auto_out_a_bits_address),
    .io_deq_bits_mask             (auto_out_a_bits_mask),
    .io_deq_bits_data             (auto_out_a_bits_data),
    .io_deq_bits_corrupt          (auto_out_a_bits_corrupt),
    .io_async_mem_0_opcode        (auto_in_a_mem_0_opcode),
    .io_async_mem_0_address       (auto_in_a_mem_0_address),
    .io_async_mem_0_data          (auto_in_a_mem_0_data),
    .io_async_ridx                (auto_in_a_ridx),
    .io_async_widx                (auto_in_a_widx),
    .io_async_safe_ridx_valid     (auto_in_a_safe_ridx_valid),
    .io_async_safe_widx_valid     (auto_in_a_safe_widx_valid),
    .io_async_safe_source_reset_n (auto_in_a_safe_source_reset_n),
    .io_async_safe_sink_reset_n   (auto_in_a_safe_sink_reset_n)
  );	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:211:22]
  AsyncQueueSource_TLBundleD_a9d32s1k1z2u nodeIn_d_source (	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:220:24]
    .clock                        (clock),
    .reset                        (reset),
    .io_enq_ready                 (auto_out_d_ready),
    .io_enq_valid                 (auto_out_d_valid),
    .io_enq_bits_opcode           (auto_out_d_bits_opcode),
    .io_enq_bits_size             (auto_out_d_bits_size),
    .io_enq_bits_source           (auto_out_d_bits_source),
    .io_enq_bits_data             (auto_out_d_bits_data),
    .io_async_mem_0_opcode        (auto_in_d_mem_0_opcode),
    .io_async_mem_0_size          (auto_in_d_mem_0_size),
    .io_async_mem_0_source        (auto_in_d_mem_0_source),
    .io_async_mem_0_data          (auto_in_d_mem_0_data),
    .io_async_ridx                (auto_in_d_ridx),
    .io_async_widx                (auto_in_d_widx),
    .io_async_safe_ridx_valid     (auto_in_d_safe_ridx_valid),
    .io_async_safe_widx_valid     (auto_in_d_safe_widx_valid),
    .io_async_safe_source_reset_n (auto_in_d_safe_source_reset_n),
    .io_async_safe_sink_reset_n   (auto_in_d_safe_sink_reset_n)
  );	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:220:24]
endmodule

