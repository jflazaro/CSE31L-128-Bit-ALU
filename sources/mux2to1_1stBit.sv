`timescale 1ns / 1ps    
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2016 02:25:16 PM
// Design Name: 
// Module Name: mux2to1
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


module mux2to1_1stBit( 
    input logic A,
    input logic B,
    input logic [2:0] sel,
    output logic R,
    output logic C_out
    );  
    
    assign R = (sel == 3'b000)? (A&B) : 
               (sel == 3'b001)? (A|B) : 
               (sel == 3'b010)? (A^B) : 
               (sel == 3'b011)? (~A) :
               (A+1);
    assign C_out = (sel == 3'b101)? A: 0;
               
endmodule