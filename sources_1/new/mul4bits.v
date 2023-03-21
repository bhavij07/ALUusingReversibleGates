`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2023 11:56:08 AM
// Design Name: 
// Module Name: mul4bits
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


module mul4bits(x,y,mul

    );
    input [3:0] x,y;
    output [7:0] mul;
    wire[3:0] s;
    wire m,cin;
    assign m = 0;
    assign cin = 1;
    assign s = 4'b1001;
    wire[3:0] a[3:0];
    wire[2:0] cout;
    wire[3:0] f[2:0];
    wire garbage[3:0];
    
    alu4bit D (x,{4{y[0]}},4'b1011,1'b1,1'b1,a[0],garbage[0]);
    alu4bit E (x,{4{y[1]}},4'b1011,1'b1,1'b1,a[1],garbage[1]);
    alu4bit F (x,{4{y[2]}},4'b1011,1'b1,1'b1,a[2],garbage[2]);
    alu4bit G (x,{4{y[3]}},4'b1011,1'b1,1'b1,a[3],garbage[3]);
    
    
    alu4bit A ({1'b0,a[0][3:1]},a[1],s,m,cin,f[0],cout[0]);
    alu4bit B (a[2],{cout[0],f[0][3:1]},s,m,cin,f[1],cout[1]);
    alu4bit C (a[3],{cout[1],f[1][3:1]},s,m,cin,f[2],cout[2]);
    assign mul = {cout[2],f[2],f[1][0],f[0][0],a[0][0]}; 
    
    
endmodule
