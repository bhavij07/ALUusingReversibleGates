`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2023 11:33:51 AM
// Design Name: 
// Module Name: CNOT
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


module CNOT(
    input x1, x2,
    output y1, y2
    );
    
    assign y1 = x1;
    assign y2 = x1^x2;
endmodule
