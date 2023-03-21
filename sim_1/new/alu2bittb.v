`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2023 00:57:18
// Design Name: 
// Module Name: alu2bittb
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


module alu2bittb();

reg [1:0] a,b;
reg cin, m;
reg [3:0] s;
wire [1:0] f;
wire cout;

alu2bit uut(a, b, s, m, cin, f, cout);

integer i,j,k;

    initial
    begin
    m = 1'b0; cin=1;
           for(i=0;i<4;i=i+1) begin
            for(j=0;j<4;j=j+1) begin
                for(k=0;k<16;k=k+1) begin
                s = k[3:0];
                a = 2'b01; b = 2'b10;
                #10;
            end
            end
           end          
    $finish;
    end 

endmodule
