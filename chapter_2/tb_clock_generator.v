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
// Description: modeling clock_gating
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
reg clock_en;
wire o_clk;

// clk gen
always
    #5 clk = ~clk;
 
initial begin
$display("initialize value [%d]", $time);
	clk = 0;
	clock_en= 0;
# 100
$display("Clock On! [%d]", $time);
	clock_en= 1;
# 100
$display("Clock Off! [%d]", $time);
	clock_en= 0;
# 100
$display("Finish! [%d]", $time);
$finish;
end

clock_gating_model DUT(
	.o_clk(o_clk),
       	.i_clk(clk), 
	.i_clock_en(clock_en)
	);

endmodule
