`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2023 12:16:39 PM
// Design Name: 
// Module Name: mul4test
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


module mul4test(

    );
    reg[3:0] x,y;
    wire [7:0] product;
    mul4bits dut (x,y,product);
    initial
    begin
    x = 4'b0; y = 4'b1; #10;
    x = 4'd2; y = 4'd6; #10;
    x = 4'd6; y = 4'd8; #10;
    x = 4'b1100; y = 4'd3; #10;
    $finish;
    end
    
    initial
    begin
    $monitor($time,"x = %4b, y = %4b , product = %8b",x,y,product);
    end
    
endmodule
