`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2016 08:16:09 PM
// Design Name: 
// Module Name: mux4to1_tb
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


module mux8to1_tb; // semi-colon

logic a;
logic b;
logic c;
logic d;
logic e;
logic f;
logic g;
logic h;
logic [2:0] opsel; // sel[1] and sel[0]
logic out;

mux8to1 DUT(    // Instntiate the design and connect the ports
    .A(a),
    .B(b),
    .C(c),
    .D(d),
    .E(e),
    .F(f),
    .G(g),
    .H(h),
    .opsel(opsel),
    .out(out)
    );

initial begin // Try some inputs as the simulation begins
    a = 1'b0;
    b = 1'b1;
    c = 1'b0;
    d = 1'b1;
    e = 1'b0;
    f = 1'b1;
    g = 1'b0;
    h = 1'b1;
    opsel = 3'b000;
    #10;
    opsel = 3'b001;
    #10;
    opsel = 3'b010;
    #10;
    opsel = 3'b011;
    #10;
    opsel = 3'b111;
end // end of initial block

endmodule
