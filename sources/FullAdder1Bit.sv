`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2016 01:21:42 AM
// Design Name: 
// Module Name: FullAdder1Bit
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


module FullAdder1Bit(
    input logic A,
    input logic B,
    input logic Cin,
    output logic Result,
    output logic Cout
    );
    
    assign Result = A ^ B ^ Cin;
    assign Cout = (A & B) | (B & Cin) | (A & Cin);
    
endmodule
