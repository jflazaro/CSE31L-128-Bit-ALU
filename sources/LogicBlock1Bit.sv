`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2016 09:04:39 PM
// Design Name: 
// Module Name: LogicBlock1Bit
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


module LogicBlock1Bit(
    input logic A,
    input logic B,
    input logic Cin,
    input logic [2:0] Opsel,
    output logic Result,
    output logic Cout
    );
    
    
    mux8to1 MUXB(
        .A(A&B),
        .B(A|B),
        .C(A^B),
        .D(~A),
        .E(1'bx),
        .F(Cin),
        .G(1'bx),
        .H(1'bx),
        .opsel(Opsel),
        .out(Result)
    );
    
    mux8to1 MUXC(
        .A(1'b0),
        .B(1'b0),
        .C(1'b0),
        .D(1'b0),
        .E(1'bx),
        .F(A),
        .G(1'bx),
        .H(1'bx),
        .opsel(Opsel),
        .out(Cout)
    );
    
endmodule
