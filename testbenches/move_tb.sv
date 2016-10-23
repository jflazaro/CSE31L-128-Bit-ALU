`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2016 03:13:47 PM
// Design Name: 
// Module Name: move_tb
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


module move_tb;

    logic a;
    logic b;
    wire result;

    move M1(
        .A(a),
        .B(b),
        .Result(result)
    );

    initial begin
    
    a = 1'b0;
    b = 1'b0;
    #10;

    a = 1'b0;
    b = 1'b1;
    #10;

    a = 1'b1;
    b = 1'b0;
    #10;
    
    a = 1'b1;
    b = 1'b1;
    #10;
    
    end
endmodule
