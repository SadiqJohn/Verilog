`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2021 02:18:59 PM
// Design Name: 
// Module Name: memModule
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


module memModule(input CLK,
                 output reg [5:0]memOut);
                
                reg [5:0] Mem [0:5];   //Memory in Mem.mem
           
                reg i = 0;
                
                
                initial
                begin
                $readmemb ("Mem.mem",Mem); //reads Mem file numbers are in binary
                end            
                
                always @(posedge CLK) begin     //Waits until signaled from control to give next number
                 //needs to send every 2 clk cycles
                      
                        memOut = Mem[i]; //sets memOut to a line of Mem, line based on next_mem
                        i=i+1;
                        
                end
               
endmodule
