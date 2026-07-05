`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2026 12:08:55 PM
// Design Name: 
// Module Name: vending1
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


module vending1(
input clk,
input rst,
input [1:0]in,
output reg out,
output reg [1:0] change
    );
    parameter s0=2'b00;
    parameter s1=2'b01;
    parameter s2=2'b10;
    reg [1:0] c_state,n_state;
    always @(posedge clk) begin
    if (rst==0) begin
     c_state=0;
     n_state=0;
     change=0;
    end
    else begin
    c_state=n_state;
    case(c_state)
    s0:
    if(in==0) begin
    n_state=s0;
    out=0;
    change=2'b00;
    end
    else if (in==2'b01) begin
    n_state=s1;
    change=2'b00;
    out=0;
    end
    else if(in==2'b10) begin
    n_state=s2;
    out=0;
    change=2'b00;
    end
    
    s1:
    if(in==0) begin
    n_state=s0;
    out=0;
    change=2'b01;
    end
    else if (in==2'b01) begin
    n_state=s1;
    change=2'b00;
    out=0;
    end
    else if(in==2'b10) begin
    n_state=s0;
    out=1;
    change=2'b00;
    end
    
    s2:
    if(in==0) begin
    n_state=s0;
    out=0;
    change=2'b10;
    end
    else if (in==2'b01) begin
    n_state=s0;
    change=2'b00;
    out=1;
    end
    else if(in==2'b10) begin
    n_state=s0;
    out=1;
    change=2'b01;
    end
    
    endcase
   end
     end
endmodule
