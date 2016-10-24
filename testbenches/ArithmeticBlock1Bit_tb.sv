`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2016 06:01:03 PM
// Design Name: 
// Module Name: ArithmeticBlock1Bit_tb
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


module ArithmeticBlock1Bit_tb;

    logic a;
    logic b;
    logic cin;
    logic [2:0] opsel;
    logic result;
    logic cout;
    
    int i,j,k;
    
    ArithmeticBlock1Bit AB1(
        .A(a),
        .B(b),
        .Cin(cin),
        .opsel(opsel),
        .Result(result),
        .Cout(cout)
        );
    
    initial begin
        a=0;
        b=0;
        for(i=0; i<2; i++) begin
            a = i;
            for (j = 0; j<2; j++) begin
                b = j;
                for (k = 0; k < 8; k++) begin
                    opsel = k;
                    #10;
                end
            end
        end
    end

endmodule
