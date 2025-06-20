// Generated by CIRCT unknown git version
module RecFNToIN_e11_s53_i32(	// @[generators/hardfloat/hardfloat/src/main/scala/RecFNToIN.scala:46:7]
  input  [64:0] io_in,	// @[generators/hardfloat/hardfloat/src/main/scala/RecFNToIN.scala:49:16]
  input  [2:0]  io_roundingMode,	// @[generators/hardfloat/hardfloat/src/main/scala/RecFNToIN.scala:49:16]
  input         io_signedOut,	// @[generators/hardfloat/hardfloat/src/main/scala/RecFNToIN.scala:49:16]
  output [2:0]  io_intExceptionFlags	// @[generators/hardfloat/hardfloat/src/main/scala/RecFNToIN.scala:49:16]
);

  wire        magJustBelowOne = ~(io_in[63]) & (&(io_in[62:52]));	// @[generators/hardfloat/hardfloat/src/main/scala/RecFNToIN.scala:61:30, :62:28, :63:{27,37,47}]
  wire [83:0] shiftedSig = {31'h0, io_in[63], io_in[51:0]} << (io_in[63] ? io_in[56:52] : 5'h0);	// @[generators/hardfloat/hardfloat/src/main/scala/RecFNToIN.scala:61:30, :83:49, :84:16, :85:27, generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:61:49]
  wire [1:0]  _roundIncr_near_even_T_6 = {shiftedSig[51], |(shiftedSig[50:0])};	// @[generators/hardfloat/hardfloat/src/main/scala/RecFNToIN.scala:83:49, :89:{51,69}, :92:50]
  wire        common_inexact = io_in[63] ? (|_roundIncr_near_even_T_6) : (|(io_in[63:61]));	// @[generators/hardfloat/hardfloat/src/main/scala/RecFNToIN.scala:61:30, :92:{29,50,57}, generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :52:{28,53}]
  wire        roundIncr = io_roundingMode == 3'h0 & (io_in[63] & ((&(shiftedSig[52:51])) | (&_roundIncr_near_even_T_6)) | magJustBelowOne & (|_roundIncr_near_even_T_6)) | io_roundingMode == 3'h4 & (io_in[63] & shiftedSig[51] | magJustBelowOne) | (io_roundingMode == 3'h2 | io_roundingMode == 3'h6) & io_in[64] & common_inexact | io_roundingMode == 3'h3 & ~(io_in[64]) & common_inexact;	// @[generators/hardfloat/hardfloat/src/main/scala/RecFNToIN.scala:61:30, :63:37, :67:53, :69:53, :70:53, :71:53, :72:53, :83:49, :92:{29,50}, :94:{25,39,46,51,71,78}, :95:{26,46}, :96:{43,56,61}, :98:{35,61}, :99:{35,61}, :100:{28,49}, :101:{26,46}, :102:{27,31,43}, generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:52:53, :59:25]
  wire        magGeOne_atOverflowEdge = io_in[62:52] == 11'h1F;	// @[generators/hardfloat/hardfloat/src/main/scala/RecFNToIN.scala:62:28, :110:43]
  wire        roundCarryBut2 = (&(shiftedSig[81:52])) & roundIncr;	// @[generators/hardfloat/hardfloat/src/main/scala/RecFNToIN.scala:83:49, :90:52, :98:61, :99:61, :101:46, :113:{38,56,61}]
  wire        common_overflow = io_in[63] ? (|(io_in[62:57])) | (io_signedOut ? (io_in[64] ? magGeOne_atOverflowEdge & ((|(shiftedSig[82:52])) | roundIncr) : magGeOne_atOverflowEdge | io_in[62:52] == 11'h1E & roundCarryBut2) : io_in[64] | magGeOne_atOverflowEdge & shiftedSig[82] & roundCarryBut2) : ~io_signedOut & io_in[64] & roundIncr;	// @[generators/hardfloat/hardfloat/src/main/scala/RecFNToIN.scala:61:30, :62:28, :83:49, :90:52, :98:61, :99:61, :101:46, :110:43, :113:61, :115:12, :116:{21,36}, :117:20, :118:24, :119:49, :120:{42,60,64}, :121:49, :122:{38,60}, :124:32, :125:50, :126:{42,57}, :128:{13,27,41}, generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:59:25]
  wire        invalidExc = (&(io_in[63:62])) & io_in[61] | (&(io_in[63:62])) & ~(io_in[61]);	// @[generators/hardfloat/hardfloat/src/main/scala/RecFNToIN.scala:133:34, generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :53:{28,53}, :56:{33,41}, :57:{33,36}]
  assign io_intExceptionFlags = {invalidExc, ~invalidExc & common_overflow, ~invalidExc & ~common_overflow & common_inexact};	// @[generators/hardfloat/hardfloat/src/main/scala/RecFNToIN.scala:46:7, :92:29, :115:12, :133:34, :134:{20,32}, :135:{32,35,52}, :146:52]
endmodule

