`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2021 05:44:54 PM
// Design Name: 
// Module Name: half_adder
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


module half_adder (ha_mem,gt,lt,ha_mux,CLK,
                   sum,);

  input CLK;
  input  [5:0]ha_mem;
  input  [0:0]gt;
  input  [0:0]lt;
  input  [5:0]ha_mux;
  output reg [5:0]sum;
  
  always @(posedge CLK)
  begin
  
  if (gt==1) begin
  sum = ha_mem + ha_mux;  // Adding
  end
  
  else begin
  sum = ha_mem - ha_mux;  // Subtract
  end
  
  end
  
endmodule 
