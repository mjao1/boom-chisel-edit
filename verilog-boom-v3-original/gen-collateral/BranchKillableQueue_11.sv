// Generated by CIRCT unknown git version

// Include register initializers in init blocks unless synthesis is set
`ifndef RANDOMIZE
  `ifdef RANDOMIZE_REG_INIT
    `define RANDOMIZE
  `endif // RANDOMIZE_REG_INIT
`endif // not def RANDOMIZE
`ifndef SYNTHESIS
  `ifndef ENABLE_INITIAL_REG_
    `define ENABLE_INITIAL_REG_
  `endif // not def ENABLE_INITIAL_REG_
`endif // not def SYNTHESIS


// Include rmemory initializers in init blocks unless synthesis is set
`ifndef RANDOMIZE
  `ifdef RANDOMIZE_MEM_INIT
    `define RANDOMIZE
  `endif // RANDOMIZE_MEM_INIT
`endif // not def RANDOMIZE
`ifndef SYNTHESIS
  `ifndef ENABLE_INITIAL_MEM_
    `define ENABLE_INITIAL_MEM_
  `endif // not def ENABLE_INITIAL_MEM_
`endif // not def SYNTHESIS

// Standard header to adapt well known macros for register randomization.

// RANDOM may be set to an expression that produces a 32-bit random unsigned value.
`ifndef RANDOM
  `define RANDOM $random
`endif // not def RANDOM

// Users can define INIT_RANDOM as general code that gets injected into the
// initializer block for modules with registers.
`ifndef INIT_RANDOM
  `define INIT_RANDOM
`endif // not def INIT_RANDOM

// If using random initialization, you can also define RANDOMIZE_DELAY to
// customize the delay used, otherwise 0.002 is used.
`ifndef RANDOMIZE_DELAY
  `define RANDOMIZE_DELAY 0.002
`endif // not def RANDOMIZE_DELAY

// Define INIT_RANDOM_PROLOG_ for use in our modules below.
`ifndef INIT_RANDOM_PROLOG_
  `ifdef RANDOMIZE
    `ifdef VERILATOR
      `define INIT_RANDOM_PROLOG_ `INIT_RANDOM
    `else  // VERILATOR
      `define INIT_RANDOM_PROLOG_ `INIT_RANDOM #`RANDOMIZE_DELAY begin end
    `endif // VERILATOR
  `else  // RANDOMIZE
    `define INIT_RANDOM_PROLOG_
  `endif // RANDOMIZE
