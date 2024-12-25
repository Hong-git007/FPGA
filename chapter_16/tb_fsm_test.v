//////////////////////////////////////////////////////////////////////////////////
// Company: Personal
// Engineer: Matbi / Austin
//
// Create Date:
// Design Name: 
// Module Name: tb_fsm_test
// Project Name:
// Target Devices:
// Tool Versions:
// Description: Verifify module fsm_test
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
module tb_fsm_test;
reg clk , reset_n;
reg i_run;
wire o_done;
wire [1:0] c_state; 
// clk gen
always
    #5 clk = ~clk;

initial begin
//initialize value
$display("initialize value [%d]", $time);
    	reset_n <= 1;
    	clk     <= 0;
	i_run <= 0;
	
// reset_n gen
$display("Reset! [%d]", $time);
# 100
    	reset_n <= 0;
# 10
    	reset_n <= 1;
# 10
@(posedge clk);
$display("Start! [%d]", $time);
	i_run <= 1;
@(posedge clk);
	i_run <= 0;

# 100
$display("Finish! [%d]", $time);
$finish;
end

// Call DUT
fsm_test u_fsm_test(
  	.clk (clk),
    	.reset_n (reset_n),
	.i_run (i_run),
	.o_done (o_done),
	.c_state(c_state)
);
endmodule
