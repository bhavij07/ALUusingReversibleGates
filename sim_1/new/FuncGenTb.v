`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2023 21:53:47
// Design Name: 
// Module Name: FuncGenTb
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


module FuncGenTb(

    );
    reg a,b,s0,s1,s2,s3;
    wire r0,r1,r2,r3,x1,y1;
    FuncGen uut(.a(a), .b(b),.s0(s0) ,.s1(s1), .s2(s2), .s3(s3), .r0(r0), .r1(r1), .r2(r2), .r3(r3), .x1(x1), .y1(y1));
    
    
    initial
    begin
           a = 0; b = 0; 
           s0 = 0; s1 = 0; s2 = 0; s3 = 0;
           #100;
           s0 = 0; s1 = 1; s2 = 0; s3 = 1;
           #100;
           s0 = 1; s1 = 0; s2 = 1; s3 = 0;
           #100;
           s0 = 1; s1 = 1; s2 = 1; s3 = 1;
           #100;
           a = 0; b = 1; 
           s0 = 0; s1 = 0; s2 = 0; s3 = 0;
           #100;
           s0 = 0; s1 = 1; s2 = 0; s3 = 1;
           #100;
           s0 = 1; s1 = 0; s2 = 1; s3 = 0;
           #100;
           s0 = 1; s1 = 1; s2 = 1; s3 = 1;
           #100;
           a = 1; b = 0; 
           s0 = 0; s1 = 0; s2 = 0; s3 = 0;
           #100;
           s0 = 0; s1 = 1; s2 = 0; s3 = 1;
           #100;
           s0 = 1; s1 = 0; s2 = 1; s3 = 0;
           #100;
           s0 = 1; s1 = 1; s2 = 1; s3 = 1;
           #100;
           a = 1; b = 1; 
           s0 = 0; s1 = 0; s2 = 0; s3 = 0;
           #100;
           s0 = 0; s1 = 1; s2 = 0; s3 = 1;
           #100;
           s0 = 1; s1 = 0; s2 = 1; s3 = 0;
           #100;
           s0 = 1; s1 = 1; s2 = 1; s3 = 1;
           #100;
    $finish;
    end 
endmodule
