`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2023 22:10:29
// Design Name: 
// Module Name: dxor
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


module dxor(x,y,c1,f1

    );
    input x,y,c1;
    output f1;
    wire c2,g1,g2;
    CNOT A (x,y,g1,c2);
    CNOT B (c2,c1,g2,f1);
endmodule