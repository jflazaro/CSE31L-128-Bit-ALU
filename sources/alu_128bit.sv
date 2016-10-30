`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2016 12:35:28 PM
// Design Name: 
// Module Name: alu_128bit
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


module alu_128bit( op1, op2, opsel, mode, result, c_flag, z_flag, o_flag, s_flag);

    parameter DWIDTH = 128;
    
    input logic [ DWIDTH -1:0] op1;
    input logic [ DWIDTH -1:0] op2;
    input logic [ 2:0]         opsel;
    input logic                mode;
    output logic [DWIDTH -1:0] result;
    output logic               c_flag;
    output logic               z_flag;
    output logic               o_flag;
    output logic               s_flag;      
    
    wire toALU0;
    /*logic toALU1;
    logic toALU2;*/
    wire [DWIDTH:1] toALUnext;    
    
    alu_1bit ALU0(
        .op1(op1[0]),
        .op2(op2[0]),
        .cin(toALU0),
        .opsel(opsel),
        .mode(mode),
        .result(result[0]),
        .cout(toALUnext[1])
    );
    
    CarryGen CG(
        .Opsel(opsel),
        .Mode(mode),
        .Carry(toALU0)
    );
    
    genvar i;
    generate
        for (i=1; i<DWIDTH; i=i+1) begin: generate_128bitALU
            alu_1bit ALUnext(
                .op1(op1[i]),
                .op2(op2[i]),
                .cin(toALUnext[i]),
                .opsel(opsel),
                .mode(mode),
                .result(result[i]),
                .cout(toALUnext[i+1])
            );
            
        end
    endgenerate
    
    FlagGen_128bit FG(
        .opsel(opsel),
        .mode(mode),
        .cin(toALUnext[DWIDTH]),
        .result(result),
        .c_flag(c_flag),
        .z_flag(z_flag),
        .s_flag(s_flag),
        .o_flag(o_flag)
    );
    
endmodule