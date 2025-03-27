`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2025 11:39:25 PM
// Design Name: 
// Module Name: TeastBench
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


module TeastBench;
    reg [3:0] A, B;
   wire [3:0] Out;

   ORgate uut (
       .A(A),
       .B(B),
       .Out(Out)
   );

   initial begin
       $monitor("Time=%0t | A=%b | B=%b | Out=%b", $time, A, B, Out);

       A = 4'b0000; B = 4'b0000; #10;
       A = 4'b1100; B = 4'b1010; #10;
       A = 4'b1111; B = 4'b1111; #10;
       A = 4'b1010; B = 4'b0101; #10;
       A = 4'b0010; B = 4'b0111; #10;
       A = 4'b1111; B = 4'b0101; #10;
       $finish;
   end
endmodule
