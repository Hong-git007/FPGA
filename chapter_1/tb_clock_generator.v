//////////////////////////////////////////////////////////////////////////////////
// Company: Personal
// Engineer: Matbi / Austin
//
// Create Date:
// Design Name: tb_clock_generator
// Module Name: tb_clock_generator
// Project Name:
// Target Devices:
// Tool Versions:
// Description: clock generator test
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module tb_clock_generator;
reg clk;

// clk gen
always
    #5 clk = ~clk;
 
initial begin
$display("initialize value [%d]", $time);
    clk     <= 0;
$display("Start! [%d]", $time);
# 100
$display("Finish! [%d]", $time);
$finish;
end
 

endmodule
