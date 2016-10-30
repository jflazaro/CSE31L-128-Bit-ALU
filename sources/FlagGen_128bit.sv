`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2016 03:05:47 PM
// Design Name: 
// Module Name: FlagGen
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



module FlagGen_128bit(
    input logic [2:0] opsel,
    input logic mode,
    input logic cin,
    input logic [127:0] result,
    
    output logic c_flag,
    output logic z_flag,
    output logic s_flag,
    output logic o_flag
    );

    assign c_flag = (cin == 1)? 1: 0;
    assign z_flag = (result == 'd0)? 1: 0;
    assign s_flag = (result[127] == 1'b1)? 1: 0;
    assign o_flag = (cin == 1)? 1: 0;
    
endmodule
