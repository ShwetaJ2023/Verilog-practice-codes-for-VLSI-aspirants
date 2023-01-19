`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2023 02:14:54
// Design Name: 
// Module Name: PIPO
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


module PIPO(

    input           clk, // clock
    input           rst_, // active low reset
    input [3:0]     d_in, // data in
    output reg [3:0]q_out // data out

);
    
    always @(posedge clk)
     begin
    
            if(!rst_)
    
                 q_out <= 4'd0;
    
            else
    
                  q_out <= d_in;
      end
    
    
endmodule
