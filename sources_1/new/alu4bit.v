`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2023 01:33:41
// Design Name: 
// Module Name: alu4bit
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


module alu4bit(
    input [3:0] a,b,
    input [3:0] s,
    input m,cin,
    input [3:0] f,
    input cout
    );
    
        wire [3:0] r [3:0];
    wire [3:0] x,y;
    wire [3:0] c;
    wire [3:0] oga1,oga2,oga3,ogb1,ogb2,ogb3,ogc1,ogc2,ogc3;
    wire og1,og2,og3;
    
    FuncGen Func0(a[0], b[0], s[0], s[1], s[2], s[3], r[0], r[0][1], r[0][2], r[0][3], x[0], y[0]);
    FuncGen Func1(a[1], b[1], r[0][0], r[0][1], r[0][2], r[0][3], r[1][0], r[1][1], r[1][2], r[1][3], x[1], y[1]);
    FuncGen Func2(a[2], b[2], r[1][0], r[1][1], r[1][2], r[1][3], r[2][0], r[2][1], r[2][2], r[2][3], x[2], y[2]);
    FuncGen Func3(a[3], b[3], r[2][0], r[2][1], r[2][2], r[2][3], r[3][0], r[3][1], r[3][2], r[3][3], x[3], y[3]);
    
    Toffoli TG0a (x[0],cin,1'b0,oga1[0],oga2[0],oga3[0]);
    Toffoli TG0b (~oga3[0],~y[0],1'b1,ogb1[0],ogb2[0],ogb3[0]);
    Toffoli TG0c (ogb3[0],og2,1'b1,ogc1[0],ogc2[0],ogc3[0]);
    
    Toffoli TG   (oga2[0],~m,1'b1,og1,og2,og3);
    
    Toffoli TG1a (x[1],ogc1[0],1'b0,oga1[1],oga2[1],oga3[1]);
    Toffoli TG1b (~oga3[1],~y[1],1'b1,ogb1[1],ogb2[1],ogb3[1]);
    Toffoli TG1c (ogb3[1],ogc2[0],1'b1,ogc1[1],ogc2[1],ogc3[1]);
    
    Toffoli TG2a (x[2],ogc1[1],1'b0,oga1[2],oga2[2],oga3[2]);
    Toffoli TG2b (~oga3[2],~y[2],1'b1,ogb1[2],ogb2[2],ogb3[2]);
    Toffoli TG2c (ogb3[2],ogc2[1],1'b1,ogc1[2],ogc2[2],ogc3[2]);
    
    Toffoli TG3a (x[3],ogc1[2],1'b0,oga1[3],oga2[3],oga3[3]);
    Toffoli TG3b (~oga3[3],~y[3],1'b1,ogb1[3],ogb2[3],ogb3[3]);
    Toffoli TG3c (ogb3[3],ogc2[2],1'b1,ogc1[3],ogc2[3],ogc3[3]);
    
    assign c[0] = og3;
    assign c[1] = ogc3[0];
    assign c[2] = ogc3[1];
    assign c[3] = ogc3[2];
    assign cout = ~ogb3[3];
    
    dxor dxor0 (oga1[0],~ogb2[0],c[0],f[0]);
    dxor dxor1 (oga1[1],~ogb2[1],c[1],f[1]);
    dxor dxor2 (oga1[2],~ogb2[2],c[2],f[2]);
    dxor dxor3 (oga1[3],~ogb2[3],c[3],f[3]);
    
endmodule
