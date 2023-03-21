`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2023 00:06:56
// Design Name: 
// Module Name: alu2bit
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


module alu2bit(
    input [1:0] a,b,
    input [3:0] s,
    input m,cin,
    output [1:0] f,
    output cout
    );
    
    wire [3:0] r [1:0];
    wire [1:0] x,y;
    wire [1:0] c;
    wire [1:0] oga1,oga2,oga3,ogb1,ogb2,ogb3,ogc1,ogc2,ogc3;
    wire og1,og2,og3;
    
    FuncGen Func0(a[0], b[0], s[0], s[1], s[2], s[3], r[0], r[0][1], r[0][2], r[0][3], x[0], y[0]);
    FuncGen Func1(a[1], b[1], r[0][0], r[0][1], r[0][2], r[0][3], r[1][0], r[1][1], r[1][2], r[1][3], x[1], y[1]);
    
    Toffoli TG0a (x[0],cin,1'b0,oga1[0],oga2[0],oga3[0]);
    Toffoli TG0b (~oga3[0],~y[0],1'b1,ogb1[0],ogb2[0],ogb3[0]);
    Toffoli TG0c (ogb3[0],og2,1'b1,ogc1[0],ogc2[0],ogc3[0]);
    Toffoli TG   (oga2[0],~m,1'b1,og1,og2,og3);
    Toffoli TG1a (x[1],ogc1[0],1'b0,oga1[1],oga2[1],oga3[1]);
    Toffoli TG1b (~oga3[1],~y[1],1'b1,ogb1[1],ogb2[1],ogb3[1]);
    Toffoli TG1c (ogb3[1],ogc2[0],1'b1,ogc1[1],ogc2[1],ogc3[1]);
    
    assign c[0] = og3;
    assign c[1] = ogc3[0];
    assign cout = ~ogb3[1];
    
    dxor dxor0 (oga1[0],~ogb2[0],c[0],f[0]);
    dxor dxor1 (oga1[1],~ogb2[1],c[1],f[1]);
    
    
endmodule