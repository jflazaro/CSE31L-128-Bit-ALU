`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2016 08:42:54 PM
// Design Name: 
// Module Name: CarryGen
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


module CarryGen(
    input logic [2:0] Opsel,
    input logic Mode,
    output logic Carry
    );
    
    assign Carry = (Opsel == 3'b011 && Mode == 0)? 1'b1:
                   (Opsel == 3'b100 && Mode == 0)? 1'b1:
                   (Opsel == 3'b110 && Mode == 0)? 1'b1: 
                   1'b0;
endmodule
