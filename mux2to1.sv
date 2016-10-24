`timescale 1ns / 1ps

module mux2to1( //Ports declaration inside the brackets.
    logic A,
    logic B,
    logic sel,
    output Y
    );  //  Don't forget semi-colon
    
    assign Y = (sel == 1'b0)? A : B;
    // Means that if sel == 0, Y = A, if sel == 1, Y = B
    // 1'b0 means 1 bit with binary value of 0
    // 2'b10 would mean 2 bit with binary value of 10
    // 3'o3 would mean 3 bit with octal value of 3
    // 8'd9 would mean 8 bit with decimal value of 9
    // 4'hF would mean 4 bit with hexadecimal value of F. Same as 4'b1111
    
endmodule
