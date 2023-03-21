`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2023 01:48:06
// Design Name: 
// Module Name: alu4bittb
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


module alu4bittb(

    );
    
    reg [3:0] a,b;
    reg cin, m;
    reg [3:0] s;
    wire [3:0] f;
    wire cout;

    alu4bit uut(a, b, s, m, cin, f, cout);
    
    integer i;
    
    initial begin
    a = 4'b0011; b = 4'b0101;
    m = 1; cin = 1;
    
    for(i=0; i<16; i = i+1) begin
        s = i[3:0];
        #10;
        end
    end
    
    initial begin
    $display("a = %4b, b = %4b, cin = %1b, m = %1b \nm = 1 -> Logical Operations",a,b,cin,m);
    $monitor($time, "s = %4b, output = %4b, cout = %1b",s,f,cout);
    end
    
    initial begin
    #160;
    a = 4'b0011; b = 4'b0101;
    m = 0; cin = 1;
    
    for(i=0; i<16; i = i+1) begin
        s = i[3:0];
        #10;
        end
    $finish;
    end
    
    initial begin
    #160;
    $display("a = %4b, b = %4b, cin = %1b, m = %1b \nm = 0 -> Arithmetic Operations",a,b,cin,m);
    end
    
endmodule
