module Memory(
  input         clock,
  input  [31:0] io_bundle_address, // @[src/main/scala/peripheral/Memory.scala 56:14]
  input  [31:0] io_bundle_write_data, // @[src/main/scala/peripheral/Memory.scala 56:14]
  input         io_bundle_write_enable, // @[src/main/scala/peripheral/Memory.scala 56:14]
  input         io_bundle_write_strobe_0, // @[src/main/scala/peripheral/Memory.scala 56:14]
  input         io_bundle_write_strobe_1, // @[src/main/scala/peripheral/Memory.scala 56:14]
  input         io_bundle_write_strobe_2, // @[src/main/scala/peripheral/Memory.scala 56:14]
  input         io_bundle_write_strobe_3, // @[src/main/scala/peripheral/Memory.scala 56:14]
  output [31:0] io_bundle_read_data, // @[src/main/scala/peripheral/Memory.scala 56:14]
  output [31:0] io_instruction, // @[src/main/scala/peripheral/Memory.scala 56:14]
  input  [31:0] io_instruction_address // @[src/main/scala/peripheral/Memory.scala 56:14]
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_21;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] mem_0 [0:8191]; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire  mem_0_io_bundle_read_data_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [12:0] mem_0_io_bundle_read_data_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [7:0] mem_0_io_bundle_read_data_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire  mem_0_io_debug_read_data_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [12:0] mem_0_io_debug_read_data_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [7:0] mem_0_io_debug_read_data_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire  mem_0_io_instruction_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [12:0] mem_0_io_instruction_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [7:0] mem_0_io_instruction_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [7:0] mem_0_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [12:0] mem_0_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire  mem_0_MPORT_mask; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire  mem_0_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 66:24]
  reg  mem_0_io_bundle_read_data_MPORT_en_pipe_0;
  reg [12:0] mem_0_io_bundle_read_data_MPORT_addr_pipe_0;
  reg  mem_0_io_debug_read_data_MPORT_en_pipe_0;
  reg [12:0] mem_0_io_debug_read_data_MPORT_addr_pipe_0;
  reg  mem_0_io_instruction_MPORT_en_pipe_0;
  reg [12:0] mem_0_io_instruction_MPORT_addr_pipe_0;
  reg [7:0] mem_1 [0:8191]; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire  mem_1_io_bundle_read_data_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [12:0] mem_1_io_bundle_read_data_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [7:0] mem_1_io_bundle_read_data_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire  mem_1_io_debug_read_data_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [12:0] mem_1_io_debug_read_data_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [7:0] mem_1_io_debug_read_data_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire  mem_1_io_instruction_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [12:0] mem_1_io_instruction_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [7:0] mem_1_io_instruction_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [7:0] mem_1_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [12:0] mem_1_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire  mem_1_MPORT_mask; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire  mem_1_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 66:24]
  reg  mem_1_io_bundle_read_data_MPORT_en_pipe_0;
  reg [12:0] mem_1_io_bundle_read_data_MPORT_addr_pipe_0;
  reg  mem_1_io_debug_read_data_MPORT_en_pipe_0;
  reg [12:0] mem_1_io_debug_read_data_MPORT_addr_pipe_0;
  reg  mem_1_io_instruction_MPORT_en_pipe_0;
  reg [12:0] mem_1_io_instruction_MPORT_addr_pipe_0;
  reg [7:0] mem_2 [0:8191]; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire  mem_2_io_bundle_read_data_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [12:0] mem_2_io_bundle_read_data_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [7:0] mem_2_io_bundle_read_data_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire  mem_2_io_debug_read_data_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [12:0] mem_2_io_debug_read_data_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [7:0] mem_2_io_debug_read_data_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire  mem_2_io_instruction_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [12:0] mem_2_io_instruction_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [7:0] mem_2_io_instruction_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [7:0] mem_2_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [12:0] mem_2_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire  mem_2_MPORT_mask; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire  mem_2_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 66:24]
  reg  mem_2_io_bundle_read_data_MPORT_en_pipe_0;
  reg [12:0] mem_2_io_bundle_read_data_MPORT_addr_pipe_0;
  reg  mem_2_io_debug_read_data_MPORT_en_pipe_0;
  reg [12:0] mem_2_io_debug_read_data_MPORT_addr_pipe_0;
  reg  mem_2_io_instruction_MPORT_en_pipe_0;
  reg [12:0] mem_2_io_instruction_MPORT_addr_pipe_0;
  reg [7:0] mem_3 [0:8191]; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire  mem_3_io_bundle_read_data_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [12:0] mem_3_io_bundle_read_data_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [7:0] mem_3_io_bundle_read_data_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire  mem_3_io_debug_read_data_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [12:0] mem_3_io_debug_read_data_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [7:0] mem_3_io_debug_read_data_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire  mem_3_io_instruction_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [12:0] mem_3_io_instruction_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [7:0] mem_3_io_instruction_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [7:0] mem_3_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire [12:0] mem_3_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire  mem_3_MPORT_mask; // @[src/main/scala/peripheral/Memory.scala 66:24]
  wire  mem_3_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 66:24]
  reg  mem_3_io_bundle_read_data_MPORT_en_pipe_0;
  reg [12:0] mem_3_io_bundle_read_data_MPORT_addr_pipe_0;
  reg  mem_3_io_debug_read_data_MPORT_en_pipe_0;
  reg [12:0] mem_3_io_debug_read_data_MPORT_addr_pipe_0;
  reg  mem_3_io_instruction_MPORT_en_pipe_0;
  reg [12:0] mem_3_io_instruction_MPORT_addr_pipe_0;
  wire [31:0] _T = {{2'd0}, io_bundle_address[31:2]}; // @[src/main/scala/peripheral/Memory.scala 72:34]
  wire [15:0] io_bundle_read_data_lo = {mem_1_io_bundle_read_data_MPORT_data,mem_0_io_bundle_read_data_MPORT_data}; // @[src/main/scala/peripheral/Memory.scala 74:78]
  wire [15:0] io_bundle_read_data_hi = {mem_3_io_bundle_read_data_MPORT_data,mem_2_io_bundle_read_data_MPORT_data}; // @[src/main/scala/peripheral/Memory.scala 74:78]
  wire [31:0] _io_instruction_T = {{2'd0}, io_instruction_address[31:2]}; // @[src/main/scala/peripheral/Memory.scala 76:54]
  wire [15:0] io_instruction_lo = {mem_1_io_instruction_MPORT_data,mem_0_io_instruction_MPORT_data}; // @[src/main/scala/peripheral/Memory.scala 76:78]
  wire [15:0] io_instruction_hi = {mem_3_io_instruction_MPORT_data,mem_2_io_instruction_MPORT_data}; // @[src/main/scala/peripheral/Memory.scala 76:78]
  assign mem_0_io_bundle_read_data_MPORT_en = mem_0_io_bundle_read_data_MPORT_en_pipe_0;
  assign mem_0_io_bundle_read_data_MPORT_addr = mem_0_io_bundle_read_data_MPORT_addr_pipe_0;
  assign mem_0_io_bundle_read_data_MPORT_data = mem_0[mem_0_io_bundle_read_data_MPORT_addr]; // @[src/main/scala/peripheral/Memory.scala 66:24]
  assign mem_0_io_debug_read_data_MPORT_en = mem_0_io_debug_read_data_MPORT_en_pipe_0;
  assign mem_0_io_debug_read_data_MPORT_addr = mem_0_io_debug_read_data_MPORT_addr_pipe_0;
  assign mem_0_io_debug_read_data_MPORT_data = mem_0[mem_0_io_debug_read_data_MPORT_addr]; // @[src/main/scala/peripheral/Memory.scala 66:24]
  assign mem_0_io_instruction_MPORT_en = mem_0_io_instruction_MPORT_en_pipe_0;
  assign mem_0_io_instruction_MPORT_addr = mem_0_io_instruction_MPORT_addr_pipe_0;
  assign mem_0_io_instruction_MPORT_data = mem_0[mem_0_io_instruction_MPORT_addr]; // @[src/main/scala/peripheral/Memory.scala 66:24]
  assign mem_0_MPORT_data = io_bundle_write_data[7:0];
  assign mem_0_MPORT_addr = _T[12:0];
  assign mem_0_MPORT_mask = io_bundle_write_strobe_0;
  assign mem_0_MPORT_en = io_bundle_write_enable;
  assign mem_1_io_bundle_read_data_MPORT_en = mem_1_io_bundle_read_data_MPORT_en_pipe_0;
  assign mem_1_io_bundle_read_data_MPORT_addr = mem_1_io_bundle_read_data_MPORT_addr_pipe_0;
  assign mem_1_io_bundle_read_data_MPORT_data = mem_1[mem_1_io_bundle_read_data_MPORT_addr]; // @[src/main/scala/peripheral/Memory.scala 66:24]
  assign mem_1_io_debug_read_data_MPORT_en = mem_1_io_debug_read_data_MPORT_en_pipe_0;
  assign mem_1_io_debug_read_data_MPORT_addr = mem_1_io_debug_read_data_MPORT_addr_pipe_0;
  assign mem_1_io_debug_read_data_MPORT_data = mem_1[mem_1_io_debug_read_data_MPORT_addr]; // @[src/main/scala/peripheral/Memory.scala 66:24]
  assign mem_1_io_instruction_MPORT_en = mem_1_io_instruction_MPORT_en_pipe_0;
  assign mem_1_io_instruction_MPORT_addr = mem_1_io_instruction_MPORT_addr_pipe_0;
  assign mem_1_io_instruction_MPORT_data = mem_1[mem_1_io_instruction_MPORT_addr]; // @[src/main/scala/peripheral/Memory.scala 66:24]
  assign mem_1_MPORT_data = io_bundle_write_data[15:8];
  assign mem_1_MPORT_addr = _T[12:0];
  assign mem_1_MPORT_mask = io_bundle_write_strobe_1;
  assign mem_1_MPORT_en = io_bundle_write_enable;
  assign mem_2_io_bundle_read_data_MPORT_en = mem_2_io_bundle_read_data_MPORT_en_pipe_0;
  assign mem_2_io_bundle_read_data_MPORT_addr = mem_2_io_bundle_read_data_MPORT_addr_pipe_0;
  assign mem_2_io_bundle_read_data_MPORT_data = mem_2[mem_2_io_bundle_read_data_MPORT_addr]; // @[src/main/scala/peripheral/Memory.scala 66:24]
  assign mem_2_io_debug_read_data_MPORT_en = mem_2_io_debug_read_data_MPORT_en_pipe_0;
  assign mem_2_io_debug_read_data_MPORT_addr = mem_2_io_debug_read_data_MPORT_addr_pipe_0;
  assign mem_2_io_debug_read_data_MPORT_data = mem_2[mem_2_io_debug_read_data_MPORT_addr]; // @[src/main/scala/peripheral/Memory.scala 66:24]
  assign mem_2_io_instruction_MPORT_en = mem_2_io_instruction_MPORT_en_pipe_0;
  assign mem_2_io_instruction_MPORT_addr = mem_2_io_instruction_MPORT_addr_pipe_0;
  assign mem_2_io_instruction_MPORT_data = mem_2[mem_2_io_instruction_MPORT_addr]; // @[src/main/scala/peripheral/Memory.scala 66:24]
  assign mem_2_MPORT_data = io_bundle_write_data[23:16];
  assign mem_2_MPORT_addr = _T[12:0];
  assign mem_2_MPORT_mask = io_bundle_write_strobe_2;
  assign mem_2_MPORT_en = io_bundle_write_enable;
  assign mem_3_io_bundle_read_data_MPORT_en = mem_3_io_bundle_read_data_MPORT_en_pipe_0;
  assign mem_3_io_bundle_read_data_MPORT_addr = mem_3_io_bundle_read_data_MPORT_addr_pipe_0;
  assign mem_3_io_bundle_read_data_MPORT_data = mem_3[mem_3_io_bundle_read_data_MPORT_addr]; // @[src/main/scala/peripheral/Memory.scala 66:24]
  assign mem_3_io_debug_read_data_MPORT_en = mem_3_io_debug_read_data_MPORT_en_pipe_0;
  assign mem_3_io_debug_read_data_MPORT_addr = mem_3_io_debug_read_data_MPORT_addr_pipe_0;
  assign mem_3_io_debug_read_data_MPORT_data = mem_3[mem_3_io_debug_read_data_MPORT_addr]; // @[src/main/scala/peripheral/Memory.scala 66:24]
  assign mem_3_io_instruction_MPORT_en = mem_3_io_instruction_MPORT_en_pipe_0;
  assign mem_3_io_instruction_MPORT_addr = mem_3_io_instruction_MPORT_addr_pipe_0;
  assign mem_3_io_instruction_MPORT_data = mem_3[mem_3_io_instruction_MPORT_addr]; // @[src/main/scala/peripheral/Memory.scala 66:24]
  assign mem_3_MPORT_data = io_bundle_write_data[31:24];
  assign mem_3_MPORT_addr = _T[12:0];
  assign mem_3_MPORT_mask = io_bundle_write_strobe_3;
  assign mem_3_MPORT_en = io_bundle_write_enable;
  assign io_bundle_read_data = {io_bundle_read_data_hi,io_bundle_read_data_lo}; // @[src/main/scala/peripheral/Memory.scala 74:78]
  assign io_instruction = {io_instruction_hi,io_instruction_lo}; // @[src/main/scala/peripheral/Memory.scala 76:78]
  always @(posedge clock) begin
    if (mem_0_MPORT_en & mem_0_MPORT_mask) begin
      mem_0[mem_0_MPORT_addr] <= mem_0_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 66:24]
    end
    mem_0_io_bundle_read_data_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_0_io_bundle_read_data_MPORT_addr_pipe_0 <= _T[12:0];
    end
    mem_0_io_debug_read_data_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_0_io_debug_read_data_MPORT_addr_pipe_0 <= 13'h0;
    end
    mem_0_io_instruction_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_0_io_instruction_MPORT_addr_pipe_0 <= _io_instruction_T[12:0];
    end
    if (mem_1_MPORT_en & mem_1_MPORT_mask) begin
      mem_1[mem_1_MPORT_addr] <= mem_1_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 66:24]
    end
    mem_1_io_bundle_read_data_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_1_io_bundle_read_data_MPORT_addr_pipe_0 <= _T[12:0];
    end
    mem_1_io_debug_read_data_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_1_io_debug_read_data_MPORT_addr_pipe_0 <= 13'h0;
    end
    mem_1_io_instruction_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_1_io_instruction_MPORT_addr_pipe_0 <= _io_instruction_T[12:0];
    end
    if (mem_2_MPORT_en & mem_2_MPORT_mask) begin
      mem_2[mem_2_MPORT_addr] <= mem_2_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 66:24]
    end
    mem_2_io_bundle_read_data_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_2_io_bundle_read_data_MPORT_addr_pipe_0 <= _T[12:0];
    end
    mem_2_io_debug_read_data_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_2_io_debug_read_data_MPORT_addr_pipe_0 <= 13'h0;
    end
    mem_2_io_instruction_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_2_io_instruction_MPORT_addr_pipe_0 <= _io_instruction_T[12:0];
    end
    if (mem_3_MPORT_en & mem_3_MPORT_mask) begin
      mem_3[mem_3_MPORT_addr] <= mem_3_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 66:24]
    end
    mem_3_io_bundle_read_data_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_3_io_bundle_read_data_MPORT_addr_pipe_0 <= _T[12:0];
    end
    mem_3_io_debug_read_data_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_3_io_debug_read_data_MPORT_addr_pipe_0 <= 13'h0;
    end
    mem_3_io_instruction_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_3_io_instruction_MPORT_addr_pipe_0 <= _io_instruction_T[12:0];
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 8192; initvar = initvar+1)
    mem_0[initvar] = _RAND_0[7:0];
  _RAND_7 = {1{`RANDOM}};
  for (initvar = 0; initvar < 8192; initvar = initvar+1)
    mem_1[initvar] = _RAND_7[7:0];
  _RAND_14 = {1{`RANDOM}};
  for (initvar = 0; initvar < 8192; initvar = initvar+1)
    mem_2[initvar] = _RAND_14[7:0];
  _RAND_21 = {1{`RANDOM}};
  for (initvar = 0; initvar < 8192; initvar = initvar+1)
    mem_3[initvar] = _RAND_21[7:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  mem_0_io_bundle_read_data_MPORT_en_pipe_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  mem_0_io_bundle_read_data_MPORT_addr_pipe_0 = _RAND_2[12:0];
  _RAND_3 = {1{`RANDOM}};
  mem_0_io_debug_read_data_MPORT_en_pipe_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  mem_0_io_debug_read_data_MPORT_addr_pipe_0 = _RAND_4[12:0];
  _RAND_5 = {1{`RANDOM}};
  mem_0_io_instruction_MPORT_en_pipe_0 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  mem_0_io_instruction_MPORT_addr_pipe_0 = _RAND_6[12:0];
  _RAND_8 = {1{`RANDOM}};
  mem_1_io_bundle_read_data_MPORT_en_pipe_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  mem_1_io_bundle_read_data_MPORT_addr_pipe_0 = _RAND_9[12:0];
  _RAND_10 = {1{`RANDOM}};
  mem_1_io_debug_read_data_MPORT_en_pipe_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  mem_1_io_debug_read_data_MPORT_addr_pipe_0 = _RAND_11[12:0];
  _RAND_12 = {1{`RANDOM}};
  mem_1_io_instruction_MPORT_en_pipe_0 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  mem_1_io_instruction_MPORT_addr_pipe_0 = _RAND_13[12:0];
  _RAND_15 = {1{`RANDOM}};
  mem_2_io_bundle_read_data_MPORT_en_pipe_0 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  mem_2_io_bundle_read_data_MPORT_addr_pipe_0 = _RAND_16[12:0];
  _RAND_17 = {1{`RANDOM}};
  mem_2_io_debug_read_data_MPORT_en_pipe_0 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  mem_2_io_debug_read_data_MPORT_addr_pipe_0 = _RAND_18[12:0];
  _RAND_19 = {1{`RANDOM}};
  mem_2_io_instruction_MPORT_en_pipe_0 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  mem_2_io_instruction_MPORT_addr_pipe_0 = _RAND_20[12:0];
  _RAND_22 = {1{`RANDOM}};
  mem_3_io_bundle_read_data_MPORT_en_pipe_0 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  mem_3_io_bundle_read_data_MPORT_addr_pipe_0 = _RAND_23[12:0];
  _RAND_24 = {1{`RANDOM}};
  mem_3_io_debug_read_data_MPORT_en_pipe_0 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  mem_3_io_debug_read_data_MPORT_addr_pipe_0 = _RAND_25[12:0];
  _RAND_26 = {1{`RANDOM}};
  mem_3_io_instruction_MPORT_en_pipe_0 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  mem_3_io_instruction_MPORT_addr_pipe_0 = _RAND_27[12:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Tx(
  input        clock,
  input        reset,
  output       io_txd, // @[src/main/scala/peripheral/UART.scala 30:14]
  output       io_channel_ready, // @[src/main/scala/peripheral/UART.scala 30:14]
  input        io_channel_valid, // @[src/main/scala/peripheral/UART.scala 30:14]
  input  [7:0] io_channel_bits // @[src/main/scala/peripheral/UART.scala 30:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [10:0] shiftReg; // @[src/main/scala/peripheral/UART.scala 38:25]
  reg [19:0] cntReg; // @[src/main/scala/peripheral/UART.scala 39:23]
  reg [3:0] bitsReg; // @[src/main/scala/peripheral/UART.scala 40:24]
  wire  _io_channel_ready_T = cntReg == 20'h0; // @[src/main/scala/peripheral/UART.scala 42:31]
  wire [9:0] shift = shiftReg[10:1]; // @[src/main/scala/peripheral/UART.scala 49:28]
  wire [10:0] _shiftReg_T_1 = {1'h1,shift}; // @[src/main/scala/peripheral/UART.scala 50:22]
  wire [3:0] _bitsReg_T_1 = bitsReg - 4'h1; // @[src/main/scala/peripheral/UART.scala 51:26]
  wire [10:0] _shiftReg_T_3 = {2'h3,io_channel_bits,1'h0}; // @[src/main/scala/peripheral/UART.scala 54:24]
  wire [19:0] _cntReg_T_1 = cntReg - 20'h1; // @[src/main/scala/peripheral/UART.scala 62:22]
  assign io_txd = shiftReg[0]; // @[src/main/scala/peripheral/UART.scala 43:21]
  assign io_channel_ready = cntReg == 20'h0 & bitsReg == 4'h0; // @[src/main/scala/peripheral/UART.scala 42:40]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/peripheral/UART.scala 38:25]
      shiftReg <= 11'h7ff; // @[src/main/scala/peripheral/UART.scala 38:25]
    end else if (_io_channel_ready_T) begin // @[src/main/scala/peripheral/UART.scala 45:24]
      if (bitsReg != 4'h0) begin // @[src/main/scala/peripheral/UART.scala 48:27]
        shiftReg <= _shiftReg_T_1; // @[src/main/scala/peripheral/UART.scala 50:16]
      end else if (io_channel_valid) begin // @[src/main/scala/peripheral/UART.scala 53:30]
        shiftReg <= _shiftReg_T_3; // @[src/main/scala/peripheral/UART.scala 54:18]
      end else begin
        shiftReg <= 11'h7ff; // @[src/main/scala/peripheral/UART.scala 57:18]
      end
    end
    if (reset) begin // @[src/main/scala/peripheral/UART.scala 39:23]
      cntReg <= 20'h0; // @[src/main/scala/peripheral/UART.scala 39:23]
    end else if (_io_channel_ready_T) begin // @[src/main/scala/peripheral/UART.scala 45:24]
      cntReg <= 20'hd8; // @[src/main/scala/peripheral/UART.scala 47:12]
    end else begin
      cntReg <= _cntReg_T_1; // @[src/main/scala/peripheral/UART.scala 62:12]
    end
    if (reset) begin // @[src/main/scala/peripheral/UART.scala 40:24]
      bitsReg <= 4'h0; // @[src/main/scala/peripheral/UART.scala 40:24]
    end else if (_io_channel_ready_T) begin // @[src/main/scala/peripheral/UART.scala 45:24]
      if (bitsReg != 4'h0) begin // @[src/main/scala/peripheral/UART.scala 48:27]
        bitsReg <= _bitsReg_T_1; // @[src/main/scala/peripheral/UART.scala 51:15]
      end else if (io_channel_valid) begin // @[src/main/scala/peripheral/UART.scala 53:30]
        bitsReg <= 4'hb; // @[src/main/scala/peripheral/UART.scala 55:17]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  shiftReg = _RAND_0[10:0];
  _RAND_1 = {1{`RANDOM}};
  cntReg = _RAND_1[19:0];
  _RAND_2 = {1{`RANDOM}};
  bitsReg = _RAND_2[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Buffer(
  input        clock,
  input        reset,
  input        io_in_valid, // @[src/main/scala/peripheral/UART.scala 119:14]
  input  [7:0] io_in_bits, // @[src/main/scala/peripheral/UART.scala 119:14]
  input        io_out_ready, // @[src/main/scala/peripheral/UART.scala 119:14]
  output       io_out_valid, // @[src/main/scala/peripheral/UART.scala 119:14]
  output [7:0] io_out_bits // @[src/main/scala/peripheral/UART.scala 119:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg  stateReg; // @[src/main/scala/peripheral/UART.scala 125:25]
  reg [7:0] dataReg; // @[src/main/scala/peripheral/UART.scala 126:24]
  wire  _io_in_ready_T = ~stateReg; // @[src/main/scala/peripheral/UART.scala 128:27]
  wire  _GEN_1 = io_in_valid | stateReg; // @[src/main/scala/peripheral/UART.scala 132:23 134:16 125:25]
  assign io_out_valid = stateReg; // @[src/main/scala/peripheral/UART.scala 129:28]
  assign io_out_bits = dataReg; // @[src/main/scala/peripheral/UART.scala 141:15]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/peripheral/UART.scala 125:25]
      stateReg <= 1'h0; // @[src/main/scala/peripheral/UART.scala 125:25]
    end else if (_io_in_ready_T) begin // @[src/main/scala/peripheral/UART.scala 131:28]
      stateReg <= _GEN_1;
    end else if (io_out_ready) begin // @[src/main/scala/peripheral/UART.scala 137:24]
      stateReg <= 1'h0; // @[src/main/scala/peripheral/UART.scala 138:16]
    end
    if (reset) begin // @[src/main/scala/peripheral/UART.scala 126:24]
      dataReg <= 8'h0; // @[src/main/scala/peripheral/UART.scala 126:24]
    end else if (_io_in_ready_T) begin // @[src/main/scala/peripheral/UART.scala 131:28]
      if (io_in_valid) begin // @[src/main/scala/peripheral/UART.scala 132:23]
        dataReg <= io_in_bits; // @[src/main/scala/peripheral/UART.scala 133:15]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  stateReg = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  dataReg = _RAND_1[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module BufferedTx(
  input        clock,
  input        reset,
  output       io_txd, // @[src/main/scala/peripheral/UART.scala 148:14]
  input        io_channel_valid, // @[src/main/scala/peripheral/UART.scala 148:14]
  input  [7:0] io_channel_bits // @[src/main/scala/peripheral/UART.scala 148:14]
);
  wire  tx_clock; // @[src/main/scala/peripheral/UART.scala 153:18]
  wire  tx_reset; // @[src/main/scala/peripheral/UART.scala 153:18]
  wire  tx_io_txd; // @[src/main/scala/peripheral/UART.scala 153:18]
  wire  tx_io_channel_ready; // @[src/main/scala/peripheral/UART.scala 153:18]
  wire  tx_io_channel_valid; // @[src/main/scala/peripheral/UART.scala 153:18]
  wire [7:0] tx_io_channel_bits; // @[src/main/scala/peripheral/UART.scala 153:18]
  wire  buf__clock; // @[src/main/scala/peripheral/UART.scala 154:19]
  wire  buf__reset; // @[src/main/scala/peripheral/UART.scala 154:19]
  wire  buf__io_in_valid; // @[src/main/scala/peripheral/UART.scala 154:19]
  wire [7:0] buf__io_in_bits; // @[src/main/scala/peripheral/UART.scala 154:19]
  wire  buf__io_out_ready; // @[src/main/scala/peripheral/UART.scala 154:19]
  wire  buf__io_out_valid; // @[src/main/scala/peripheral/UART.scala 154:19]
  wire [7:0] buf__io_out_bits; // @[src/main/scala/peripheral/UART.scala 154:19]
  Tx tx ( // @[src/main/scala/peripheral/UART.scala 153:18]
    .clock(tx_clock),
    .reset(tx_reset),
    .io_txd(tx_io_txd),
    .io_channel_ready(tx_io_channel_ready),
    .io_channel_valid(tx_io_channel_valid),
    .io_channel_bits(tx_io_channel_bits)
  );
  Buffer buf_ ( // @[src/main/scala/peripheral/UART.scala 154:19]
    .clock(buf__clock),
    .reset(buf__reset),
    .io_in_valid(buf__io_in_valid),
    .io_in_bits(buf__io_in_bits),
    .io_out_ready(buf__io_out_ready),
    .io_out_valid(buf__io_out_valid),
    .io_out_bits(buf__io_out_bits)
  );
  assign io_txd = tx_io_txd; // @[src/main/scala/peripheral/UART.scala 158:10]
  assign tx_clock = clock;
  assign tx_reset = reset;
  assign tx_io_channel_valid = buf__io_out_valid; // @[src/main/scala/peripheral/UART.scala 157:17]
  assign tx_io_channel_bits = buf__io_out_bits; // @[src/main/scala/peripheral/UART.scala 157:17]
  assign buf__clock = clock;
  assign buf__reset = reset;
  assign buf__io_in_valid = io_channel_valid; // @[src/main/scala/peripheral/UART.scala 156:13]
  assign buf__io_in_bits = io_channel_bits; // @[src/main/scala/peripheral/UART.scala 156:13]
  assign buf__io_out_ready = tx_io_channel_ready; // @[src/main/scala/peripheral/UART.scala 157:17]
endmodule
module Uart(
  input         clock,
  input         reset,
  input  [31:0] io_bundle_address, // @[src/main/scala/peripheral/UART.scala 162:14]
  input  [31:0] io_bundle_write_data, // @[src/main/scala/peripheral/UART.scala 162:14]
  input         io_bundle_write_enable, // @[src/main/scala/peripheral/UART.scala 162:14]
  output        io_txd // @[src/main/scala/peripheral/UART.scala 162:14]
);
  wire  tx_clock; // @[src/main/scala/peripheral/UART.scala 172:18]
  wire  tx_reset; // @[src/main/scala/peripheral/UART.scala 172:18]
  wire  tx_io_txd; // @[src/main/scala/peripheral/UART.scala 172:18]
  wire  tx_io_channel_valid; // @[src/main/scala/peripheral/UART.scala 172:18]
  wire [7:0] tx_io_channel_bits; // @[src/main/scala/peripheral/UART.scala 172:18]
  wire  _T_3 = io_bundle_address == 32'h10; // @[src/main/scala/peripheral/UART.scala 188:34]
  wire [31:0] _GEN_5 = io_bundle_address == 32'h10 ? io_bundle_write_data : 32'h0; // @[src/main/scala/peripheral/UART.scala 184:22 188:46 190:26]
  wire  _GEN_7 = io_bundle_address == 32'h8 ? 1'h0 : _T_3; // @[src/main/scala/peripheral/UART.scala 183:23 186:39]
  wire [31:0] _GEN_8 = io_bundle_address == 32'h8 ? 32'h0 : _GEN_5; // @[src/main/scala/peripheral/UART.scala 184:22 186:39]
  wire [31:0] _GEN_11 = io_bundle_write_enable ? _GEN_8 : 32'h0; // @[src/main/scala/peripheral/UART.scala 184:22 185:32]
  BufferedTx tx ( // @[src/main/scala/peripheral/UART.scala 172:18]
    .clock(tx_clock),
    .reset(tx_reset),
    .io_txd(tx_io_txd),
    .io_channel_valid(tx_io_channel_valid),
    .io_channel_bits(tx_io_channel_bits)
  );
  assign io_txd = tx_io_txd; // @[src/main/scala/peripheral/UART.scala 194:10]
  assign tx_clock = clock;
  assign tx_reset = reset;
  assign tx_io_channel_valid = io_bundle_write_enable & _GEN_7; // @[src/main/scala/peripheral/UART.scala 183:23 185:32]
  assign tx_io_channel_bits = _GEN_11[7:0];
endmodule
module InstructionROM(
  input         clock,
  input  [31:0] io_address, // @[src/main/scala/peripheral/InstructionROM.scala 28:14]
  output [31:0] io_data // @[src/main/scala/peripheral/InstructionROM.scala 28:14]
);
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_GARBAGE_ASSIGN
  reg [31:0] mem [0:1049]; // @[src/main/scala/peripheral/InstructionROM.scala 34:16]
  wire  mem_io_data_MPORT_en; // @[src/main/scala/peripheral/InstructionROM.scala 34:16]
  wire [10:0] mem_io_data_MPORT_addr; // @[src/main/scala/peripheral/InstructionROM.scala 34:16]
  wire [31:0] mem_io_data_MPORT_data; // @[src/main/scala/peripheral/InstructionROM.scala 34:16]
  assign mem_io_data_MPORT_en = 1'h1;
  assign mem_io_data_MPORT_addr = io_address[10:0];
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign mem_io_data_MPORT_data = mem[mem_io_data_MPORT_addr]; // @[src/main/scala/peripheral/InstructionROM.scala 34:16]
  `else
  assign mem_io_data_MPORT_data = mem_io_data_MPORT_addr >= 11'h41a ? _RAND_0[31:0] : mem[mem_io_data_MPORT_addr]; // @[src/main/scala/peripheral/InstructionROM.scala 34:16]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign io_data = mem_io_data_MPORT_data; // @[src/main/scala/peripheral/InstructionROM.scala 40:11]
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
  integer initvar;
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  _RAND_0 = {1{`RANDOM}};
`endif // RANDOMIZE_GARBAGE_ASSIGN
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
initial begin
  $readmemh("/workspaces/yatcpu/lab1/verilog/say_goodbye.asmbin.txt", mem);
end
endmodule
module ROMLoader(
  input         clock,
  input         reset,
  output [31:0] io_bundle_address, // @[src/main/scala/peripheral/ROMLoader.scala 21:14]
  output [31:0] io_bundle_write_data, // @[src/main/scala/peripheral/ROMLoader.scala 21:14]
  output        io_bundle_write_enable, // @[src/main/scala/peripheral/ROMLoader.scala 21:14]
  output        io_bundle_write_strobe_0, // @[src/main/scala/peripheral/ROMLoader.scala 21:14]
  output        io_bundle_write_strobe_1, // @[src/main/scala/peripheral/ROMLoader.scala 21:14]
  output        io_bundle_write_strobe_2, // @[src/main/scala/peripheral/ROMLoader.scala 21:14]
  output        io_bundle_write_strobe_3, // @[src/main/scala/peripheral/ROMLoader.scala 21:14]
  output [31:0] io_rom_address, // @[src/main/scala/peripheral/ROMLoader.scala 21:14]
  input  [31:0] io_rom_data, // @[src/main/scala/peripheral/ROMLoader.scala 21:14]
  output        io_load_finished // @[src/main/scala/peripheral/ROMLoader.scala 21:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] address; // @[src/main/scala/peripheral/ROMLoader.scala 31:24]
  reg  valid; // @[src/main/scala/peripheral/ROMLoader.scala 32:22]
  wire [33:0] _GEN_10 = {address, 2'h0}; // @[src/main/scala/peripheral/ROMLoader.scala 41:35]
  wire [34:0] _io_bundle_address_T = {{1'd0}, _GEN_10}; // @[src/main/scala/peripheral/ROMLoader.scala 41:35]
  wire [34:0] _io_bundle_address_T_2 = _io_bundle_address_T + 35'h1000; // @[src/main/scala/peripheral/ROMLoader.scala 41:50]
  wire [31:0] _address_T_1 = address + 32'h1; // @[src/main/scala/peripheral/ROMLoader.scala 43:24]
  wire  _GEN_0 = address == 32'h419 | valid; // @[src/main/scala/peripheral/ROMLoader.scala 44:40 45:13 32:22]
  wire [34:0] _GEN_3 = address <= 32'h419 ? _io_bundle_address_T_2 : 35'h0; // @[src/main/scala/peripheral/ROMLoader.scala 35:21 38:37 41:23]
  assign io_bundle_address = _GEN_3[31:0];
  assign io_bundle_write_data = address <= 32'h419 ? io_rom_data : 32'h0; // @[src/main/scala/peripheral/ROMLoader.scala 36:24 38:37 40:26]
  assign io_bundle_write_enable = address <= 32'h419; // @[src/main/scala/peripheral/ROMLoader.scala 38:16]
  assign io_bundle_write_strobe_0 = address <= 32'h419; // @[src/main/scala/peripheral/ROMLoader.scala 38:16]
  assign io_bundle_write_strobe_1 = address <= 32'h419; // @[src/main/scala/peripheral/ROMLoader.scala 38:16]
  assign io_bundle_write_strobe_2 = address <= 32'h419; // @[src/main/scala/peripheral/ROMLoader.scala 38:16]
  assign io_bundle_write_strobe_3 = address <= 32'h419; // @[src/main/scala/peripheral/ROMLoader.scala 38:16]
  assign io_rom_address = address; // @[src/main/scala/peripheral/ROMLoader.scala 49:18]
  assign io_load_finished = valid; // @[src/main/scala/peripheral/ROMLoader.scala 48:20]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/peripheral/ROMLoader.scala 31:24]
      address <= 32'h0; // @[src/main/scala/peripheral/ROMLoader.scala 31:24]
    end else if (address <= 32'h419) begin // @[src/main/scala/peripheral/ROMLoader.scala 38:37]
      address <= _address_T_1; // @[src/main/scala/peripheral/ROMLoader.scala 43:13]
    end
    if (reset) begin // @[src/main/scala/peripheral/ROMLoader.scala 32:22]
      valid <= 1'h0; // @[src/main/scala/peripheral/ROMLoader.scala 32:22]
    end else if (address <= 32'h419) begin // @[src/main/scala/peripheral/ROMLoader.scala 38:37]
      valid <= _GEN_0;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  address = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  valid = _RAND_1[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module RegisterFile(
  input         clock,
  input         reset,
  input         io_write_enable, // @[src/main/scala/riscv/core/RegisterFile.scala 32:14]
  input  [4:0]  io_write_address, // @[src/main/scala/riscv/core/RegisterFile.scala 32:14]
  input  [31:0] io_write_data, // @[src/main/scala/riscv/core/RegisterFile.scala 32:14]
  input  [4:0]  io_read_address1, // @[src/main/scala/riscv/core/RegisterFile.scala 32:14]
  input  [4:0]  io_read_address2, // @[src/main/scala/riscv/core/RegisterFile.scala 32:14]
  output [31:0] io_read_data1, // @[src/main/scala/riscv/core/RegisterFile.scala 32:14]
  output [31:0] io_read_data2 // @[src/main/scala/riscv/core/RegisterFile.scala 32:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] registers_0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_1; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_2; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_3; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_4; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_5; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_6; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_7; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_8; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_9; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_10; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_11; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_12; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_13; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_14; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_15; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_16; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_17; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_18; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_19; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_20; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_21; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_22; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_23; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_24; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_25; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_26; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_27; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_28; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_29; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_30; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  reg [31:0] registers_31; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
  wire  _io_read_data1_T = io_read_address1 == 5'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 54:22]
  wire [31:0] _GEN_97 = 5'h1 == io_read_address1 ? registers_1 : registers_0; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_98 = 5'h2 == io_read_address1 ? registers_2 : _GEN_97; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_99 = 5'h3 == io_read_address1 ? registers_3 : _GEN_98; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_100 = 5'h4 == io_read_address1 ? registers_4 : _GEN_99; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_101 = 5'h5 == io_read_address1 ? registers_5 : _GEN_100; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_102 = 5'h6 == io_read_address1 ? registers_6 : _GEN_101; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_103 = 5'h7 == io_read_address1 ? registers_7 : _GEN_102; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_104 = 5'h8 == io_read_address1 ? registers_8 : _GEN_103; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_105 = 5'h9 == io_read_address1 ? registers_9 : _GEN_104; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_106 = 5'ha == io_read_address1 ? registers_10 : _GEN_105; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_107 = 5'hb == io_read_address1 ? registers_11 : _GEN_106; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_108 = 5'hc == io_read_address1 ? registers_12 : _GEN_107; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_109 = 5'hd == io_read_address1 ? registers_13 : _GEN_108; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_110 = 5'he == io_read_address1 ? registers_14 : _GEN_109; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_111 = 5'hf == io_read_address1 ? registers_15 : _GEN_110; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_112 = 5'h10 == io_read_address1 ? registers_16 : _GEN_111; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_113 = 5'h11 == io_read_address1 ? registers_17 : _GEN_112; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_114 = 5'h12 == io_read_address1 ? registers_18 : _GEN_113; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_115 = 5'h13 == io_read_address1 ? registers_19 : _GEN_114; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_116 = 5'h14 == io_read_address1 ? registers_20 : _GEN_115; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_117 = 5'h15 == io_read_address1 ? registers_21 : _GEN_116; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_118 = 5'h16 == io_read_address1 ? registers_22 : _GEN_117; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_119 = 5'h17 == io_read_address1 ? registers_23 : _GEN_118; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_120 = 5'h18 == io_read_address1 ? registers_24 : _GEN_119; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_121 = 5'h19 == io_read_address1 ? registers_25 : _GEN_120; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_122 = 5'h1a == io_read_address1 ? registers_26 : _GEN_121; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_123 = 5'h1b == io_read_address1 ? registers_27 : _GEN_122; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_124 = 5'h1c == io_read_address1 ? registers_28 : _GEN_123; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_125 = 5'h1d == io_read_address1 ? registers_29 : _GEN_124; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_126 = 5'h1e == io_read_address1 ? registers_30 : _GEN_125; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire [31:0] _GEN_127 = 5'h1f == io_read_address1 ? registers_31 : _GEN_126; // @[src/main/scala/riscv/core/RegisterFile.scala 53:{23,23}]
  wire  _io_read_data2_T = io_read_address2 == 5'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 60:22]
  wire [31:0] _GEN_129 = 5'h1 == io_read_address2 ? registers_1 : registers_0; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_130 = 5'h2 == io_read_address2 ? registers_2 : _GEN_129; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_131 = 5'h3 == io_read_address2 ? registers_3 : _GEN_130; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_132 = 5'h4 == io_read_address2 ? registers_4 : _GEN_131; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_133 = 5'h5 == io_read_address2 ? registers_5 : _GEN_132; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_134 = 5'h6 == io_read_address2 ? registers_6 : _GEN_133; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_135 = 5'h7 == io_read_address2 ? registers_7 : _GEN_134; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_136 = 5'h8 == io_read_address2 ? registers_8 : _GEN_135; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_137 = 5'h9 == io_read_address2 ? registers_9 : _GEN_136; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_138 = 5'ha == io_read_address2 ? registers_10 : _GEN_137; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_139 = 5'hb == io_read_address2 ? registers_11 : _GEN_138; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_140 = 5'hc == io_read_address2 ? registers_12 : _GEN_139; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_141 = 5'hd == io_read_address2 ? registers_13 : _GEN_140; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_142 = 5'he == io_read_address2 ? registers_14 : _GEN_141; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_143 = 5'hf == io_read_address2 ? registers_15 : _GEN_142; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_144 = 5'h10 == io_read_address2 ? registers_16 : _GEN_143; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_145 = 5'h11 == io_read_address2 ? registers_17 : _GEN_144; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_146 = 5'h12 == io_read_address2 ? registers_18 : _GEN_145; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_147 = 5'h13 == io_read_address2 ? registers_19 : _GEN_146; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_148 = 5'h14 == io_read_address2 ? registers_20 : _GEN_147; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_149 = 5'h15 == io_read_address2 ? registers_21 : _GEN_148; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_150 = 5'h16 == io_read_address2 ? registers_22 : _GEN_149; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_151 = 5'h17 == io_read_address2 ? registers_23 : _GEN_150; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_152 = 5'h18 == io_read_address2 ? registers_24 : _GEN_151; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_153 = 5'h19 == io_read_address2 ? registers_25 : _GEN_152; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_154 = 5'h1a == io_read_address2 ? registers_26 : _GEN_153; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_155 = 5'h1b == io_read_address2 ? registers_27 : _GEN_154; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_156 = 5'h1c == io_read_address2 ? registers_28 : _GEN_155; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_157 = 5'h1d == io_read_address2 ? registers_29 : _GEN_156; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_158 = 5'h1e == io_read_address2 ? registers_30 : _GEN_157; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  wire [31:0] _GEN_159 = 5'h1f == io_read_address2 ? registers_31 : _GEN_158; // @[src/main/scala/riscv/core/RegisterFile.scala 59:{23,23}]
  assign io_read_data1 = _io_read_data1_T ? 32'h0 : _GEN_127; // @[src/main/scala/riscv/core/RegisterFile.scala 53:23]
  assign io_read_data2 = _io_read_data2_T ? 32'h0 : _GEN_159; // @[src/main/scala/riscv/core/RegisterFile.scala 59:23]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_0 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'h0 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_0 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_1 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'h1 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_1 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_2 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'h2 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_2 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_3 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'h3 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_3 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_4 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'h4 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_4 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_5 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'h5 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_5 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_6 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'h6 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_6 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_7 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'h7 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_7 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_8 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'h8 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_8 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_9 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'h9 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_9 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_10 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'ha == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_10 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_11 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'hb == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_11 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_12 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'hc == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_12 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_13 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'hd == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_13 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_14 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'he == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_14 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_15 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'hf == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_15 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_16 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'h10 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_16 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_17 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'h11 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_17 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_18 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'h12 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_18 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_19 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'h13 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_19 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_20 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'h14 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_20 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_21 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'h15 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_21 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_22 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'h16 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_22 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_23 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'h17 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_23 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_24 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'h18 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_24 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_25 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'h19 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_25 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_26 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'h1a == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_26 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_27 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'h1b == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_27 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_28 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'h1c == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_28 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_29 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'h1d == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_29 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_30 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'h1e == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_30 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
      registers_31 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 45:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 47:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 48:55]
        if (5'h1f == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
          registers_31 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 49:35]
        end
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  registers_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  registers_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  registers_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  registers_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  registers_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  registers_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  registers_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  registers_7 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  registers_8 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  registers_9 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  registers_10 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  registers_11 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  registers_12 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  registers_13 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  registers_14 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  registers_15 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  registers_16 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  registers_17 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  registers_18 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  registers_19 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  registers_20 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  registers_21 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  registers_22 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  registers_23 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  registers_24 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  registers_25 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  registers_26 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  registers_27 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  registers_28 = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  registers_29 = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  registers_30 = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  registers_31 = _RAND_31[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module InstructionFetch(
  input         clock,
  input         reset,
  input         io_jump_flag_id, // @[src/main/scala/riscv/core/InstructionFetch.scala 25:14]
  input  [31:0] io_jump_address_id, // @[src/main/scala/riscv/core/InstructionFetch.scala 25:14]
  input  [31:0] io_instruction_read_data, // @[src/main/scala/riscv/core/InstructionFetch.scala 25:14]
  input         io_instruction_valid, // @[src/main/scala/riscv/core/InstructionFetch.scala 25:14]
  output [31:0] io_instruction_address, // @[src/main/scala/riscv/core/InstructionFetch.scala 25:14]
  output [31:0] io_instruction // @[src/main/scala/riscv/core/InstructionFetch.scala 25:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] pc; // @[src/main/scala/riscv/core/InstructionFetch.scala 34:19]
  wire [31:0] _pc_T_1 = pc + 32'h4; // @[src/main/scala/riscv/core/InstructionFetch.scala 42:16]
  assign io_instruction_address = pc; // @[src/main/scala/riscv/core/InstructionFetch.scala 53:26]
  assign io_instruction = io_instruction_valid ? io_instruction_read_data : 32'h13; // @[src/main/scala/riscv/core/InstructionFetch.scala 36:30 37:20 51:20]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/riscv/core/InstructionFetch.scala 34:19]
      pc <= 32'h1000; // @[src/main/scala/riscv/core/InstructionFetch.scala 34:19]
    end else if (io_instruction_valid) begin // @[src/main/scala/riscv/core/InstructionFetch.scala 36:30]
      if (io_jump_flag_id) begin // @[src/main/scala/riscv/core/InstructionFetch.scala 39:27]
        pc <= io_jump_address_id; // @[src/main/scala/riscv/core/InstructionFetch.scala 40:10]
      end else begin
        pc <= _pc_T_1; // @[src/main/scala/riscv/core/InstructionFetch.scala 42:10]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  pc = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module InstructionDecode(
  input  [31:0] io_instruction, // @[src/main/scala/riscv/core/InstructionDecode.scala 136:14]
  output [4:0]  io_regs_reg1_read_address, // @[src/main/scala/riscv/core/InstructionDecode.scala 136:14]
  output [4:0]  io_regs_reg2_read_address, // @[src/main/scala/riscv/core/InstructionDecode.scala 136:14]
  output [31:0] io_ex_immediate, // @[src/main/scala/riscv/core/InstructionDecode.scala 136:14]
  output        io_ex_aluop1_source, // @[src/main/scala/riscv/core/InstructionDecode.scala 136:14]
  output        io_ex_aluop2_source, // @[src/main/scala/riscv/core/InstructionDecode.scala 136:14]
  output        io_memory_read_enable, // @[src/main/scala/riscv/core/InstructionDecode.scala 136:14]
  output        io_memory_write_enable, // @[src/main/scala/riscv/core/InstructionDecode.scala 136:14]
  output [1:0]  io_wb_reg_write_source, // @[src/main/scala/riscv/core/InstructionDecode.scala 136:14]
  output        io_reg_write_enable, // @[src/main/scala/riscv/core/InstructionDecode.scala 136:14]
  output [4:0]  io_reg_write_address // @[src/main/scala/riscv/core/InstructionDecode.scala 136:14]
);
  wire [6:0] opcode = io_instruction[6:0]; // @[src/main/scala/riscv/core/InstructionDecode.scala 150:30]
  wire [4:0] rd = io_instruction[11:7]; // @[src/main/scala/riscv/core/InstructionDecode.scala 153:26]
  wire [4:0] rs1 = io_instruction[19:15]; // @[src/main/scala/riscv/core/InstructionDecode.scala 154:27]
  wire  _io_regs_reg1_read_address_T = opcode == 7'h37; // @[src/main/scala/riscv/core/InstructionDecode.scala 157:43]
  wire [19:0] _immediate_T_2 = io_instruction[31] ? 20'hfffff : 20'h0; // @[src/main/scala/riscv/core/InstructionDecode.scala 161:13]
  wire [31:0] _immediate_T_4 = {_immediate_T_2,io_instruction[31:20]}; // @[src/main/scala/riscv/core/InstructionDecode.scala 161:8]
  wire [20:0] _immediate_T_7 = io_instruction[31] ? 21'h1fffff : 21'h0; // @[src/main/scala/riscv/core/InstructionDecode.scala 163:37]
  wire [31:0] _immediate_T_9 = {_immediate_T_7,io_instruction[30:20]}; // @[src/main/scala/riscv/core/InstructionDecode.scala 163:32]
  wire [31:0] _immediate_T_25 = {_immediate_T_7,io_instruction[30:25],rd}; // @[src/main/scala/riscv/core/InstructionDecode.scala 166:32]
  wire [31:0] _immediate_T_32 = {_immediate_T_2,io_instruction[7],io_instruction[30:25],io_instruction[11:8],1'h0}; // @[src/main/scala/riscv/core/InstructionDecode.scala 167:32]
  wire [31:0] _immediate_T_34 = {io_instruction[31:12],12'h0}; // @[src/main/scala/riscv/core/InstructionDecode.scala 168:30]
  wire [11:0] _immediate_T_39 = io_instruction[31] ? 12'hfff : 12'h0; // @[src/main/scala/riscv/core/InstructionDecode.scala 170:35]
  wire [31:0] _immediate_T_43 = {_immediate_T_39,io_instruction[19:12],io_instruction[20],io_instruction[30:21],1'h0}; // @[src/main/scala/riscv/core/InstructionDecode.scala 170:30]
  wire [31:0] _immediate_T_45 = 7'h13 == opcode ? _immediate_T_9 : _immediate_T_4; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _immediate_T_47 = 7'h3 == opcode ? _immediate_T_9 : _immediate_T_45; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _immediate_T_49 = 7'h67 == opcode ? _immediate_T_9 : _immediate_T_47; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _immediate_T_51 = 7'h23 == opcode ? _immediate_T_25 : _immediate_T_49; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _immediate_T_53 = 7'h63 == opcode ? _immediate_T_32 : _immediate_T_51; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _immediate_T_55 = 7'h37 == opcode ? _immediate_T_34 : _immediate_T_53; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _immediate_T_57 = 7'h17 == opcode ? _immediate_T_34 : _immediate_T_55; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _io_ex_aluop1_source_T = opcode == 7'h17; // @[src/main/scala/riscv/core/InstructionDecode.scala 175:12]
  wire  _io_ex_aluop1_source_T_3 = opcode == 7'h6f; // @[src/main/scala/riscv/core/InstructionDecode.scala 175:78]
  wire  _io_ex_aluop2_source_T = opcode == 7'h33; // @[src/main/scala/riscv/core/InstructionDecode.scala 183:12]
  wire  _io_memory_read_enable_T = opcode == 7'h3; // @[src/main/scala/riscv/core/InstructionDecode.scala 189:35]
  wire [1:0] _io_wb_reg_write_source_T_1 = 7'h3 == opcode ? 2'h1 : 2'h0; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [1:0] _io_wb_reg_write_source_T_3 = 7'h6f == opcode ? 2'h3 : _io_wb_reg_write_source_T_1; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _io_reg_write_enable_T_4 = _io_ex_aluop2_source_T | opcode == 7'h13 | _io_memory_read_enable_T; // @[src/main/scala/riscv/core/InstructionDecode.scala 211:94]
  wire  _io_reg_write_enable_T_10 = _io_reg_write_enable_T_4 | _io_ex_aluop1_source_T | _io_regs_reg1_read_address_T |
    _io_ex_aluop1_source_T_3; // @[src/main/scala/riscv/core/InstructionDecode.scala 212:105]
  assign io_regs_reg1_read_address = opcode == 7'h37 ? 5'h0 : rs1; // @[src/main/scala/riscv/core/InstructionDecode.scala 157:35]
  assign io_regs_reg2_read_address = io_instruction[24:20]; // @[src/main/scala/riscv/core/InstructionDecode.scala 155:27]
  assign io_ex_immediate = 7'h6f == opcode ? _immediate_T_43 : _immediate_T_57; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  assign io_ex_aluop1_source = opcode == 7'h17 | opcode == 7'h63 | opcode == 7'h6f; // @[src/main/scala/riscv/core/InstructionDecode.scala 175:68]
  assign io_ex_aluop2_source = _io_ex_aluop2_source_T ? 1'h0 : 1'h1; // @[src/main/scala/riscv/core/InstructionDecode.scala 182:29]
  assign io_memory_read_enable = opcode == 7'h3; // @[src/main/scala/riscv/core/InstructionDecode.scala 189:35]
  assign io_memory_write_enable = opcode == 7'h23; // @[src/main/scala/riscv/core/InstructionDecode.scala 192:36]
  assign io_wb_reg_write_source = 7'h67 == opcode ? 2'h3 : _io_wb_reg_write_source_T_3; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  assign io_reg_write_enable = _io_reg_write_enable_T_10 | opcode == 7'h67; // @[src/main/scala/riscv/core/InstructionDecode.scala 213:35]
  assign io_reg_write_address = io_instruction[11:7]; // @[src/main/scala/riscv/core/InstructionDecode.scala 214:41]
endmodule
module ALU(
  input  [3:0]  io_func, // @[src/main/scala/riscv/core/ALU.scala 27:14]
  input  [31:0] io_op1, // @[src/main/scala/riscv/core/ALU.scala 27:14]
  input  [31:0] io_op2, // @[src/main/scala/riscv/core/ALU.scala 27:14]
  output [31:0] io_result // @[src/main/scala/riscv/core/ALU.scala 27:14]
);
  wire [31:0] _io_result_T_1 = io_op1 + io_op2; // @[src/main/scala/riscv/core/ALU.scala 39:27]
  wire [31:0] _io_result_T_3 = io_op1 - io_op2; // @[src/main/scala/riscv/core/ALU.scala 42:27]
  wire [62:0] _GEN_10 = {{31'd0}, io_op1}; // @[src/main/scala/riscv/core/ALU.scala 45:27]
  wire [62:0] _io_result_T_5 = _GEN_10 << io_op2[4:0]; // @[src/main/scala/riscv/core/ALU.scala 45:27]
  wire [31:0] _io_result_T_6 = io_op1; // @[src/main/scala/riscv/core/ALU.scala 48:27]
  wire [31:0] _io_result_T_7 = io_op2; // @[src/main/scala/riscv/core/ALU.scala 48:43]
  wire [31:0] _io_result_T_9 = io_op1 ^ io_op2; // @[src/main/scala/riscv/core/ALU.scala 51:27]
  wire [31:0] _io_result_T_10 = io_op1 | io_op2; // @[src/main/scala/riscv/core/ALU.scala 54:27]
  wire [31:0] _io_result_T_11 = io_op1 & io_op2; // @[src/main/scala/riscv/core/ALU.scala 57:27]
  wire [31:0] _io_result_T_13 = io_op1 >> io_op2[4:0]; // @[src/main/scala/riscv/core/ALU.scala 60:27]
  wire [31:0] _io_result_T_17 = $signed(io_op1) >>> io_op2[4:0]; // @[src/main/scala/riscv/core/ALU.scala 63:52]
  wire  _GEN_0 = 4'ha == io_func & io_op1 < io_op2; // @[src/main/scala/riscv/core/ALU.scala 36:13 37:19 66:17]
  wire [31:0] _GEN_1 = 4'h9 == io_func ? _io_result_T_17 : {{31'd0}, _GEN_0}; // @[src/main/scala/riscv/core/ALU.scala 37:19 63:17]
  wire [31:0] _GEN_2 = 4'h8 == io_func ? _io_result_T_13 : _GEN_1; // @[src/main/scala/riscv/core/ALU.scala 37:19 60:17]
  wire [31:0] _GEN_3 = 4'h7 == io_func ? _io_result_T_11 : _GEN_2; // @[src/main/scala/riscv/core/ALU.scala 37:19 57:17]
  wire [31:0] _GEN_4 = 4'h6 == io_func ? _io_result_T_10 : _GEN_3; // @[src/main/scala/riscv/core/ALU.scala 37:19 54:17]
  wire [31:0] _GEN_5 = 4'h5 == io_func ? _io_result_T_9 : _GEN_4; // @[src/main/scala/riscv/core/ALU.scala 37:19 51:17]
  wire [31:0] _GEN_6 = 4'h4 == io_func ? {{31'd0}, $signed(_io_result_T_6) < $signed(_io_result_T_7)} : _GEN_5; // @[src/main/scala/riscv/core/ALU.scala 37:19 48:17]
  wire [62:0] _GEN_7 = 4'h3 == io_func ? _io_result_T_5 : {{31'd0}, _GEN_6}; // @[src/main/scala/riscv/core/ALU.scala 37:19 45:17]
  wire [62:0] _GEN_8 = 4'h2 == io_func ? {{31'd0}, _io_result_T_3} : _GEN_7; // @[src/main/scala/riscv/core/ALU.scala 37:19 42:17]
  wire [62:0] _GEN_9 = 4'h1 == io_func ? {{31'd0}, _io_result_T_1} : _GEN_8; // @[src/main/scala/riscv/core/ALU.scala 37:19 39:17]
  assign io_result = _GEN_9[31:0];
endmodule
module ALUControl(
  input  [6:0] io_opcode, // @[src/main/scala/riscv/core/ALUControl.scala 21:14]
  input  [2:0] io_funct3, // @[src/main/scala/riscv/core/ALUControl.scala 21:14]
  input  [6:0] io_funct7, // @[src/main/scala/riscv/core/ALUControl.scala 21:14]
  output [3:0] io_alu_funct // @[src/main/scala/riscv/core/ALUControl.scala 21:14]
);
  wire [3:0] _io_alu_funct_T_1 = io_funct7[5] ? 4'h9 : 4'h8; // @[src/main/scala/riscv/core/ALUControl.scala 44:39]
  wire [1:0] _io_alu_funct_T_3 = 3'h1 == io_funct3 ? 2'h3 : 2'h1; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [2:0] _io_alu_funct_T_5 = 3'h2 == io_funct3 ? 3'h4 : {{1'd0}, _io_alu_funct_T_3}; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_7 = 3'h3 == io_funct3 ? 4'ha : {{1'd0}, _io_alu_funct_T_5}; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_9 = 3'h4 == io_funct3 ? 4'h5 : _io_alu_funct_T_7; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_11 = 3'h6 == io_funct3 ? 4'h6 : _io_alu_funct_T_9; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_13 = 3'h7 == io_funct3 ? 4'h7 : _io_alu_funct_T_11; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_15 = 3'h5 == io_funct3 ? _io_alu_funct_T_1 : _io_alu_funct_T_13; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [1:0] _io_alu_funct_T_17 = io_funct7[5] ? 2'h2 : 2'h1; // @[src/main/scala/riscv/core/ALUControl.scala 53:43]
  wire [1:0] _io_alu_funct_T_21 = 3'h1 == io_funct3 ? 2'h3 : _io_alu_funct_T_17; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [2:0] _io_alu_funct_T_23 = 3'h2 == io_funct3 ? 3'h4 : {{1'd0}, _io_alu_funct_T_21}; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_25 = 3'h3 == io_funct3 ? 4'ha : {{1'd0}, _io_alu_funct_T_23}; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_27 = 3'h4 == io_funct3 ? 4'h5 : _io_alu_funct_T_25; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_29 = 3'h6 == io_funct3 ? 4'h6 : _io_alu_funct_T_27; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_31 = 3'h7 == io_funct3 ? 4'h7 : _io_alu_funct_T_29; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_33 = 3'h5 == io_funct3 ? _io_alu_funct_T_1 : _io_alu_funct_T_31; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _GEN_1 = 7'h37 == io_opcode | 7'h17 == io_opcode; // @[src/main/scala/riscv/core/ALUControl.scala 31:21 80:20]
  wire  _GEN_2 = 7'h67 == io_opcode | _GEN_1; // @[src/main/scala/riscv/core/ALUControl.scala 31:21 77:20]
  wire  _GEN_3 = 7'h6f == io_opcode | _GEN_2; // @[src/main/scala/riscv/core/ALUControl.scala 31:21 74:20]
  wire  _GEN_4 = 7'h23 == io_opcode | _GEN_3; // @[src/main/scala/riscv/core/ALUControl.scala 31:21 71:20]
  wire  _GEN_5 = 7'h3 == io_opcode | _GEN_4; // @[src/main/scala/riscv/core/ALUControl.scala 31:21 68:20]
  wire  _GEN_6 = 7'h63 == io_opcode | _GEN_5; // @[src/main/scala/riscv/core/ALUControl.scala 31:21 65:20]
  wire [3:0] _GEN_7 = 7'h33 == io_opcode ? _io_alu_funct_T_33 : {{3'd0}, _GEN_6}; // @[src/main/scala/riscv/core/ALUControl.scala 31:21 49:20]
  assign io_alu_funct = 7'h13 == io_opcode ? _io_alu_funct_T_15 : _GEN_7; // @[src/main/scala/riscv/core/ALUControl.scala 31:21 33:20]
endmodule
module Execute(
  input  [31:0] io_instruction, // @[src/main/scala/riscv/core/Execute.scala 22:14]
  input  [31:0] io_instruction_address, // @[src/main/scala/riscv/core/Execute.scala 22:14]
  input  [31:0] io_reg1_data, // @[src/main/scala/riscv/core/Execute.scala 22:14]
  input  [31:0] io_reg2_data, // @[src/main/scala/riscv/core/Execute.scala 22:14]
  input  [31:0] io_immediate, // @[src/main/scala/riscv/core/Execute.scala 22:14]
  input         io_aluop1_source, // @[src/main/scala/riscv/core/Execute.scala 22:14]
  input         io_aluop2_source, // @[src/main/scala/riscv/core/Execute.scala 22:14]
  output [31:0] io_mem_alu_result, // @[src/main/scala/riscv/core/Execute.scala 22:14]
  output        io_if_jump_flag, // @[src/main/scala/riscv/core/Execute.scala 22:14]
  output [31:0] io_if_jump_address // @[src/main/scala/riscv/core/Execute.scala 22:14]
);
  wire [3:0] alu_io_func; // @[src/main/scala/riscv/core/Execute.scala 42:19]
  wire [31:0] alu_io_op1; // @[src/main/scala/riscv/core/Execute.scala 42:19]
  wire [31:0] alu_io_op2; // @[src/main/scala/riscv/core/Execute.scala 42:19]
  wire [31:0] alu_io_result; // @[src/main/scala/riscv/core/Execute.scala 42:19]
  wire [6:0] alu_ctrl_io_opcode; // @[src/main/scala/riscv/core/Execute.scala 43:24]
  wire [2:0] alu_ctrl_io_funct3; // @[src/main/scala/riscv/core/Execute.scala 43:24]
  wire [6:0] alu_ctrl_io_funct7; // @[src/main/scala/riscv/core/Execute.scala 43:24]
  wire [3:0] alu_ctrl_io_alu_funct; // @[src/main/scala/riscv/core/Execute.scala 43:24]
  wire [6:0] opcode = io_instruction[6:0]; // @[src/main/scala/riscv/core/Execute.scala 36:30]
  wire [2:0] funct3 = io_instruction[14:12]; // @[src/main/scala/riscv/core/Execute.scala 37:30]
  wire  _alu_io_op1_T = ~io_aluop1_source; // @[src/main/scala/riscv/core/Execute.scala 52:20]
  wire  _alu_io_op2_T = ~io_aluop2_source; // @[src/main/scala/riscv/core/Execute.scala 59:20]
  wire  _io_if_jump_flag_T_1 = opcode == 7'h67; // @[src/main/scala/riscv/core/Execute.scala 76:13]
  wire  _io_if_jump_flag_T_2 = opcode == 7'h6f | _io_if_jump_flag_T_1; // @[src/main/scala/riscv/core/Execute.scala 75:50]
  wire  _io_if_jump_flag_T_4 = io_reg1_data == io_reg2_data; // @[src/main/scala/riscv/core/Execute.scala 81:48]
  wire  _io_if_jump_flag_T_5 = io_reg1_data != io_reg2_data; // @[src/main/scala/riscv/core/Execute.scala 82:48]
  wire  _io_if_jump_flag_T_8 = $signed(io_reg1_data) < $signed(io_reg2_data); // @[src/main/scala/riscv/core/Execute.scala 83:55]
  wire  _io_if_jump_flag_T_11 = $signed(io_reg1_data) >= $signed(io_reg2_data); // @[src/main/scala/riscv/core/Execute.scala 84:55]
  wire  _io_if_jump_flag_T_12 = io_reg1_data < io_reg2_data; // @[src/main/scala/riscv/core/Execute.scala 85:56]
  wire  _io_if_jump_flag_T_13 = io_reg1_data >= io_reg2_data; // @[src/main/scala/riscv/core/Execute.scala 86:56]
  wire  _io_if_jump_flag_T_17 = 3'h1 == funct3 ? _io_if_jump_flag_T_5 : 3'h0 == funct3 & _io_if_jump_flag_T_4; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _io_if_jump_flag_T_19 = 3'h4 == funct3 ? _io_if_jump_flag_T_8 : _io_if_jump_flag_T_17; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _io_if_jump_flag_T_21 = 3'h5 == funct3 ? _io_if_jump_flag_T_11 : _io_if_jump_flag_T_19; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _io_if_jump_flag_T_23 = 3'h6 == funct3 ? _io_if_jump_flag_T_12 : _io_if_jump_flag_T_21; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _io_if_jump_flag_T_25 = 3'h7 == funct3 ? _io_if_jump_flag_T_13 : _io_if_jump_flag_T_23; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _io_if_jump_flag_T_26 = opcode == 7'h63 & _io_if_jump_flag_T_25; // @[src/main/scala/riscv/core/Execute.scala 77:37]
  wire [31:0] _io_if_jump_address_T_1 = _io_if_jump_flag_T_1 ? io_reg1_data : io_instruction_address; // @[src/main/scala/riscv/core/Execute.scala 89:43]
  ALU alu ( // @[src/main/scala/riscv/core/Execute.scala 42:19]
    .io_func(alu_io_func),
    .io_op1(alu_io_op1),
    .io_op2(alu_io_op2),
    .io_result(alu_io_result)
  );
  ALUControl alu_ctrl ( // @[src/main/scala/riscv/core/Execute.scala 43:24]
    .io_opcode(alu_ctrl_io_opcode),
    .io_funct3(alu_ctrl_io_funct3),
    .io_funct7(alu_ctrl_io_funct7),
    .io_alu_funct(alu_ctrl_io_alu_funct)
  );
  assign io_mem_alu_result = alu_io_result; // @[src/main/scala/riscv/core/Execute.scala 74:21]
  assign io_if_jump_flag = _io_if_jump_flag_T_2 | _io_if_jump_flag_T_26; // @[src/main/scala/riscv/core/Execute.scala 76:36]
  assign io_if_jump_address = io_immediate + _io_if_jump_address_T_1; // @[src/main/scala/riscv/core/Execute.scala 89:38]
  assign alu_io_func = alu_ctrl_io_alu_funct; // @[src/main/scala/riscv/core/Execute.scala 65:13]
  assign alu_io_op1 = _alu_io_op1_T ? io_reg1_data : io_instruction_address; // @[src/main/scala/riscv/core/Execute.scala 51:18]
  assign alu_io_op2 = _alu_io_op2_T ? io_reg2_data : io_immediate; // @[src/main/scala/riscv/core/Execute.scala 58:18]
  assign alu_ctrl_io_opcode = io_instruction[6:0]; // @[src/main/scala/riscv/core/Execute.scala 36:30]
  assign alu_ctrl_io_funct3 = io_instruction[14:12]; // @[src/main/scala/riscv/core/Execute.scala 37:30]
  assign alu_ctrl_io_funct7 = io_instruction[31:25]; // @[src/main/scala/riscv/core/Execute.scala 38:30]
endmodule
module MemoryAccess(
  input  [31:0] io_alu_result, // @[src/main/scala/riscv/core/MemoryAccess.scala 23:14]
  input  [31:0] io_reg2_data, // @[src/main/scala/riscv/core/MemoryAccess.scala 23:14]
  input         io_memory_read_enable, // @[src/main/scala/riscv/core/MemoryAccess.scala 23:14]
  input         io_memory_write_enable, // @[src/main/scala/riscv/core/MemoryAccess.scala 23:14]
  input  [2:0]  io_funct3, // @[src/main/scala/riscv/core/MemoryAccess.scala 23:14]
  output [31:0] io_wb_memory_read_data, // @[src/main/scala/riscv/core/MemoryAccess.scala 23:14]
  output [31:0] io_memory_bundle_address, // @[src/main/scala/riscv/core/MemoryAccess.scala 23:14]
  output [31:0] io_memory_bundle_write_data, // @[src/main/scala/riscv/core/MemoryAccess.scala 23:14]
  output        io_memory_bundle_write_enable, // @[src/main/scala/riscv/core/MemoryAccess.scala 23:14]
  output        io_memory_bundle_write_strobe_0, // @[src/main/scala/riscv/core/MemoryAccess.scala 23:14]
  output        io_memory_bundle_write_strobe_1, // @[src/main/scala/riscv/core/MemoryAccess.scala 23:14]
  output        io_memory_bundle_write_strobe_2, // @[src/main/scala/riscv/core/MemoryAccess.scala 23:14]
  output        io_memory_bundle_write_strobe_3, // @[src/main/scala/riscv/core/MemoryAccess.scala 23:14]
  input  [31:0] io_memory_bundle_read_data // @[src/main/scala/riscv/core/MemoryAccess.scala 23:14]
);
  wire [1:0] mem_address_index = io_alu_result[1:0]; // @[src/main/scala/riscv/core/MemoryAccess.scala 34:40]
  wire [23:0] _io_wb_memory_read_data_T_2 = io_memory_bundle_read_data[31] ? 24'hffffff : 24'h0; // @[src/main/scala/riscv/core/MemoryAccess.scala 50:19]
  wire [31:0] _io_wb_memory_read_data_T_4 = {_io_wb_memory_read_data_T_2,io_memory_bundle_read_data[31:24]}; // @[src/main/scala/riscv/core/MemoryAccess.scala 50:14]
  wire [23:0] _io_wb_memory_read_data_T_7 = io_memory_bundle_read_data[7] ? 24'hffffff : 24'h0; // @[src/main/scala/riscv/core/MemoryAccess.scala 52:28]
  wire [31:0] _io_wb_memory_read_data_T_9 = {_io_wb_memory_read_data_T_7,io_memory_bundle_read_data[7:0]}; // @[src/main/scala/riscv/core/MemoryAccess.scala 52:23]
  wire [23:0] _io_wb_memory_read_data_T_12 = io_memory_bundle_read_data[15] ? 24'hffffff : 24'h0; // @[src/main/scala/riscv/core/MemoryAccess.scala 53:28]
  wire [31:0] _io_wb_memory_read_data_T_14 = {_io_wb_memory_read_data_T_12,io_memory_bundle_read_data[15:8]}; // @[src/main/scala/riscv/core/MemoryAccess.scala 53:23]
  wire [23:0] _io_wb_memory_read_data_T_17 = io_memory_bundle_read_data[23] ? 24'hffffff : 24'h0; // @[src/main/scala/riscv/core/MemoryAccess.scala 54:28]
  wire [31:0] _io_wb_memory_read_data_T_19 = {_io_wb_memory_read_data_T_17,io_memory_bundle_read_data[23:16]}; // @[src/main/scala/riscv/core/MemoryAccess.scala 54:23]
  wire  _io_wb_memory_read_data_T_20 = 2'h0 == mem_address_index; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_21 = 2'h0 == mem_address_index ? _io_wb_memory_read_data_T_9 :
    _io_wb_memory_read_data_T_4; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _io_wb_memory_read_data_T_22 = 2'h1 == mem_address_index; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_23 = 2'h1 == mem_address_index ? _io_wb_memory_read_data_T_14 :
    _io_wb_memory_read_data_T_21; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _io_wb_memory_read_data_T_24 = 2'h2 == mem_address_index; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_25 = 2'h2 == mem_address_index ? _io_wb_memory_read_data_T_19 :
    _io_wb_memory_read_data_T_23; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_28 = {24'h0,io_memory_bundle_read_data[31:24]}; // @[src/main/scala/riscv/core/MemoryAccess.scala 59:14]
  wire [31:0] _io_wb_memory_read_data_T_31 = {24'h0,io_memory_bundle_read_data[7:0]}; // @[src/main/scala/riscv/core/MemoryAccess.scala 61:23]
  wire [31:0] _io_wb_memory_read_data_T_34 = {24'h0,io_memory_bundle_read_data[15:8]}; // @[src/main/scala/riscv/core/MemoryAccess.scala 62:23]
  wire [31:0] _io_wb_memory_read_data_T_37 = {24'h0,io_memory_bundle_read_data[23:16]}; // @[src/main/scala/riscv/core/MemoryAccess.scala 63:23]
  wire [31:0] _io_wb_memory_read_data_T_39 = 2'h0 == mem_address_index ? _io_wb_memory_read_data_T_31 :
    _io_wb_memory_read_data_T_28; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_41 = 2'h1 == mem_address_index ? _io_wb_memory_read_data_T_34 :
    _io_wb_memory_read_data_T_39; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_43 = 2'h2 == mem_address_index ? _io_wb_memory_read_data_T_37 :
    _io_wb_memory_read_data_T_41; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _io_wb_memory_read_data_T_44 = mem_address_index == 2'h0; // @[src/main/scala/riscv/core/MemoryAccess.scala 67:29]
  wire [15:0] _io_wb_memory_read_data_T_47 = io_memory_bundle_read_data[15] ? 16'hffff : 16'h0; // @[src/main/scala/riscv/core/MemoryAccess.scala 68:19]
  wire [31:0] _io_wb_memory_read_data_T_49 = {_io_wb_memory_read_data_T_47,io_memory_bundle_read_data[15:0]}; // @[src/main/scala/riscv/core/MemoryAccess.scala 68:14]
  wire [15:0] _io_wb_memory_read_data_T_52 = io_memory_bundle_read_data[31] ? 16'hffff : 16'h0; // @[src/main/scala/riscv/core/MemoryAccess.scala 69:19]
  wire [31:0] _io_wb_memory_read_data_T_54 = {_io_wb_memory_read_data_T_52,io_memory_bundle_read_data[31:16]}; // @[src/main/scala/riscv/core/MemoryAccess.scala 69:14]
  wire [31:0] _io_wb_memory_read_data_T_55 = _io_wb_memory_read_data_T_44 ? _io_wb_memory_read_data_T_49 :
    _io_wb_memory_read_data_T_54; // @[src/main/scala/riscv/core/MemoryAccess.scala 66:36]
  wire [31:0] _io_wb_memory_read_data_T_59 = {16'h0,io_memory_bundle_read_data[15:0]}; // @[src/main/scala/riscv/core/MemoryAccess.scala 74:14]
  wire [31:0] _io_wb_memory_read_data_T_62 = {16'h0,io_memory_bundle_read_data[31:16]}; // @[src/main/scala/riscv/core/MemoryAccess.scala 75:14]
  wire [31:0] _io_wb_memory_read_data_T_63 = _io_wb_memory_read_data_T_44 ? _io_wb_memory_read_data_T_59 :
    _io_wb_memory_read_data_T_62; // @[src/main/scala/riscv/core/MemoryAccess.scala 72:37]
  wire [31:0] _io_wb_memory_read_data_T_65 = 3'h0 == io_funct3 ? _io_wb_memory_read_data_T_25 : 32'h0; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_67 = 3'h4 == io_funct3 ? _io_wb_memory_read_data_T_43 :
    _io_wb_memory_read_data_T_65; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_69 = 3'h1 == io_funct3 ? _io_wb_memory_read_data_T_55 :
    _io_wb_memory_read_data_T_67; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_71 = 3'h5 == io_funct3 ? _io_wb_memory_read_data_T_63 :
    _io_wb_memory_read_data_T_69; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_73 = 3'h2 == io_funct3 ? io_memory_bundle_read_data :
    _io_wb_memory_read_data_T_71; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _GEN_3 = 2'h3 == mem_address_index; // @[src/main/scala/riscv/core/MemoryAccess.scala 83:35 85:{56,56}]
  wire [4:0] _io_memory_bundle_write_data_T_1 = {mem_address_index, 3'h0}; // @[src/main/scala/riscv/core/MemoryAccess.scala 86:97]
  wire [39:0] _GEN_0 = {{31'd0}, io_reg2_data[8:0]}; // @[src/main/scala/riscv/core/MemoryAccess.scala 86:75]
  wire [39:0] _io_memory_bundle_write_data_T_2 = _GEN_0 << _io_memory_bundle_write_data_T_1; // @[src/main/scala/riscv/core/MemoryAccess.scala 86:75]
  wire [32:0] _io_memory_bundle_write_data_T_5 = {io_reg2_data[16:0], 16'h0}; // @[src/main/scala/riscv/core/MemoryAccess.scala 97:103]
  wire [32:0] _GEN_6 = _io_wb_memory_read_data_T_44 ? {{16'd0}, io_reg2_data[16:0]} : _io_memory_bundle_write_data_T_5; // @[src/main/scala/riscv/core/MemoryAccess.scala 88:39 92:37 97:37]
  wire  _GEN_7 = _io_wb_memory_read_data_T_44 ? 1'h0 : 1'h1; // @[src/main/scala/riscv/core/MemoryAccess.scala 83:35 88:39 95:44]
  wire  _T_3 = io_funct3 == 3'h2; // @[src/main/scala/riscv/core/MemoryAccess.scala 100:26]
  wire  _GEN_13 = io_funct3 == 3'h1 ? _io_wb_memory_read_data_T_44 : _T_3; // @[src/main/scala/riscv/core/MemoryAccess.scala 87:52]
  wire [32:0] _GEN_15 = io_funct3 == 3'h1 ? _GEN_6 : {{1'd0}, io_reg2_data}; // @[src/main/scala/riscv/core/MemoryAccess.scala 81:33 87:52]
  wire  _GEN_16 = io_funct3 == 3'h1 ? _GEN_7 : _T_3; // @[src/main/scala/riscv/core/MemoryAccess.scala 87:52]
  wire  _GEN_18 = io_funct3 == 3'h0 ? _io_wb_memory_read_data_T_20 : _GEN_13; // @[src/main/scala/riscv/core/MemoryAccess.scala 84:46]
  wire  _GEN_19 = io_funct3 == 3'h0 ? _io_wb_memory_read_data_T_22 : _GEN_13; // @[src/main/scala/riscv/core/MemoryAccess.scala 84:46]
  wire  _GEN_20 = io_funct3 == 3'h0 ? _io_wb_memory_read_data_T_24 : _GEN_16; // @[src/main/scala/riscv/core/MemoryAccess.scala 84:46]
  wire  _GEN_21 = io_funct3 == 3'h0 ? _GEN_3 : _GEN_16; // @[src/main/scala/riscv/core/MemoryAccess.scala 84:46]
  wire [39:0] _GEN_22 = io_funct3 == 3'h0 ? _io_memory_bundle_write_data_T_2 : {{7'd0}, _GEN_15}; // @[src/main/scala/riscv/core/MemoryAccess.scala 84:46 86:35]
  wire [39:0] _GEN_23 = io_memory_write_enable ? _GEN_22 : 40'h0; // @[src/main/scala/riscv/core/MemoryAccess.scala 37:31 80:38]
  wire  _GEN_25 = io_memory_write_enable & _GEN_18; // @[src/main/scala/riscv/core/MemoryAccess.scala 39:33 80:38]
  wire  _GEN_26 = io_memory_write_enable & _GEN_19; // @[src/main/scala/riscv/core/MemoryAccess.scala 39:33 80:38]
  wire  _GEN_27 = io_memory_write_enable & _GEN_20; // @[src/main/scala/riscv/core/MemoryAccess.scala 39:33 80:38]
  wire  _GEN_28 = io_memory_write_enable & _GEN_21; // @[src/main/scala/riscv/core/MemoryAccess.scala 39:33 80:38]
  wire [39:0] _GEN_30 = io_memory_read_enable ? 40'h0 : _GEN_23; // @[src/main/scala/riscv/core/MemoryAccess.scala 37:31 42:31]
  assign io_wb_memory_read_data = io_memory_read_enable ? _io_wb_memory_read_data_T_73 : 32'h0; // @[src/main/scala/riscv/core/MemoryAccess.scala 40:26 42:31 44:28]
  assign io_memory_bundle_address = io_alu_result; // @[src/main/scala/riscv/core/MemoryAccess.scala 38:28]
  assign io_memory_bundle_write_data = _GEN_30[31:0];
  assign io_memory_bundle_write_enable = io_memory_read_enable ? 1'h0 : io_memory_write_enable; // @[src/main/scala/riscv/core/MemoryAccess.scala 42:31 36:33]
  assign io_memory_bundle_write_strobe_0 = io_memory_read_enable ? 1'h0 : _GEN_25; // @[src/main/scala/riscv/core/MemoryAccess.scala 42:31 39:33]
  assign io_memory_bundle_write_strobe_1 = io_memory_read_enable ? 1'h0 : _GEN_26; // @[src/main/scala/riscv/core/MemoryAccess.scala 42:31 39:33]
  assign io_memory_bundle_write_strobe_2 = io_memory_read_enable ? 1'h0 : _GEN_27; // @[src/main/scala/riscv/core/MemoryAccess.scala 42:31 39:33]
  assign io_memory_bundle_write_strobe_3 = io_memory_read_enable ? 1'h0 : _GEN_28; // @[src/main/scala/riscv/core/MemoryAccess.scala 42:31 39:33]
endmodule
module WriteBack(
  input  [31:0] io_instruction_address, // @[src/main/scala/riscv/core/WriteBack.scala 22:14]
  input  [31:0] io_alu_result, // @[src/main/scala/riscv/core/WriteBack.scala 22:14]
  input  [31:0] io_memory_read_data, // @[src/main/scala/riscv/core/WriteBack.scala 22:14]
  input  [1:0]  io_regs_write_source, // @[src/main/scala/riscv/core/WriteBack.scala 22:14]
  output [31:0] io_regs_write_data // @[src/main/scala/riscv/core/WriteBack.scala 22:14]
);
  wire [31:0] _io_regs_write_data_T_1 = io_instruction_address + 32'h4; // @[src/main/scala/riscv/core/WriteBack.scala 34:72]
  wire [31:0] _io_regs_write_data_T_3 = 2'h1 == io_regs_write_source ? io_memory_read_data : io_alu_result; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  assign io_regs_write_data = 2'h3 == io_regs_write_source ? _io_regs_write_data_T_1 : _io_regs_write_data_T_3; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
endmodule
module CPU(
  input         clock,
  input         reset,
  output [31:0] io_instruction_address, // @[src/main/scala/riscv/core/CPU.scala 22:14]
  input  [31:0] io_instruction, // @[src/main/scala/riscv/core/CPU.scala 22:14]
  output [31:0] io_memory_bundle_address, // @[src/main/scala/riscv/core/CPU.scala 22:14]
  output [31:0] io_memory_bundle_write_data, // @[src/main/scala/riscv/core/CPU.scala 22:14]
  output        io_memory_bundle_write_enable, // @[src/main/scala/riscv/core/CPU.scala 22:14]
  output        io_memory_bundle_write_strobe_0, // @[src/main/scala/riscv/core/CPU.scala 22:14]
  output        io_memory_bundle_write_strobe_1, // @[src/main/scala/riscv/core/CPU.scala 22:14]
  output        io_memory_bundle_write_strobe_2, // @[src/main/scala/riscv/core/CPU.scala 22:14]
  output        io_memory_bundle_write_strobe_3, // @[src/main/scala/riscv/core/CPU.scala 22:14]
  input  [31:0] io_memory_bundle_read_data, // @[src/main/scala/riscv/core/CPU.scala 22:14]
  input         io_instruction_valid, // @[src/main/scala/riscv/core/CPU.scala 22:14]
  output [2:0]  io_deviceSelect // @[src/main/scala/riscv/core/CPU.scala 22:14]
);
  wire  regs_clock; // @[src/main/scala/riscv/core/CPU.scala 24:20]
  wire  regs_reset; // @[src/main/scala/riscv/core/CPU.scala 24:20]
  wire  regs_io_write_enable; // @[src/main/scala/riscv/core/CPU.scala 24:20]
  wire [4:0] regs_io_write_address; // @[src/main/scala/riscv/core/CPU.scala 24:20]
  wire [31:0] regs_io_write_data; // @[src/main/scala/riscv/core/CPU.scala 24:20]
  wire [4:0] regs_io_read_address1; // @[src/main/scala/riscv/core/CPU.scala 24:20]
  wire [4:0] regs_io_read_address2; // @[src/main/scala/riscv/core/CPU.scala 24:20]
  wire [31:0] regs_io_read_data1; // @[src/main/scala/riscv/core/CPU.scala 24:20]
  wire [31:0] regs_io_read_data2; // @[src/main/scala/riscv/core/CPU.scala 24:20]
  wire  inst_fetch_clock; // @[src/main/scala/riscv/core/CPU.scala 25:26]
  wire  inst_fetch_reset; // @[src/main/scala/riscv/core/CPU.scala 25:26]
  wire  inst_fetch_io_jump_flag_id; // @[src/main/scala/riscv/core/CPU.scala 25:26]
  wire [31:0] inst_fetch_io_jump_address_id; // @[src/main/scala/riscv/core/CPU.scala 25:26]
  wire [31:0] inst_fetch_io_instruction_read_data; // @[src/main/scala/riscv/core/CPU.scala 25:26]
  wire  inst_fetch_io_instruction_valid; // @[src/main/scala/riscv/core/CPU.scala 25:26]
  wire [31:0] inst_fetch_io_instruction_address; // @[src/main/scala/riscv/core/CPU.scala 25:26]
  wire [31:0] inst_fetch_io_instruction; // @[src/main/scala/riscv/core/CPU.scala 25:26]
  wire [31:0] id_io_instruction; // @[src/main/scala/riscv/core/CPU.scala 26:18]
  wire [4:0] id_io_regs_reg1_read_address; // @[src/main/scala/riscv/core/CPU.scala 26:18]
  wire [4:0] id_io_regs_reg2_read_address; // @[src/main/scala/riscv/core/CPU.scala 26:18]
  wire [31:0] id_io_ex_immediate; // @[src/main/scala/riscv/core/CPU.scala 26:18]
  wire  id_io_ex_aluop1_source; // @[src/main/scala/riscv/core/CPU.scala 26:18]
  wire  id_io_ex_aluop2_source; // @[src/main/scala/riscv/core/CPU.scala 26:18]
  wire  id_io_memory_read_enable; // @[src/main/scala/riscv/core/CPU.scala 26:18]
  wire  id_io_memory_write_enable; // @[src/main/scala/riscv/core/CPU.scala 26:18]
  wire [1:0] id_io_wb_reg_write_source; // @[src/main/scala/riscv/core/CPU.scala 26:18]
  wire  id_io_reg_write_enable; // @[src/main/scala/riscv/core/CPU.scala 26:18]
  wire [4:0] id_io_reg_write_address; // @[src/main/scala/riscv/core/CPU.scala 26:18]
  wire [31:0] ex_io_instruction; // @[src/main/scala/riscv/core/CPU.scala 27:18]
  wire [31:0] ex_io_instruction_address; // @[src/main/scala/riscv/core/CPU.scala 27:18]
  wire [31:0] ex_io_reg1_data; // @[src/main/scala/riscv/core/CPU.scala 27:18]
  wire [31:0] ex_io_reg2_data; // @[src/main/scala/riscv/core/CPU.scala 27:18]
  wire [31:0] ex_io_immediate; // @[src/main/scala/riscv/core/CPU.scala 27:18]
  wire  ex_io_aluop1_source; // @[src/main/scala/riscv/core/CPU.scala 27:18]
  wire  ex_io_aluop2_source; // @[src/main/scala/riscv/core/CPU.scala 27:18]
  wire [31:0] ex_io_mem_alu_result; // @[src/main/scala/riscv/core/CPU.scala 27:18]
  wire  ex_io_if_jump_flag; // @[src/main/scala/riscv/core/CPU.scala 27:18]
  wire [31:0] ex_io_if_jump_address; // @[src/main/scala/riscv/core/CPU.scala 27:18]
  wire [31:0] mem_io_alu_result; // @[src/main/scala/riscv/core/CPU.scala 28:19]
  wire [31:0] mem_io_reg2_data; // @[src/main/scala/riscv/core/CPU.scala 28:19]
  wire  mem_io_memory_read_enable; // @[src/main/scala/riscv/core/CPU.scala 28:19]
  wire  mem_io_memory_write_enable; // @[src/main/scala/riscv/core/CPU.scala 28:19]
  wire [2:0] mem_io_funct3; // @[src/main/scala/riscv/core/CPU.scala 28:19]
  wire [31:0] mem_io_wb_memory_read_data; // @[src/main/scala/riscv/core/CPU.scala 28:19]
  wire [31:0] mem_io_memory_bundle_address; // @[src/main/scala/riscv/core/CPU.scala 28:19]
  wire [31:0] mem_io_memory_bundle_write_data; // @[src/main/scala/riscv/core/CPU.scala 28:19]
  wire  mem_io_memory_bundle_write_enable; // @[src/main/scala/riscv/core/CPU.scala 28:19]
  wire  mem_io_memory_bundle_write_strobe_0; // @[src/main/scala/riscv/core/CPU.scala 28:19]
  wire  mem_io_memory_bundle_write_strobe_1; // @[src/main/scala/riscv/core/CPU.scala 28:19]
  wire  mem_io_memory_bundle_write_strobe_2; // @[src/main/scala/riscv/core/CPU.scala 28:19]
  wire  mem_io_memory_bundle_write_strobe_3; // @[src/main/scala/riscv/core/CPU.scala 28:19]
  wire [31:0] mem_io_memory_bundle_read_data; // @[src/main/scala/riscv/core/CPU.scala 28:19]
  wire [31:0] wb_io_instruction_address; // @[src/main/scala/riscv/core/CPU.scala 29:18]
  wire [31:0] wb_io_alu_result; // @[src/main/scala/riscv/core/CPU.scala 29:18]
  wire [31:0] wb_io_memory_read_data; // @[src/main/scala/riscv/core/CPU.scala 29:18]
  wire [1:0] wb_io_regs_write_source; // @[src/main/scala/riscv/core/CPU.scala 29:18]
  wire [31:0] wb_io_regs_write_data; // @[src/main/scala/riscv/core/CPU.scala 29:18]
  RegisterFile regs ( // @[src/main/scala/riscv/core/CPU.scala 24:20]
    .clock(regs_clock),
    .reset(regs_reset),
    .io_write_enable(regs_io_write_enable),
    .io_write_address(regs_io_write_address),
    .io_write_data(regs_io_write_data),
    .io_read_address1(regs_io_read_address1),
    .io_read_address2(regs_io_read_address2),
    .io_read_data1(regs_io_read_data1),
    .io_read_data2(regs_io_read_data2)
  );
  InstructionFetch inst_fetch ( // @[src/main/scala/riscv/core/CPU.scala 25:26]
    .clock(inst_fetch_clock),
    .reset(inst_fetch_reset),
    .io_jump_flag_id(inst_fetch_io_jump_flag_id),
    .io_jump_address_id(inst_fetch_io_jump_address_id),
    .io_instruction_read_data(inst_fetch_io_instruction_read_data),
    .io_instruction_valid(inst_fetch_io_instruction_valid),
    .io_instruction_address(inst_fetch_io_instruction_address),
    .io_instruction(inst_fetch_io_instruction)
  );
  InstructionDecode id ( // @[src/main/scala/riscv/core/CPU.scala 26:18]
    .io_instruction(id_io_instruction),
    .io_regs_reg1_read_address(id_io_regs_reg1_read_address),
    .io_regs_reg2_read_address(id_io_regs_reg2_read_address),
    .io_ex_immediate(id_io_ex_immediate),
    .io_ex_aluop1_source(id_io_ex_aluop1_source),
    .io_ex_aluop2_source(id_io_ex_aluop2_source),
    .io_memory_read_enable(id_io_memory_read_enable),
    .io_memory_write_enable(id_io_memory_write_enable),
    .io_wb_reg_write_source(id_io_wb_reg_write_source),
    .io_reg_write_enable(id_io_reg_write_enable),
    .io_reg_write_address(id_io_reg_write_address)
  );
  Execute ex ( // @[src/main/scala/riscv/core/CPU.scala 27:18]
    .io_instruction(ex_io_instruction),
    .io_instruction_address(ex_io_instruction_address),
    .io_reg1_data(ex_io_reg1_data),
    .io_reg2_data(ex_io_reg2_data),
    .io_immediate(ex_io_immediate),
    .io_aluop1_source(ex_io_aluop1_source),
    .io_aluop2_source(ex_io_aluop2_source),
    .io_mem_alu_result(ex_io_mem_alu_result),
    .io_if_jump_flag(ex_io_if_jump_flag),
    .io_if_jump_address(ex_io_if_jump_address)
  );
  MemoryAccess mem ( // @[src/main/scala/riscv/core/CPU.scala 28:19]
    .io_alu_result(mem_io_alu_result),
    .io_reg2_data(mem_io_reg2_data),
    .io_memory_read_enable(mem_io_memory_read_enable),
    .io_memory_write_enable(mem_io_memory_write_enable),
    .io_funct3(mem_io_funct3),
    .io_wb_memory_read_data(mem_io_wb_memory_read_data),
    .io_memory_bundle_address(mem_io_memory_bundle_address),
    .io_memory_bundle_write_data(mem_io_memory_bundle_write_data),
    .io_memory_bundle_write_enable(mem_io_memory_bundle_write_enable),
    .io_memory_bundle_write_strobe_0(mem_io_memory_bundle_write_strobe_0),
    .io_memory_bundle_write_strobe_1(mem_io_memory_bundle_write_strobe_1),
    .io_memory_bundle_write_strobe_2(mem_io_memory_bundle_write_strobe_2),
    .io_memory_bundle_write_strobe_3(mem_io_memory_bundle_write_strobe_3),
    .io_memory_bundle_read_data(mem_io_memory_bundle_read_data)
  );
  WriteBack wb ( // @[src/main/scala/riscv/core/CPU.scala 29:18]
    .io_instruction_address(wb_io_instruction_address),
    .io_alu_result(wb_io_alu_result),
    .io_memory_read_data(wb_io_memory_read_data),
    .io_regs_write_source(wb_io_regs_write_source),
    .io_regs_write_data(wb_io_regs_write_data)
  );
  assign io_instruction_address = inst_fetch_io_instruction_address; // @[src/main/scala/riscv/core/CPU.scala 38:26]
  assign io_memory_bundle_address = {3'h0,mem_io_memory_bundle_address[28:0]}; // @[src/main/scala/riscv/core/CPU.scala 73:34]
  assign io_memory_bundle_write_data = mem_io_memory_bundle_write_data; // @[src/main/scala/riscv/core/CPU.scala 75:31]
  assign io_memory_bundle_write_enable = mem_io_memory_bundle_write_enable; // @[src/main/scala/riscv/core/CPU.scala 74:33]
  assign io_memory_bundle_write_strobe_0 = mem_io_memory_bundle_write_strobe_0; // @[src/main/scala/riscv/core/CPU.scala 76:33]
  assign io_memory_bundle_write_strobe_1 = mem_io_memory_bundle_write_strobe_1; // @[src/main/scala/riscv/core/CPU.scala 76:33]
  assign io_memory_bundle_write_strobe_2 = mem_io_memory_bundle_write_strobe_2; // @[src/main/scala/riscv/core/CPU.scala 76:33]
  assign io_memory_bundle_write_strobe_3 = mem_io_memory_bundle_write_strobe_3; // @[src/main/scala/riscv/core/CPU.scala 76:33]
  assign io_deviceSelect = mem_io_memory_bundle_address[31:29]; // @[src/main/scala/riscv/core/CPU.scala 32:50]
  assign regs_clock = clock;
  assign regs_reset = reset;
  assign regs_io_write_enable = id_io_reg_write_enable; // @[src/main/scala/riscv/core/CPU.scala 40:24]
  assign regs_io_write_address = id_io_reg_write_address; // @[src/main/scala/riscv/core/CPU.scala 41:25]
  assign regs_io_write_data = wb_io_regs_write_data; // @[src/main/scala/riscv/core/CPU.scala 42:22]
  assign regs_io_read_address1 = id_io_regs_reg1_read_address; // @[src/main/scala/riscv/core/CPU.scala 43:25]
  assign regs_io_read_address2 = id_io_regs_reg2_read_address; // @[src/main/scala/riscv/core/CPU.scala 44:25]
  assign inst_fetch_clock = clock;
  assign inst_fetch_reset = reset;
  assign inst_fetch_io_jump_flag_id = ex_io_if_jump_flag; // @[src/main/scala/riscv/core/CPU.scala 35:30]
  assign inst_fetch_io_jump_address_id = ex_io_if_jump_address; // @[src/main/scala/riscv/core/CPU.scala 34:33]
  assign inst_fetch_io_instruction_read_data = io_instruction; // @[src/main/scala/riscv/core/CPU.scala 37:39]
  assign inst_fetch_io_instruction_valid = io_instruction_valid; // @[src/main/scala/riscv/core/CPU.scala 36:35]
  assign id_io_instruction = inst_fetch_io_instruction; // @[src/main/scala/riscv/core/CPU.scala 49:21]
  assign ex_io_instruction = inst_fetch_io_instruction; // @[src/main/scala/riscv/core/CPU.scala 52:19]
  assign ex_io_instruction_address = inst_fetch_io_instruction_address; // @[src/main/scala/riscv/core/CPU.scala 53:27]
  assign ex_io_reg1_data = regs_io_read_data1; // @[src/main/scala/riscv/core/CPU.scala 54:17]
  assign ex_io_reg2_data = regs_io_read_data2; // @[src/main/scala/riscv/core/CPU.scala 55:17]
  assign ex_io_immediate = id_io_ex_immediate; // @[src/main/scala/riscv/core/CPU.scala 56:17]
  assign ex_io_aluop1_source = id_io_ex_aluop1_source; // @[src/main/scala/riscv/core/CPU.scala 57:21]
  assign ex_io_aluop2_source = id_io_ex_aluop2_source; // @[src/main/scala/riscv/core/CPU.scala 58:21]
  assign mem_io_alu_result = ex_io_mem_alu_result; // @[src/main/scala/riscv/core/CPU.scala 67:21]
  assign mem_io_reg2_data = regs_io_read_data2; // @[src/main/scala/riscv/core/CPU.scala 68:20]
  assign mem_io_memory_read_enable = id_io_memory_read_enable; // @[src/main/scala/riscv/core/CPU.scala 69:29]
  assign mem_io_memory_write_enable = id_io_memory_write_enable; // @[src/main/scala/riscv/core/CPU.scala 70:30]
  assign mem_io_funct3 = inst_fetch_io_instruction[14:12]; // @[src/main/scala/riscv/core/CPU.scala 71:45]
  assign mem_io_memory_bundle_read_data = io_memory_bundle_read_data; // @[src/main/scala/riscv/core/CPU.scala 77:34]
  assign wb_io_instruction_address = inst_fetch_io_instruction_address; // @[src/main/scala/riscv/core/CPU.scala 79:29]
  assign wb_io_alu_result = ex_io_mem_alu_result; // @[src/main/scala/riscv/core/CPU.scala 80:20]
  assign wb_io_memory_read_data = mem_io_wb_memory_read_data; // @[src/main/scala/riscv/core/CPU.scala 81:26]
  assign wb_io_regs_write_source = id_io_wb_reg_write_source; // @[src/main/scala/riscv/core/CPU.scala 82:27]
endmodule
module Top(
  input   clock,
  input   reset,
  output  io_tx, // @[src/main/scala/board/z710/Top.scala 25:14]
  input   io_rx, // @[src/main/scala/board/z710/Top.scala 25:14]
  output  io_led // @[src/main/scala/board/z710/Top.scala 25:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  mem_clock; // @[src/main/scala/board/z710/Top.scala 36:19]
  wire [31:0] mem_io_bundle_address; // @[src/main/scala/board/z710/Top.scala 36:19]
  wire [31:0] mem_io_bundle_write_data; // @[src/main/scala/board/z710/Top.scala 36:19]
  wire  mem_io_bundle_write_enable; // @[src/main/scala/board/z710/Top.scala 36:19]
  wire  mem_io_bundle_write_strobe_0; // @[src/main/scala/board/z710/Top.scala 36:19]
  wire  mem_io_bundle_write_strobe_1; // @[src/main/scala/board/z710/Top.scala 36:19]
  wire  mem_io_bundle_write_strobe_2; // @[src/main/scala/board/z710/Top.scala 36:19]
  wire  mem_io_bundle_write_strobe_3; // @[src/main/scala/board/z710/Top.scala 36:19]
  wire [31:0] mem_io_bundle_read_data; // @[src/main/scala/board/z710/Top.scala 36:19]
  wire [31:0] mem_io_instruction; // @[src/main/scala/board/z710/Top.scala 36:19]
  wire [31:0] mem_io_instruction_address; // @[src/main/scala/board/z710/Top.scala 36:19]
  wire  uart_clock; // @[src/main/scala/board/z710/Top.scala 40:20]
  wire  uart_reset; // @[src/main/scala/board/z710/Top.scala 40:20]
  wire [31:0] uart_io_bundle_address; // @[src/main/scala/board/z710/Top.scala 40:20]
  wire [31:0] uart_io_bundle_write_data; // @[src/main/scala/board/z710/Top.scala 40:20]
  wire  uart_io_bundle_write_enable; // @[src/main/scala/board/z710/Top.scala 40:20]
  wire  uart_io_txd; // @[src/main/scala/board/z710/Top.scala 40:20]
  wire  instruction_rom_clock; // @[src/main/scala/board/z710/Top.scala 51:31]
  wire [31:0] instruction_rom_io_address; // @[src/main/scala/board/z710/Top.scala 51:31]
  wire [31:0] instruction_rom_io_data; // @[src/main/scala/board/z710/Top.scala 51:31]
  wire  rom_loader_clock; // @[src/main/scala/board/z710/Top.scala 52:26]
  wire  rom_loader_reset; // @[src/main/scala/board/z710/Top.scala 52:26]
  wire [31:0] rom_loader_io_bundle_address; // @[src/main/scala/board/z710/Top.scala 52:26]
  wire [31:0] rom_loader_io_bundle_write_data; // @[src/main/scala/board/z710/Top.scala 52:26]
  wire  rom_loader_io_bundle_write_enable; // @[src/main/scala/board/z710/Top.scala 52:26]
  wire  rom_loader_io_bundle_write_strobe_0; // @[src/main/scala/board/z710/Top.scala 52:26]
  wire  rom_loader_io_bundle_write_strobe_1; // @[src/main/scala/board/z710/Top.scala 52:26]
  wire  rom_loader_io_bundle_write_strobe_2; // @[src/main/scala/board/z710/Top.scala 52:26]
  wire  rom_loader_io_bundle_write_strobe_3; // @[src/main/scala/board/z710/Top.scala 52:26]
  wire [31:0] rom_loader_io_rom_address; // @[src/main/scala/board/z710/Top.scala 52:26]
  wire [31:0] rom_loader_io_rom_data; // @[src/main/scala/board/z710/Top.scala 52:26]
  wire  rom_loader_io_load_finished; // @[src/main/scala/board/z710/Top.scala 52:26]
  wire  cpu_clock; // @[src/main/scala/board/z710/Top.scala 66:21]
  wire  cpu_reset; // @[src/main/scala/board/z710/Top.scala 66:21]
  wire [31:0] cpu_io_instruction_address; // @[src/main/scala/board/z710/Top.scala 66:21]
  wire [31:0] cpu_io_instruction; // @[src/main/scala/board/z710/Top.scala 66:21]
  wire [31:0] cpu_io_memory_bundle_address; // @[src/main/scala/board/z710/Top.scala 66:21]
  wire [31:0] cpu_io_memory_bundle_write_data; // @[src/main/scala/board/z710/Top.scala 66:21]
  wire  cpu_io_memory_bundle_write_enable; // @[src/main/scala/board/z710/Top.scala 66:21]
  wire  cpu_io_memory_bundle_write_strobe_0; // @[src/main/scala/board/z710/Top.scala 66:21]
  wire  cpu_io_memory_bundle_write_strobe_1; // @[src/main/scala/board/z710/Top.scala 66:21]
  wire  cpu_io_memory_bundle_write_strobe_2; // @[src/main/scala/board/z710/Top.scala 66:21]
  wire  cpu_io_memory_bundle_write_strobe_3; // @[src/main/scala/board/z710/Top.scala 66:21]
  wire [31:0] cpu_io_memory_bundle_read_data; // @[src/main/scala/board/z710/Top.scala 66:21]
  wire  cpu_io_instruction_valid; // @[src/main/scala/board/z710/Top.scala 66:21]
  wire [2:0] cpu_io_deviceSelect; // @[src/main/scala/board/z710/Top.scala 66:21]
  reg [1:0] CPU_clkdiv; // @[src/main/scala/board/z710/Top.scala 58:27]
  wire [1:0] _CPU_next_T_2 = CPU_clkdiv + 2'h1; // @[src/main/scala/board/z710/Top.scala 61:55]
  wire  _T_1 = ~rom_loader_io_load_finished; // @[src/main/scala/board/z710/Top.scala 76:10]
  wire [31:0] _GEN_0 = cpu_io_deviceSelect == 3'h2 ? cpu_io_memory_bundle_address : 32'h0; // @[src/main/scala/board/z710/Top.scala 47:18 81:41 82:30]
  wire [31:0] _GEN_1 = cpu_io_deviceSelect == 3'h2 ? cpu_io_memory_bundle_write_data : 32'h0; // @[src/main/scala/board/z710/Top.scala 47:18 81:41 82:30]
  wire  _GEN_2 = cpu_io_deviceSelect == 3'h2 & cpu_io_memory_bundle_write_enable; // @[src/main/scala/board/z710/Top.scala 47:18 81:41 82:30]
  reg [31:0] led_count; // @[src/main/scala/board/z710/Top.scala 99:26]
  wire [31:0] _led_count_T_1 = led_count + 32'h1; // @[src/main/scala/board/z710/Top.scala 103:28]
  Memory mem ( // @[src/main/scala/board/z710/Top.scala 36:19]
    .clock(mem_clock),
    .io_bundle_address(mem_io_bundle_address),
    .io_bundle_write_data(mem_io_bundle_write_data),
    .io_bundle_write_enable(mem_io_bundle_write_enable),
    .io_bundle_write_strobe_0(mem_io_bundle_write_strobe_0),
    .io_bundle_write_strobe_1(mem_io_bundle_write_strobe_1),
    .io_bundle_write_strobe_2(mem_io_bundle_write_strobe_2),
    .io_bundle_write_strobe_3(mem_io_bundle_write_strobe_3),
    .io_bundle_read_data(mem_io_bundle_read_data),
    .io_instruction(mem_io_instruction),
    .io_instruction_address(mem_io_instruction_address)
  );
  Uart uart ( // @[src/main/scala/board/z710/Top.scala 40:20]
    .clock(uart_clock),
    .reset(uart_reset),
    .io_bundle_address(uart_io_bundle_address),
    .io_bundle_write_data(uart_io_bundle_write_data),
    .io_bundle_write_enable(uart_io_bundle_write_enable),
    .io_txd(uart_io_txd)
  );
  InstructionROM instruction_rom ( // @[src/main/scala/board/z710/Top.scala 51:31]
    .clock(instruction_rom_clock),
    .io_address(instruction_rom_io_address),
    .io_data(instruction_rom_io_data)
  );
  ROMLoader rom_loader ( // @[src/main/scala/board/z710/Top.scala 52:26]
    .clock(rom_loader_clock),
    .reset(rom_loader_reset),
    .io_bundle_address(rom_loader_io_bundle_address),
    .io_bundle_write_data(rom_loader_io_bundle_write_data),
    .io_bundle_write_enable(rom_loader_io_bundle_write_enable),
    .io_bundle_write_strobe_0(rom_loader_io_bundle_write_strobe_0),
    .io_bundle_write_strobe_1(rom_loader_io_bundle_write_strobe_1),
    .io_bundle_write_strobe_2(rom_loader_io_bundle_write_strobe_2),
    .io_bundle_write_strobe_3(rom_loader_io_bundle_write_strobe_3),
    .io_rom_address(rom_loader_io_rom_address),
    .io_rom_data(rom_loader_io_rom_data),
    .io_load_finished(rom_loader_io_load_finished)
  );
  CPU cpu ( // @[src/main/scala/board/z710/Top.scala 66:21]
    .clock(cpu_clock),
    .reset(cpu_reset),
    .io_instruction_address(cpu_io_instruction_address),
    .io_instruction(cpu_io_instruction),
    .io_memory_bundle_address(cpu_io_memory_bundle_address),
    .io_memory_bundle_write_data(cpu_io_memory_bundle_write_data),
    .io_memory_bundle_write_enable(cpu_io_memory_bundle_write_enable),
    .io_memory_bundle_write_strobe_0(cpu_io_memory_bundle_write_strobe_0),
    .io_memory_bundle_write_strobe_1(cpu_io_memory_bundle_write_strobe_1),
    .io_memory_bundle_write_strobe_2(cpu_io_memory_bundle_write_strobe_2),
    .io_memory_bundle_write_strobe_3(cpu_io_memory_bundle_write_strobe_3),
    .io_memory_bundle_read_data(cpu_io_memory_bundle_read_data),
    .io_instruction_valid(cpu_io_instruction_valid),
    .io_deviceSelect(cpu_io_deviceSelect)
  );
  assign io_tx = uart_io_txd; // @[src/main/scala/board/z710/Top.scala 48:9]
  assign io_led = led_count >= 32'hbebc20; // @[src/main/scala/board/z710/Top.scala 105:24]
  assign mem_clock = clock;
  assign mem_io_bundle_address = _T_1 ? rom_loader_io_bundle_address : cpu_io_memory_bundle_address; // @[src/main/scala/board/z710/Top.scala 88:40 89:28 93:28]
  assign mem_io_bundle_write_data = _T_1 ? rom_loader_io_bundle_write_data : cpu_io_memory_bundle_write_data; // @[src/main/scala/board/z710/Top.scala 88:40 89:28 93:28]
  assign mem_io_bundle_write_enable = _T_1 ? rom_loader_io_bundle_write_enable : cpu_io_memory_bundle_write_enable; // @[src/main/scala/board/z710/Top.scala 88:40 89:28 93:28]
  assign mem_io_bundle_write_strobe_0 = _T_1 ? rom_loader_io_bundle_write_strobe_0 : cpu_io_memory_bundle_write_strobe_0
    ; // @[src/main/scala/board/z710/Top.scala 88:40 89:28 93:28]
  assign mem_io_bundle_write_strobe_1 = _T_1 ? rom_loader_io_bundle_write_strobe_1 : cpu_io_memory_bundle_write_strobe_1
    ; // @[src/main/scala/board/z710/Top.scala 88:40 89:28 93:28]
  assign mem_io_bundle_write_strobe_2 = _T_1 ? rom_loader_io_bundle_write_strobe_2 : cpu_io_memory_bundle_write_strobe_2
    ; // @[src/main/scala/board/z710/Top.scala 88:40 89:28 93:28]
  assign mem_io_bundle_write_strobe_3 = _T_1 ? rom_loader_io_bundle_write_strobe_3 : cpu_io_memory_bundle_write_strobe_3
    ; // @[src/main/scala/board/z710/Top.scala 88:40 89:28 93:28]
  assign mem_io_instruction_address = cpu_io_instruction_address; // @[src/main/scala/board/z710/Top.scala 73:32]
  assign uart_clock = clock;
  assign uart_reset = reset;
  assign uart_io_bundle_address = ~rom_loader_io_load_finished ? 32'h0 : _GEN_0; // @[src/main/scala/board/z710/Top.scala 47:18 76:40]
  assign uart_io_bundle_write_data = ~rom_loader_io_load_finished ? 32'h0 : _GEN_1; // @[src/main/scala/board/z710/Top.scala 47:18 76:40]
  assign uart_io_bundle_write_enable = ~rom_loader_io_load_finished ? 1'h0 : _GEN_2; // @[src/main/scala/board/z710/Top.scala 47:18 76:40]
  assign instruction_rom_clock = clock;
  assign instruction_rom_io_address = rom_loader_io_rom_address; // @[src/main/scala/board/z710/Top.scala 56:30]
  assign rom_loader_clock = clock;
  assign rom_loader_reset = reset;
  assign rom_loader_io_rom_data = instruction_rom_io_data; // @[src/main/scala/board/z710/Top.scala 54:26]
  assign cpu_clock = CPU_clkdiv == 2'h0; // @[src/main/scala/board/z710/Top.scala 65:22]
  assign cpu_reset = reset;
  assign cpu_io_instruction = mem_io_instruction; // @[src/main/scala/board/z710/Top.scala 74:24]
  assign cpu_io_memory_bundle_read_data = _T_1 ? 32'h0 : mem_io_bundle_read_data; // @[src/main/scala/board/z710/Top.scala 88:40 90:38 93:28]
  assign cpu_io_instruction_valid = rom_loader_io_load_finished; // @[src/main/scala/board/z710/Top.scala 72:30]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/board/z710/Top.scala 58:27]
      CPU_clkdiv <= 2'h0; // @[src/main/scala/board/z710/Top.scala 58:27]
    end else if (CPU_clkdiv == 2'h3) begin // @[src/main/scala/board/z710/Top.scala 61:18]
      CPU_clkdiv <= 2'h0;
    end else begin
      CPU_clkdiv <= _CPU_next_T_2;
    end
    if (reset) begin // @[src/main/scala/board/z710/Top.scala 99:26]
      led_count <= 32'h0; // @[src/main/scala/board/z710/Top.scala 99:26]
    end else if (led_count >= 32'h17d7840) begin // @[src/main/scala/board/z710/Top.scala 100:36]
      led_count <= 32'h0; // @[src/main/scala/board/z710/Top.scala 101:15]
    end else begin
      led_count <= _led_count_T_1; // @[src/main/scala/board/z710/Top.scala 103:15]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  CPU_clkdiv = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  led_count = _RAND_1[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
