`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2016 08:43:35 PM
// Design Name: 
// Module Name: CarryGen_tb
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


module CarryGen_tb;

    logic [2:0] opsel;
    logic mode;
    logic carry;
        
    CarryGen CG(
        .Opsel(opsel),
        .Mode(mode),
        .Carry(carry)
    );
    
    int i,j;
    initial begin
        for (j=0; j<2; j++) begin
            mode = j;
            for (i=0; i<8; i++) begin
                opsel = i;
                #10;
            end
        end    
    end

endmodule
