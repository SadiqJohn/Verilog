`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2021 11:35:35 AM
// Design Name: 
// Module Name: FF_output
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


module FF_output(gt, lt, CLK,
                 ,result);
                 
input CLK;
input  gt,lt;
output reg [5:0]result;

       reg [5:0]i=0;

    
always @(posedge CLK)
  begin
 
 
 
  if (gt==1) begin
  //will push new values into result 6 times to create the output we are looking for
  //   result = {result, 1}; //adds 1 to result
     result[i] = 1;
          
     // result =000000, 0000001 
 end
  
  else begin
    // result = {result, 0}; //adds 0 to result
     result[i] = 0;

  end

    i=i+1;
  end
endmodule
