`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2026 11:37:40 AM
// Design Name: 
// Module Name: vending_tb
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


`timescale 1ns / 1ps

module vending_tb;

    reg clk;
    reg rst;
    reg [1:0] in;
    wire out;
    wire [1:0] change;

    vending1 uut (
        .clk(clk),
        .rst(rst),
        .in(in),
        .out(out),
        .change(change)
    );

    initial begin
        clk = 0;
        rst = 0;        // reset ON because reset is active-low
        in  = 2'b00;

        #10 rst = 1;    // reset OFF

        #10 in = 2'b10; // insert 10 rs
        #10 in = 2'b10; // insert 10 rs again

        #10 in = 2'b00;

        #20 $finish;
    end

    always #5 clk = ~clk;

endmodule
