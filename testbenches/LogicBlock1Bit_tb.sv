`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2016 09:06:27 PM
// Design Name: 
// Module Name: LogicBlock1Bit_tb
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


module LogicBlock1Bit_tb;
    logic a;
    logic b;
    logic cin;
    logic [2:0] opsel;
    logic result;
    logic cout;
    
    LogicBlock1Bit LB(
        .A(a),
        .B(b),
        .Cin(cin),
        .Opsel(opsel),
        .Result(result),
        .Cout(cout)
    );
    
    int i,j,k,l;
    initial begin
        for (i=0; i<2; i++) begin
            a=i;
            for (j=0; j<2; j++) begin
                b=j;
                for (k=0; k<2; k++) begin
                    cin=k;
                    for (l=0; l<8; l++) begin
                        opsel=l;
                        #10;
                    end
                end
            end
        end
    end
    
endmodule
