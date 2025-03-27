`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/05/2025 10:21:48 AM
// Design Name: 
// Module Name: Buzzer
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


module buzzer (
    input clk,        // System clock input
    input enable,     // Enable signal for the buzzer
    output reg BuzzerOut // Buzzer output signal
);
    parameter CLK_FREQ = 150000000; // Assume 150 MHz clock

    integer counter = 0;
    integer toggle_limit = (2*CLK_FREQ); // 2 Second on 2 Second off

    always @(posedge clk) begin
        if (enable) begin
            if (counter == toggle_limit) begin
                BuzzerOut <= ~BuzzerOut; // Toggle buzzer signal
                counter <= 0;
            end
            else begin
                counter <= counter + 1;
            end
        end else begin
            BuzzerOut <= 0; // Turn off buzzer if not enabled
            counter <= 0;
        end
    end
endmodule

