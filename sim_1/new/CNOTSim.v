`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2023 11:34:58 AM
// Design Name: 
// Module Name: CNOTSim
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


module CNOTSim(

    );
    reg x1, x2;
    wire y1, y2;
    CNOT uut(x1, x2, y1, y2);
    initial
    begin
        x1=0; x2=0; #100;
        x1=0; x2=1; #100;
        x1=1; x2=0; #100;
        x1=1; x2=1; #100;
    end
endmodule
