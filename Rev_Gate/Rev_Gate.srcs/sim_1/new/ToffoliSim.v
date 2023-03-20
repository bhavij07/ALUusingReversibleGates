`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2023 11:37:30 AM
// Design Name: 
// Module Name: ToffoliSim
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


module ToffoliSim(

    );
    reg x1, x2, x3;
    wire y1, y2, y3;
    Toffoli uut (x1, x2, x3, y1, y2, y3);
    initial 
    begin
        x1=0; x2=0; x3=0; #100;
        x1=0; x2=0; x3=1; #100;
        x1=0; x2=1; x3=0; #100;
        x1=0; x2=1; x3=1; #100;
        x1=1; x2=0; x3=0; #100;
        x1=1; x2=0; x3=1; #100;
        x1=1; x2=1; x3=0; #100;
        x1=1; x2=1; x3=1; #100;
    end
endmodule
