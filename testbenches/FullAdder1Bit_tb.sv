`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2016 01:59:03 AM
// Design Name: 
// Module Name: FullAdder1Bit_tb
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


module FullAdder1Bit_tb;
    logic a;
    logic b;
    logic cin;
    wire cout;
    wire result;
    
    FullAdder1Bit FA1(
        .A(a),
        .B(b),
        .Cin(cin),
        .Cout(cout),
        .Result(result)
    );
    
    initial begin
    
    a = 1'b0;
    b = 1'b0;
    cin = 1'b0;
    #10;
    
    a = 1'b0;
    b = 1'b0;
    cin = 1'b1;
    #10;    
    
    a = 1'b0;
    b = 1'b1;
    cin = 1'b0;
    #10;
    
    a = 1'b0;
    b = 1'b1;
    cin = 1'b1;
    #10;
    
    a = 1'b1;
    b = 1'b0;
    cin = 1'b0;
    #10;
    
    a = 1'b1;
    b = 1'b0;
    cin = 1'b1;
    #10;
    
    a = 1'b1;
    b = 1'b1;
    cin = 1'b0;
    #10;
    
    a = 1'b1;
    b = 1'b1;
    cin = 1'b1;
    #10;

    end
endmodule
