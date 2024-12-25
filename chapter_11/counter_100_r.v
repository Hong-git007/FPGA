`timescale 1ns / 1ps

module counter_100_r(
	input clk,
	input reset_n,
	output reg [6:0] o_cnt
);

always @(posedge clk or negedge reset_n) begin
	if(!reset_n) o_cnt=0;

	else if(o_cnt ==  100) o_cnt = 0;

	else o_cnt = o_cnt + 1;
end

endmodule
