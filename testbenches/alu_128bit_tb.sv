`timescale 1ns / 1ps
//`include "alu_trxn.svh"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2016 05:17:25 PM
// Design Name: 
// Module Name: alu_128_tb
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


module alu_128_tb;

parameter DWIDTH = 128;
const real pi = 3.1416;
logic[ DWIDTH -1:0] op1 ;
logic[ DWIDTH -1:0] op2 ;
logic [ DWIDTH -1:0] result ;
logic c_flag ;
logic z_flag ;
logic o_flag ;
logic s_flag ;
int i,j = 0;
typedef enum bit[3:0] {
              add=4'h0,
              subwb=4'h1,
              mov=4'h2,
              sub=4'h3,
              inc=4'h4,
              dec=4'h5,
              addinc=4'h6,
              land=4'h8,
              lor=4'h9,
              lxor=4'hA,
              lnot=4'hB,
              lshl=4'hD
              } optype;
              
optype mode_sel;
alu_128bit L1 ( .op1(op1), 
                .op2(op2) , 
                .opsel(mode_sel[2:0]),
                .mode(mode_sel[3]),  
                .result(result) , 
                .c_flag (c_flag), 
                .z_flag(z_flag) , 
                .o_flag(o_flag) , 
                .s_flag(s_flag)
                );


initial begin   
op1 = 'd0;
op2 = 'd0;
for (i=0;i<32;i++)begin
    op2 = (i**pi);
        for(j=0;j<3;j++) begin
        op1 = ((i+pi*j)**pi);
        #10;
        end
end 
end

initial begin  
repeat(10) begin                                     
mode_sel = add;
#15; 
mode_sel = subwb; 
#15; 
mode_sel = sub;
#15; 
mode_sel = inc;
#15; 
mode_sel = dec;
#15; 
mode_sel = addinc;
#15; 
mode_sel = land;
#15; 
mode_sel = lshl;
#15;                                          
mode_sel = lxor;
#15; 
mode_sel = lnot;
#15; 
mode_sel = lor;
end                                             
end
endmodule