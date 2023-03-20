`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2023 06:35:08 PM
// Design Name: 
// Module Name: FuncGen
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


module FuncGen(
    input a, b, s0, s1, s2, s3,
    output r0, r1, r2, r3, x1, y1
    );
    
    wire [18:0] og;
    wire og7not, og9not, og3not, og11not, og13not;
    not (bnot, b);
    not (og7not, og[7]);
    not (og9not, og[9]);
    not (og3not,  og[3]);
    not (og11not,  og[11]);
    not (og13not,  og[16]);
    Toffoli TG1 (a, og41, 0, og[0], og[1], og[2]);
    Toffoli TG2 (og[0], bnot, 0, og[3], og[4], og[5]);
    Toffoli TG3 (og[2], s0, 0, og[6], r0, og[7]);
    Toffoli TG4 (og[4], s1, 0, og[8], r1, og[9]);
    Toffoli TG5 (og[5], s2, 0, og[10], r2, og[11]);
    Toffoli TG6 (og[2], s3, 0, og[12], r3, og[13]);
    Toffoli_4x4 TG7 (og7not, og9not, og3not, 1, og[15], og[16], x1);
    Toffoli TG18 (og11not, og13not, 1, og[11], og[18], y1);
endmodule
