// Generated by CIRCT unknown git version

// Users can define 'STOP_COND' to add an extra gate to stop conditions.
`ifndef STOP_COND_
  `ifdef STOP_COND
    `define STOP_COND_ (`STOP_COND)
  `else  // STOP_COND
    `define STOP_COND_ 1
  `endif // STOP_COND
`endif // not def STOP_COND_

// Users can define 'ASSERT_VERBOSE_COND' to add an extra gate to assert error printing.
`ifndef ASSERT_VERBOSE_COND_
  `ifdef ASSERT_VERBOSE_COND
    `define ASSERT_VERBOSE_COND_ (`ASSERT_VERBOSE_COND)
  `else  // ASSERT_VERBOSE_COND
    `define ASSERT_VERBOSE_COND_ 1
  `endif // ASSERT_VERBOSE_COND
`endif // not def ASSERT_VERBOSE_COND_

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
module JtagBypassChain(	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:56:7]
  input  clock,	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:56:7]
  input  reset,	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:56:7]
  input  io_chainIn_shift,	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:58:14]
  input  io_chainIn_data,	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:58:14]
  input  io_chainIn_capture,	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:58:14]
  input  io_chainIn_update,	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:58:14]
  output io_chainOut_data	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:58:14]
);

  reg reg_0;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:61:16]
  `ifndef SYNTHESIS	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:72:9]
    always @(posedge clock) begin	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:72:9]
      if (~reset & ~(~(io_chainIn_capture & io_chainIn_update) & ~(io_chainIn_capture & io_chainIn_shift) & ~(io_chainIn_update & io_chainIn_shift))) begin	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:72:{9,10,31}, :73:{7,10,31}, :74:{7,10,30}]
        if (`ASSERT_VERBOSE_COND_)	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:72:9]
          $error("Assertion failed\n    at JtagShifter.scala:72 assert(!(io.chainIn.capture && io.chainIn.update)\n");	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:72:9]
        if (`STOP_COND_)	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:72:9]
          $fatal;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:72:9]
      end
    end // always @(posedge)
  `endif // not def SYNTHESIS
  always @(posedge clock) begin	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:56:7]
    if (io_chainIn_capture)	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:56:7]
      reg_0 <= 1'h0;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:56:7, :61:16]
    else if (io_chainIn_shift)	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:58:14]
      reg_0 <= io_chainIn_data;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:61:16]
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:56:7]
    `ifdef FIRRTL_BEFORE_INITIAL	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:56:7]
      `FIRRTL_BEFORE_INITIAL	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:56:7]
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM[0:0];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:56:7]
    initial begin	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:56:7]
      `ifdef INIT_RANDOM_PROLOG_	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:56:7]
        `INIT_RANDOM_PROLOG_	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:56:7]
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:56:7]
        _RANDOM[/*Zero width*/ 1'b0] = `RANDOM;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:56:7]
        reg_0 = _RANDOM[/*Zero width*/ 1'b0][0];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:56:7, :61:16]
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:56:7]
      `FIRRTL_AFTER_INITIAL	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:56:7]
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  assign io_chainOut_data = reg_0;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:56:7, :61:16]
endmodule

