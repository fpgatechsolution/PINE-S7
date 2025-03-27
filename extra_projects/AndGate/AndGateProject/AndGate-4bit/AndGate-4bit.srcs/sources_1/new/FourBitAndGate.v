`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2025 10:18:06 PM
// Design Name: 
// Module Name: FourBitAndGate
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


module FourBitAndGate(
   input   wire     [3:0] A,
   input   wire     [3:0] B,
   output  reg      [3:0] Out
    );
    
    initial begin
    
    assign Out = A & B; 
    
    end
endmodule
