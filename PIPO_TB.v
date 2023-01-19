`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2023 02:21:39
// Design Name: 
// Module Name: PIPO_TB
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


module PIPO_TB();

    reg         clk  ;
    reg         rst_ ;
    reg  [3:0]  d_in ;
    wire [3:0]  q_out;

PIPO P1 (
           .clk     (clk),
           .rst_    (rst_),
           .d_in    (d_in),
           .q_out   (q_out)
);

initial
    begin
        clk = 1'b0 ;
    end

always #1 clk <= ~clk ;

initial
    begin
        rst_ = 1'b0;
        #1 rst_ = 1'b1;
    end


initial
    begin

            d_in  <= 4'b0111 ;
        #2  d_in  <= 4'b1001 ;
        #2  d_in  <= 4'b1011 ;
        #2  d_in  <= 4'b1111 ;
        #2  d_in  <= 4'b0001 ;

        #15 $stop;

    end
endmodule
