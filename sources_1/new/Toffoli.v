`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2023 11:36:31 AM
// Design Name: 
// Module Name: Toffoli
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


module Toffoli(
    input x1, x2, x3,
    output y1, y2, y3
    );
    assign y1 = x1;
    assign y2 = x2;
    assign y3 = (x1 & x2)^x3;
endmodule
