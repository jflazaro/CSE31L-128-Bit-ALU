`timescale 1ns / 1ps    
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2016 02:25:16 PM
// Design Name: 
// Module Name: mux8to1
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


module mux8to1( //Ports declaration inside the brackets.
    input logic A,
    input logic B,
    input logic C,
    input logic D,
    input logic E,
    input logic F,
    input logic G,
    input logic H,
    input logic [2:0] opsel,
    output logic out
    );  //  Don't forget semi-colon
    
    assign out = (opsel == 3'b000)? A :
                 (opsel == 3'b001)? B :
                 (opsel == 3'b010)? C :
                 (opsel == 3'b011)? D :
                 (opsel == 3'b100)? E :
                 (opsel == 3'b101)? F :
                 (opsel == 3'b110)? G :
                 (opsel == 3'b111)? H :
                 1'bz; //Default / Impedeance Case.
    
endmodule
