`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2021 10:10:22 AM
// Design Name: 
// Module Name: Control
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module Control(input CLK, RST,[5:0] z,
                output [5:0]result);

wire [5:0]memOut = 6'b0;
wire [5:0]muxIn1= 6'b0;
wire [5:0]muxIn2= 6'b0;
wire [5:0]muxOut= 6'b0;
wire [5:0]ffin= 6'b0;
wire [5:0]ffout= 6'b0;
wire [5:0]sum = 6'b0;
wire [5:0]MuxWire = 6'b0;
wire [5:0]MemWire = 6'b0;
wire compRWirel;
wire compRWireg;
wire [5:0] Zinc1 = 6'b0;
wire [5:0] FFmux = 6'b0;

memModule DUT1 (.memOut(MemWire), .CLK(CLK));

Mux DUT5 (.muxIn1(z), .muxIn2(Zinc1), .muxOut(MuxWire), .CLK(CLK));

Comp DUT2(.from_Mux(MuxWire), .from_Mem(MemWire), .CLK(CLK),
                 .lt(compRWirel), .gt(compRWireg));
                
half_adder DUT3 (.ha_mem(MemWire), .ha_mux(MuxWire), .lt(compRWirel), .gt(compRWireg),
                .sum(Zinc1), .CLK(CLK));

// flip_flop DUT4 (.ffin(Zinc1), .ffout(FFmux), .RST(RST),.CLK(CLK));


FF_output DUT6 (.lt(compRWirel), .gt(compRWireg), .CLK(CLK)
                ,.result(result));


endmodule

/*
Test bench

1.inputs(type: reg) and outputs(type: wire) and parameters

2. define clock

3. top module Instantiation

4. Initial block, send values at given times

*/
