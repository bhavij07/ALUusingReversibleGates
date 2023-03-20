`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2023 06:09:49 PM
// Design Name: 
// Module Name: Toffoli4Sim
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


module Toffoli4Sim(

    );
    reg x1, x2, x3, x4;
    wire y1, y2, y3, y4;
    Toffoli_4x4 uut (x1, x2, x3, x4, y1, y2, y3, y4);
    initial 
    begin
        x1=0; x2=0; x3=0; x4 = 0; #100;
        x1=0; x2=0; x3=0; x4 = 1; #100;
        x1=0; x2=0; x3=1; x4 = 0; #100;
        x1=0; x2=0; x3=1; x4 = 1; #100;
        x1=0; x2=1; x3=0; x4 = 0; #100;
        x1=0; x2=1; x3=0; x4 = 1; #100;
        x1=0; x2=1; x3=1; x4 = 0; #100;
        x1=0; x2=1; x3=1; x4 = 1; #100;
        x1=1; x2=1; x3=0; x4 = 0; #100;
        x1=1; x2=0; x3=0; x4 = 1; #100;
        x1=1; x2=0; x3=1; x4 = 0; #100;
        x1=1; x2=0; x3=1; x4 = 1; #100;
        x1=1; x2=1; x3=0; x4 = 0; #100;
        x1=1; x2=1; x3=0; x4 = 1; #100;
        x1=1; x2=1; x3=1; x4 = 0; #100;
        x1=1; x2=1; x3=1; x4 = 1; #100;          
    end
endmodule
