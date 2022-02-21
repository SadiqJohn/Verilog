`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2021 01:23:28 PM
// Design Name: 
// Module Name: tb_cordic
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

//Test bench
module tb_cordic();

    //1.inputs(type: reg) and outputs(type: wire) and parameters
    //reg
    reg CLK, RST;
    reg [5:0] z;
    
    //wire
    wire [5:0]result;
    
    
    //parameter
    
    //2. define clock
    //flips clock every 5 nano seconds
    initial CLK =0;
    
    
//3. top module Instantiation
Control DUT (.result(result),.CLK(CLK),.RST(RST),.z(z));

//4. Initial block, send values at given times
always #5
    CLK = ~CLK;
 initial begin
     /*   z <= 0;
        repeat(3) begin
                @ (posedge CLK);
        end*/
        RST <= 1'b1;
        #10 RST <= 1'b0;
        z <= 6'b011110;
        @ (posedge CLK);
/*      z <= 6'b100011; 
        @ (posedge CLK);
        z <= 6'b011010;
        @ (posedge CLK);
        z <= 6'b101010; 
        @ (posedge CLK);
        repeat (4)
        @ (posedge CLK);*/
   
    end
endmodule
