`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2021 06:02:33 PM
// Design Name: 
// Module Name: flip_flop
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


module flip_flop(input  RST, CLK,[5:0]ffin,
                  output reg [5:0]ffout);
                  // Q is type reg because of the always block
                  
always @(posedge CLK) begin
    if(RST) //if RST is high, reset q to 0
        ffout<=0;
    else
        ffout<=ffin; //if the RST is low, q gets d 
    end            
endmodule
