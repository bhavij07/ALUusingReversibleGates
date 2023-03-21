`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2023 06:07:56 PM
// Design Name: 
// Module Name: Toffoli_4x4
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


module Toffoli_4x4(
    input x1, x2, x3, x4,
    output y1, y2, y3, y4
    );
    assign y1 = x1;
    assign y2 = x2;
    assign y3 = x3;
    assign y4 = (x1&x2&x3)^x4;
endmodule
