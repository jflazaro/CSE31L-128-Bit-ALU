`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2016 11:00:01 AM
// Design Name: 
// Module Name: alu_8bit_tb
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


module alu_8bit_tb;

parameter DWIDTH = 8;
logic[ DWIDTH -1:0] op1 ;
logic[ DWIDTH -1:0] op2 ;
logic [ DWIDTH -1:0] result ;
logic c_flag ;
logic z_flag ;
logic o_flag ;
logic s_flag ;

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
alu_8bit L1 (   .op1(op1), 
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

op1 = 8'b01101110;
op2 = 8'b00011011;

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

op1 = 8'b0;
op2 = 8'b0;

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

endmodule
