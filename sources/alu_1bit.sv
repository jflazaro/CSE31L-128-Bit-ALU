`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UCI-EECS 31L
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: alu_1bit
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


module alu_1bit ( op1 , op2 , cin, opsel , mode , result , cout);

    input  logic        op1 ;
    input  logic        op2 ;
    input  logic        cin ;
    input  logic [ 2:0] opsel ;
    input  logic        mode ;
    output logic        result ;
    output logic        cout ;
  //  output logic        c_flag ;
  //  output logic        z_flag ;
  //  output logic        o_flag ;
  //  output logic        s_flag ;
    wire Result_A;
    wire Cout_A;
    wire Result_L;
    wire Cout_L;
  
  ArithmeticBlock1Bit AB(
    .A(op1),
    .B(op2),
    .Cin(cin),
    .opsel(opsel),
    .Result(Result_A),
    .Cout(Cout_A)
  );
  
  LogicBlock1Bit LB(
    .A(op1),
    .B(op2),
    .Cin(cin),
    .Opsel(opsel),
    .Result(Result_L),
    .Cout(Cout_L)
  );
  
  mux2to1 MUX1(
    .A(Result_A),
    .B(Result_L),
    .sel(mode),
    .Y(result)
  );
  
  mux2to1 MUX2(
    .A(Cout_A),
    .B(Cout_L),
    .sel(mode),
    .Y(cout)
  );

endmodule
