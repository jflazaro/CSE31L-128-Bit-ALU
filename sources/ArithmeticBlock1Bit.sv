`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2016 06:00:00 PM
// Design Name: 
// Module Name: ArithmeticBlock1Bit
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


module ArithmeticBlock1Bit(
    input logic A,
    input logic B,
    input logic Cin,
    input logic [2:0] opsel,
    output logic Result,
    output logic Cout
    );
    
    wire muxoutb;
    wire muxoutc;
   
    mux8to1 MUXB(
        .A(B),//Cin=0
        .B(~B),//Cin=0
        .C(1'b0),//Cin=0
        .D(~B),//Cin=1 Invert all B's
        .E(1'b0),//Cin=1
        .F(1'b1),//Cin=0
        .G(B),//Cin=1
        .H(1'bx),
        .opsel(opsel),
        .out(muxoutb)
        );
        
    mux8to1 MUXC(
        .A(Cin),//Cin=0
        .B(Cin),//Cin=0
        .C(1'b0),//Cin=0
        .D(Cin),//Cin=1 Invert all B's
        .E(Cin),//Cin=1
        .F(Cin),//Cin=1
        .G(Cin),//Cin=1
        .H(1'bx),
        .opsel(opsel),
        .out(muxoutc)
        );

    FullAdder1Bit FA(
        .A(A),
        .B(muxoutb),
        .Cin(muxoutc),
        .Cout(Cout),
        .Result(Result)
        );
   
endmodule
