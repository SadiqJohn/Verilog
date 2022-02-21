`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2021 08:50:26 AM
// Design Name: 
// Module Name: Comp
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


module Comp(from_Mux,from_Mem,CLK,
                lt,gt);

input CLK;
input [5:0] from_Mux,from_Mem;
output reg lt,gt;

always@(posedge CLK)
begin
 if (from_Mux>from_Mem)   //Less Than
begin
lt = 1'b0;
gt = 1'b1;
end
else            //Greater Than
begin
lt = 1'b1;
gt = 1'b0;
end
end
endmodule



