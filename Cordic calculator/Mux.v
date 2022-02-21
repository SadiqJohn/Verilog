`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2021 06:00:32 PM
// Design Name: 
// Module Name: Mux
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

//keep track of : enable, reset, and i

module Mux(input [5:0]muxIn1, [5:0]muxIn2, CLK,i,
           output reg [5:0]muxOut);


always @ (posedge CLK)
if (i == 0)
    muxOut = muxIn1;
//begin
//if (muxIn2==0)
//    muxOut = muxIn1;

else 
    muxOut = muxIn2;

//end



//$writememb 

endmodule