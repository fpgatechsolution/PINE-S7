`timescale 1ns / 1ps


module TestBench;
    reg clk;
    reg enable;
    wire BuzzerOut;

    // Instantiate buzzer module
    buzzer uut (
        .clk(clk),
        .enable(enable),
        .BuzzerOut(BuzzerOut)
    );

    // Clock generation (50 MHz)
    always #3.33 clk = ~clk;

    initial begin
        clk = 0;
        enable = 0;

        // Enable buzzer after some time
        #100 enable = 1;

        #10000000 $finish;
    end

    initial begin
        $monitor("Time=%0t | Enable=%b | BuzzerOut=%b", $time, enable, BuzzerOut);
    end
endmodule