`endif // not def INIT_RANDOM_PROLOG_
module BranchKillableQueue_11(	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7]
  input         clock,	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7]
  input         reset,	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7]
  output        io_enq_ready,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_valid,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [6:0]  io_enq_bits_uop_uopc,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [31:0] io_enq_bits_uop_inst,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [31:0] io_enq_bits_uop_debug_inst,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_is_rvc,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [39:0] io_enq_bits_uop_debug_pc,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [2:0]  io_enq_bits_uop_iq_type,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [9:0]  io_enq_bits_uop_fu_code,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [3:0]  io_enq_bits_uop_ctrl_br_type,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [1:0]  io_enq_bits_uop_ctrl_op1_sel,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [2:0]  io_enq_bits_uop_ctrl_op2_sel,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [2:0]  io_enq_bits_uop_ctrl_imm_sel,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [4:0]  io_enq_bits_uop_ctrl_op_fcn,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_ctrl_fcn_dw,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [2:0]  io_enq_bits_uop_ctrl_csr_cmd,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_ctrl_is_load,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_ctrl_is_sta,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_ctrl_is_std,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [1:0]  io_enq_bits_uop_iw_state,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_iw_p1_poisoned,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_iw_p2_poisoned,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_is_br,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_is_jalr,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_is_jal,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_is_sfb,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [19:0] io_enq_bits_uop_br_mask,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [4:0]  io_enq_bits_uop_br_tag,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [5:0]  io_enq_bits_uop_ftq_idx,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_edge_inst,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [5:0]  io_enq_bits_uop_pc_lob,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_taken,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [19:0] io_enq_bits_uop_imm_packed,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [11:0] io_enq_bits_uop_csr_addr,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [6:0]  io_enq_bits_uop_rob_idx,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [4:0]  io_enq_bits_uop_ldq_idx,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [4:0]  io_enq_bits_uop_stq_idx,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [1:0]  io_enq_bits_uop_rxq_idx,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [6:0]  io_enq_bits_uop_pdst,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [6:0]  io_enq_bits_uop_prs1,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [6:0]  io_enq_bits_uop_prs2,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [6:0]  io_enq_bits_uop_prs3,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [5:0]  io_enq_bits_uop_ppred,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_prs1_busy,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_prs2_busy,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_prs3_busy,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_ppred_busy,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [6:0]  io_enq_bits_uop_stale_pdst,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_exception,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [63:0] io_enq_bits_uop_exc_cause,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_bypassable,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [4:0]  io_enq_bits_uop_mem_cmd,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [1:0]  io_enq_bits_uop_mem_size,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_mem_signed,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_is_fence,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_is_fencei,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_is_amo,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_uses_ldq,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_uses_stq,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_is_sys_pc2epc,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_is_unique,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_flush_on_commit,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_ldst_is_rs1,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [5:0]  io_enq_bits_uop_ldst,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [5:0]  io_enq_bits_uop_lrs1,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [5:0]  io_enq_bits_uop_lrs2,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [5:0]  io_enq_bits_uop_lrs3,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_ldst_val,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [1:0]  io_enq_bits_uop_dst_rtype,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [1:0]  io_enq_bits_uop_lrs1_rtype,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [1:0]  io_enq_bits_uop_lrs2_rtype,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_frs3_en,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_fp_val,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_fp_single,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_xcpt_pf_if,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_xcpt_ae_if,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_xcpt_ma_if,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_bp_debug_if,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_enq_bits_uop_bp_xcpt_if,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [1:0]  io_enq_bits_uop_debug_fsrc,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [1:0]  io_enq_bits_uop_debug_tsrc,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [64:0] io_enq_bits_data,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_deq_ready,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  output        io_deq_valid,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  output [6:0]  io_deq_bits_uop_uopc,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  output [19:0] io_deq_bits_uop_br_mask,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  output [6:0]  io_deq_bits_uop_rob_idx,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  output [4:0]  io_deq_bits_uop_stq_idx,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  output [6:0]  io_deq_bits_uop_pdst,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  output        io_deq_bits_uop_is_amo,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  output        io_deq_bits_uop_uses_stq,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  output [1:0]  io_deq_bits_uop_dst_rtype,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  output        io_deq_bits_uop_fp_val,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  output [64:0] io_deq_bits_data,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  output        io_deq_bits_predicated,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  output        io_deq_bits_fflags_valid,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  output [6:0]  io_deq_bits_fflags_bits_uop_rob_idx,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  output [4:0]  io_deq_bits_fflags_bits_flags,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [19:0] io_brupdate_b1_resolve_mask,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input  [19:0] io_brupdate_b1_mispredict_mask,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  input         io_flush,	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
  output        io_empty	// @[generators/boom/src/main/scala/v3/util/util.scala:453:14]
);

  wire [78:0]      _ram_ext_R0_data;	// @[generators/boom/src/main/scala/v3/util/util.scala:464:20]
  reg              valids_0;	// @[generators/boom/src/main/scala/v3/util/util.scala:465:24]
  reg              valids_1;	// @[generators/boom/src/main/scala/v3/util/util.scala:465:24]
  reg              valids_2;	// @[generators/boom/src/main/scala/v3/util/util.scala:465:24]
  reg  [6:0]       uops_0_uopc;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
  reg  [19:0]      uops_0_br_mask;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
  reg  [6:0]       uops_0_rob_idx;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
  reg  [4:0]       uops_0_stq_idx;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
  reg  [6:0]       uops_0_pdst;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
  reg              uops_0_is_amo;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
  reg              uops_0_uses_stq;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
  reg  [1:0]       uops_0_dst_rtype;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
  reg              uops_0_fp_val;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
  reg  [6:0]       uops_1_uopc;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
  reg  [19:0]      uops_1_br_mask;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
  reg  [6:0]       uops_1_rob_idx;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
  reg  [4:0]       uops_1_stq_idx;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
  reg  [6:0]       uops_1_pdst;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
  reg              uops_1_is_amo;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
  reg              uops_1_uses_stq;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
  reg  [1:0]       uops_1_dst_rtype;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
  reg              uops_1_fp_val;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
  reg  [6:0]       uops_2_uopc;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
  reg  [19:0]      uops_2_br_mask;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
  reg  [6:0]       uops_2_rob_idx;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
  reg  [4:0]       uops_2_stq_idx;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
  reg  [6:0]       uops_2_pdst;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
  reg              uops_2_is_amo;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
  reg              uops_2_uses_stq;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
  reg  [1:0]       uops_2_dst_rtype;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
  reg              uops_2_fp_val;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
  reg  [1:0]       enq_ptr_value;	// @[src/main/scala/chisel3/util/Counter.scala:61:40]
  reg  [1:0]       deq_ptr_value;	// @[src/main/scala/chisel3/util/Counter.scala:61:40]
  reg              maybe_full;	// @[generators/boom/src/main/scala/v3/util/util.scala:470:27]
  wire             ptr_match = enq_ptr_value == deq_ptr_value;	// @[generators/boom/src/main/scala/v3/util/util.scala:472:33, src/main/scala/chisel3/util/Counter.scala:61:40]
  wire             io_empty_0 = ptr_match & ~maybe_full;	// @[generators/boom/src/main/scala/v3/util/util.scala:470:27, :472:33, :473:{25,28}]
  wire             full = ptr_match & maybe_full;	// @[generators/boom/src/main/scala/v3/util/util.scala:470:27, :472:33, :474:24]
  wire [3:0]       _GEN = {{valids_0}, {valids_2}, {valids_1}, {valids_0}};	// @[generators/boom/src/main/scala/v3/util/util.scala:465:24, :476:42]
  wire             _GEN_0 = _GEN[deq_ptr_value];	// @[generators/boom/src/main/scala/v3/util/util.scala:476:42, src/main/scala/chisel3/util/Counter.scala:61:40]
  wire [3:0][6:0]  _GEN_1 = {{uops_0_uopc}, {uops_2_uopc}, {uops_1_uopc}, {uops_0_uopc}};	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20, :508:19]
  wire [3:0][19:0] _GEN_2 = {{uops_0_br_mask}, {uops_2_br_mask}, {uops_1_br_mask}, {uops_0_br_mask}};	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20, :508:19]
  wire [19:0]      out_uop_br_mask = _GEN_2[deq_ptr_value];	// @[generators/boom/src/main/scala/v3/util/util.scala:508:19, src/main/scala/chisel3/util/Counter.scala:61:40]
  wire [3:0][6:0]  _GEN_3 = {{uops_0_rob_idx}, {uops_2_rob_idx}, {uops_1_rob_idx}, {uops_0_rob_idx}};	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20, :508:19]
  wire [3:0][4:0]  _GEN_4 = {{uops_0_stq_idx}, {uops_2_stq_idx}, {uops_1_stq_idx}, {uops_0_stq_idx}};	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20, :508:19]
  wire [3:0][6:0]  _GEN_5 = {{uops_0_pdst}, {uops_2_pdst}, {uops_1_pdst}, {uops_0_pdst}};	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20, :508:19]
  wire [3:0]       _GEN_6 = {{uops_0_is_amo}, {uops_2_is_amo}, {uops_1_is_amo}, {uops_0_is_amo}};	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20, :508:19]
  wire [3:0]       _GEN_7 = {{uops_0_uses_stq}, {uops_2_uses_stq}, {uops_1_uses_stq}, {uops_0_uses_stq}};	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20, :508:19]
  wire [3:0][1:0]  _GEN_8 = {{uops_0_dst_rtype}, {uops_2_dst_rtype}, {uops_1_dst_rtype}, {uops_0_dst_rtype}};	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20, :508:19]
  wire [3:0]       _GEN_9 = {{uops_0_fp_val}, {uops_2_fp_val}, {uops_1_fp_val}, {uops_0_fp_val}};	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20, :508:19]
  wire             do_deq = ~io_empty_0 & (io_deq_ready | ~_GEN_0) & ~io_empty_0;	// @[generators/boom/src/main/scala/v3/util/util.scala:473:25, :476:{24,39,42,66,69}, :510:27, :515:21, :517:19, :520:14]
  wire             do_enq = ~(io_empty_0 & io_deq_ready) & ~full & io_enq_valid;	// @[generators/boom/src/main/scala/v3/util/util.scala:473:25, :474:24, :475:24, :504:19, :515:21, :521:{27,36}, src/main/scala/chisel3/util/Decoupled.scala:51:35]
  wire             _GEN_10 = enq_ptr_value == 2'h0;	// @[generators/boom/src/main/scala/v3/util/util.scala:489:33, src/main/scala/chisel3/util/Counter.scala:61:40]
  wire             _GEN_11 = do_enq & _GEN_10;	// @[generators/boom/src/main/scala/v3/util/util.scala:475:24, :481:16, :487:17, :489:33, :515:21, :521:{27,36}, src/main/scala/chisel3/util/Decoupled.scala:51:35]
  wire             _GEN_12 = enq_ptr_value == 2'h1;	// @[generators/boom/src/main/scala/v3/util/util.scala:489:33, src/main/scala/chisel3/util/Counter.scala:61:40]
  wire             _GEN_13 = do_enq & _GEN_12;	// @[generators/boom/src/main/scala/v3/util/util.scala:475:24, :481:16, :487:17, :489:33, :515:21, :521:{27,36}, src/main/scala/chisel3/util/Decoupled.scala:51:35]
  wire             _GEN_14 = enq_ptr_value == 2'h2;	// @[generators/boom/src/main/scala/v3/util/util.scala:489:33, src/main/scala/chisel3/util/Counter.scala:61:40]
  wire             _GEN_15 = do_enq & _GEN_14;	// @[generators/boom/src/main/scala/v3/util/util.scala:475:24, :481:16, :487:17, :489:33, :515:21, :521:{27,36}, src/main/scala/chisel3/util/Decoupled.scala:51:35]
  wire [19:0]      _uops_br_mask_T_1 = io_enq_bits_uop_br_mask & ~io_brupdate_b1_resolve_mask;	// @[generators/boom/src/main/scala/v3/util/util.scala:85:{25,27}]
  always @(posedge clock) begin	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7]
    if (reset) begin	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7]
      valids_0 <= 1'h0;	// @[generators/boom/src/main/scala/v3/util/util.scala:465:24]
      valids_1 <= 1'h0;	// @[generators/boom/src/main/scala/v3/util/util.scala:465:24]
      valids_2 <= 1'h0;	// @[generators/boom/src/main/scala/v3/util/util.scala:465:24]
      enq_ptr_value <= 2'h0;	// @[src/main/scala/chisel3/util/Counter.scala:61:40]
      deq_ptr_value <= 2'h0;	// @[src/main/scala/chisel3/util/Counter.scala:61:40]
      maybe_full <= 1'h0;	// @[generators/boom/src/main/scala/v3/util/util.scala:470:27]
    end
    else begin	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7]
      valids_0 <= ~(do_deq & deq_ptr_value == 2'h0) & (_GEN_11 | valids_0 & (io_brupdate_b1_mispredict_mask & uops_0_br_mask) == 20'h0 & ~io_flush);	// @[generators/boom/src/main/scala/v3/util/util.scala:118:{51,59}, :465:24, :466:20, :476:{24,66}, :481:{16,29,69,72}, :487:17, :489:33, :495:17, :496:27, :515:21, :520:14, src/main/scala/chisel3/util/Counter.scala:61:40]
      valids_1 <= ~(do_deq & deq_ptr_value == 2'h1) & (_GEN_13 | valids_1 & (io_brupdate_b1_mispredict_mask & uops_1_br_mask) == 20'h0 & ~io_flush);	// @[generators/boom/src/main/scala/v3/util/util.scala:118:{51,59}, :465:24, :466:20, :476:{24,66}, :481:{16,29,69,72}, :487:17, :489:33, :495:17, :496:27, :515:21, :520:14, src/main/scala/chisel3/util/Counter.scala:61:40]
      valids_2 <= ~(do_deq & deq_ptr_value == 2'h2) & (_GEN_15 | valids_2 & (io_brupdate_b1_mispredict_mask & uops_2_br_mask) == 20'h0 & ~io_flush);	// @[generators/boom/src/main/scala/v3/util/util.scala:118:{51,59}, :465:24, :466:20, :476:{24,66}, :481:{16,29,69,72}, :487:17, :489:33, :495:17, :496:27, :515:21, :520:14, src/main/scala/chisel3/util/Counter.scala:61:40]
      if (do_enq)	// @[generators/boom/src/main/scala/v3/util/util.scala:475:24, :515:21, :521:{27,36}, src/main/scala/chisel3/util/Decoupled.scala:51:35]
        enq_ptr_value <= enq_ptr_value == 2'h2 ? 2'h0 : enq_ptr_value + 2'h1;	// @[src/main/scala/chisel3/util/Counter.scala:61:40, :73:24, :77:{15,24}, :87:{20,28}]
      if (do_deq)	// @[generators/boom/src/main/scala/v3/util/util.scala:476:{24,66}, :515:21, :520:14]
        deq_ptr_value <= deq_ptr_value == 2'h2 ? 2'h0 : deq_ptr_value + 2'h1;	// @[src/main/scala/chisel3/util/Counter.scala:61:40, :73:24, :77:{15,24}, :87:{20,28}]
      if (~(do_enq == do_deq))	// @[generators/boom/src/main/scala/v3/util/util.scala:470:27, :475:24, :476:{24,66}, :500:{16,28}, :501:16, :515:21, :520:14, :521:{27,36}, src/main/scala/chisel3/util/Decoupled.scala:51:35]
        maybe_full <= do_enq;	// @[generators/boom/src/main/scala/v3/util/util.scala:470:27, :475:24, :515:21, :521:{27,36}, src/main/scala/chisel3/util/Decoupled.scala:51:35]
    end
    if (_GEN_11) begin	// @[generators/boom/src/main/scala/v3/util/util.scala:481:16, :487:17, :489:33]
      uops_0_uopc <= io_enq_bits_uop_uopc;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
      uops_0_rob_idx <= io_enq_bits_uop_rob_idx;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
      uops_0_stq_idx <= io_enq_bits_uop_stq_idx;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
      uops_0_pdst <= io_enq_bits_uop_pdst;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
      uops_0_is_amo <= io_enq_bits_uop_is_amo;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
      uops_0_uses_stq <= io_enq_bits_uop_uses_stq;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
      uops_0_dst_rtype <= io_enq_bits_uop_dst_rtype;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
      uops_0_fp_val <= io_enq_bits_uop_fp_val;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
    end
    uops_0_br_mask <= do_enq & _GEN_10 ? _uops_br_mask_T_1 : ({20{~valids_0}} | ~io_brupdate_b1_resolve_mask) & uops_0_br_mask;	// @[generators/boom/src/main/scala/v3/util/util.scala:85:25, :89:23, :465:24, :466:20, :475:24, :482:22, :483:23, :487:17, :489:33, :491:33, :515:21, :521:{27,36}, src/main/scala/chisel3/util/Decoupled.scala:51:35]
    if (_GEN_13) begin	// @[generators/boom/src/main/scala/v3/util/util.scala:481:16, :487:17, :489:33]
      uops_1_uopc <= io_enq_bits_uop_uopc;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
      uops_1_rob_idx <= io_enq_bits_uop_rob_idx;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
      uops_1_stq_idx <= io_enq_bits_uop_stq_idx;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
      uops_1_pdst <= io_enq_bits_uop_pdst;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
      uops_1_is_amo <= io_enq_bits_uop_is_amo;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
      uops_1_uses_stq <= io_enq_bits_uop_uses_stq;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
      uops_1_dst_rtype <= io_enq_bits_uop_dst_rtype;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
      uops_1_fp_val <= io_enq_bits_uop_fp_val;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
    end
    uops_1_br_mask <= do_enq & _GEN_12 ? _uops_br_mask_T_1 : ({20{~valids_1}} | ~io_brupdate_b1_resolve_mask) & uops_1_br_mask;	// @[generators/boom/src/main/scala/v3/util/util.scala:85:25, :89:23, :465:24, :466:20, :475:24, :482:22, :483:23, :487:17, :489:33, :491:33, :515:21, :521:{27,36}, src/main/scala/chisel3/util/Decoupled.scala:51:35]
    if (_GEN_15) begin	// @[generators/boom/src/main/scala/v3/util/util.scala:481:16, :487:17, :489:33]
      uops_2_uopc <= io_enq_bits_uop_uopc;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
      uops_2_rob_idx <= io_enq_bits_uop_rob_idx;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
      uops_2_stq_idx <= io_enq_bits_uop_stq_idx;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
      uops_2_pdst <= io_enq_bits_uop_pdst;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
      uops_2_is_amo <= io_enq_bits_uop_is_amo;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
      uops_2_uses_stq <= io_enq_bits_uop_uses_stq;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
      uops_2_dst_rtype <= io_enq_bits_uop_dst_rtype;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
      uops_2_fp_val <= io_enq_bits_uop_fp_val;	// @[generators/boom/src/main/scala/v3/util/util.scala:466:20]
    end
    uops_2_br_mask <= do_enq & _GEN_14 ? _uops_br_mask_T_1 : ({20{~valids_2}} | ~io_brupdate_b1_resolve_mask) & uops_2_br_mask;	// @[generators/boom/src/main/scala/v3/util/util.scala:85:25, :89:23, :465:24, :466:20, :475:24, :482:22, :483:23, :487:17, :489:33, :491:33, :515:21, :521:{27,36}, src/main/scala/chisel3/util/Decoupled.scala:51:35]
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7]
    `ifdef FIRRTL_BEFORE_INITIAL	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7]
      `FIRRTL_BEFORE_INITIAL	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7]
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM[0:39];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7]
    initial begin	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7]
      `ifdef INIT_RANDOM_PROLOG_	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7]
        `INIT_RANDOM_PROLOG_	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7]
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7]
        for (logic [5:0] i = 6'h0; i < 6'h28; i += 6'h1) begin
          _RANDOM[i] = `RANDOM;	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7]
        end	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7]
        valids_0 = _RANDOM[6'h0][0];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :465:24]
        valids_1 = _RANDOM[6'h0][1];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :465:24]
        valids_2 = _RANDOM[6'h0][2];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :465:24]
        uops_0_uopc = _RANDOM[6'h0][9:3];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :465:24, :466:20]
        uops_0_br_mask = _RANDOM[6'h5][19:0];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :466:20]
        uops_0_rob_idx = _RANDOM[6'h7][13:7];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :466:20]
        uops_0_stq_idx = _RANDOM[6'h7][23:19];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :466:20]
        uops_0_pdst = {_RANDOM[6'h7][31:26], _RANDOM[6'h8][0]};	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :466:20]
        uops_0_is_amo = _RANDOM[6'hB][19];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :466:20]
        uops_0_uses_stq = _RANDOM[6'hB][21];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :466:20]
        uops_0_dst_rtype = _RANDOM[6'hC][20:19];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :466:20]
        uops_0_fp_val = _RANDOM[6'hC][26];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :466:20]
        uops_1_uopc = _RANDOM[6'hD][11:5];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :466:20]
        uops_1_br_mask = _RANDOM[6'h12][21:2];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :466:20]
        uops_1_rob_idx = _RANDOM[6'h14][15:9];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :466:20]
        uops_1_stq_idx = _RANDOM[6'h14][25:21];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :466:20]
        uops_1_pdst = {_RANDOM[6'h14][31:28], _RANDOM[6'h15][2:0]};	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :466:20]
        uops_1_is_amo = _RANDOM[6'h18][21];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :466:20]
        uops_1_uses_stq = _RANDOM[6'h18][23];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :466:20]
        uops_1_dst_rtype = _RANDOM[6'h19][22:21];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :466:20]
        uops_1_fp_val = _RANDOM[6'h19][28];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :466:20]
        uops_2_uopc = _RANDOM[6'h1A][13:7];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :466:20]
        uops_2_br_mask = _RANDOM[6'h1F][23:4];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :466:20]
        uops_2_rob_idx = _RANDOM[6'h21][17:11];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :466:20]
        uops_2_stq_idx = _RANDOM[6'h21][27:23];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :466:20]
        uops_2_pdst = {_RANDOM[6'h21][31:30], _RANDOM[6'h22][4:0]};	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :466:20]
        uops_2_is_amo = _RANDOM[6'h25][23];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :466:20]
        uops_2_uses_stq = _RANDOM[6'h25][25];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :466:20]
        uops_2_dst_rtype = _RANDOM[6'h26][24:23];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :466:20]
        uops_2_fp_val = _RANDOM[6'h26][30];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :466:20]
        enq_ptr_value = _RANDOM[6'h27][10:9];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, src/main/scala/chisel3/util/Counter.scala:61:40]
        deq_ptr_value = _RANDOM[6'h27][12:11];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, src/main/scala/chisel3/util/Counter.scala:61:40]
        maybe_full = _RANDOM[6'h27][13];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :470:27, src/main/scala/chisel3/util/Counter.scala:61:40]
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7]
      `FIRRTL_AFTER_INITIAL	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7]
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  ram_3x79 ram_ext (	// @[generators/boom/src/main/scala/v3/util/util.scala:464:20]
    .R0_addr (deq_ptr_value),	// @[src/main/scala/chisel3/util/Counter.scala:61:40]
    .R0_en   (1'h1),
    .R0_clk  (clock),
    .R0_data (_ram_ext_R0_data),
    .W0_addr (enq_ptr_value),	// @[src/main/scala/chisel3/util/Counter.scala:61:40]
    .W0_en   (do_enq),	// @[generators/boom/src/main/scala/v3/util/util.scala:475:24, :515:21, :521:{27,36}, src/main/scala/chisel3/util/Decoupled.scala:51:35]
    .W0_clk  (clock),
    .W0_data ({14'h0, io_enq_bits_data})	// @[generators/boom/src/main/scala/v3/util/util.scala:464:20]
  );	// @[generators/boom/src/main/scala/v3/util/util.scala:464:20]
  assign io_enq_ready = ~full;	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :474:24, :504:19]
  assign io_deq_valid = io_empty_0 ? io_enq_valid : ~io_empty_0 & _GEN_0 & (io_brupdate_b1_mispredict_mask & out_uop_br_mask) == 20'h0 & ~io_flush;	// @[generators/boom/src/main/scala/v3/util/util.scala:118:{51,59}, :448:7, :473:25, :476:{42,69}, :508:19, :509:{27,40,65,108,111}, :515:21, :516:20]
  assign io_deq_bits_uop_uopc = io_empty_0 ? io_enq_bits_uop_uopc : _GEN_1[deq_ptr_value];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :473:25, :508:19, :510:27, :515:21, :517:19, src/main/scala/chisel3/util/Counter.scala:61:40]
  assign io_deq_bits_uop_br_mask = io_empty_0 ? io_enq_bits_uop_br_mask & ~io_brupdate_b1_resolve_mask : out_uop_br_mask & ~io_brupdate_b1_resolve_mask;	// @[generators/boom/src/main/scala/v3/util/util.scala:85:{25,27}, :448:7, :473:25, :508:19, :511:27, :515:21, :518:31]
  assign io_deq_bits_uop_rob_idx = io_empty_0 ? io_enq_bits_uop_rob_idx : _GEN_3[deq_ptr_value];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :473:25, :508:19, :510:27, :515:21, :517:19, src/main/scala/chisel3/util/Counter.scala:61:40]
  assign io_deq_bits_uop_stq_idx = io_empty_0 ? io_enq_bits_uop_stq_idx : _GEN_4[deq_ptr_value];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :473:25, :508:19, :510:27, :515:21, :517:19, src/main/scala/chisel3/util/Counter.scala:61:40]
  assign io_deq_bits_uop_pdst = io_empty_0 ? io_enq_bits_uop_pdst : _GEN_5[deq_ptr_value];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :473:25, :508:19, :510:27, :515:21, :517:19, src/main/scala/chisel3/util/Counter.scala:61:40]
  assign io_deq_bits_uop_is_amo = io_empty_0 ? io_enq_bits_uop_is_amo : _GEN_6[deq_ptr_value];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :473:25, :508:19, :510:27, :515:21, :517:19, src/main/scala/chisel3/util/Counter.scala:61:40]
  assign io_deq_bits_uop_uses_stq = io_empty_0 ? io_enq_bits_uop_uses_stq : _GEN_7[deq_ptr_value];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :473:25, :508:19, :510:27, :515:21, :517:19, src/main/scala/chisel3/util/Counter.scala:61:40]
  assign io_deq_bits_uop_dst_rtype = io_empty_0 ? io_enq_bits_uop_dst_rtype : _GEN_8[deq_ptr_value];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :473:25, :508:19, :510:27, :515:21, :517:19, src/main/scala/chisel3/util/Counter.scala:61:40]
  assign io_deq_bits_uop_fp_val = io_empty_0 ? io_enq_bits_uop_fp_val : _GEN_9[deq_ptr_value];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :473:25, :508:19, :510:27, :515:21, :517:19, src/main/scala/chisel3/util/Counter.scala:61:40]
  assign io_deq_bits_data = io_empty_0 ? io_enq_bits_data : _ram_ext_R0_data[64:0];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :464:20, :473:25, :510:27, :515:21, :517:19]
  assign io_deq_bits_predicated = ~io_empty_0 & _ram_ext_R0_data[65];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :464:20, :473:25, :510:27, :515:21, :517:19]
  assign io_deq_bits_fflags_valid = ~io_empty_0 & _ram_ext_R0_data[66];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :464:20, :473:25, :510:27, :515:21, :517:19]
  assign io_deq_bits_fflags_bits_uop_rob_idx = io_empty_0 ? 7'h0 : _ram_ext_R0_data[73:67];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :453:14, :464:20, :473:25, :510:27, :515:21, :517:19]
  assign io_deq_bits_fflags_bits_flags = io_empty_0 ? 5'h0 : _ram_ext_R0_data[78:74];	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :453:14, :464:20, :473:25, :510:27, :515:21, :517:19]
  assign io_empty = io_empty_0;	// @[generators/boom/src/main/scala/v3/util/util.scala:448:7, :473:25]
endmodule

