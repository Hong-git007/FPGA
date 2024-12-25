//////////////////////////////////////////////////////////////////////////////////
// Company: Personal
// Engineer: Matbi / Austin
//
// Create Date:
// Design Name: 7 bit counter
// Module Name: counter_100
// Project Name:
// Target Devices:
// Tool Versions:
// Description: counting 0~99
//				
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////
 
`timescale 1ns / 1ps
module counter_100(
    input clk,
    input reset_n,
    output [6:0] o_cnt,
    output [6:0] o_cnt_always
    );
	reg [6:0] cnt;  // 100 까지 셀수 있도록 overflow 를 피하기 위해서 7 bit 를 선언하였습니다. 0~127 (2^7)
	always @(posedge clk or negedge reset_n) begin
	    if(!reset_n) begin
	        cnt <= 0;  // 0 부터 counting 가능.
	    end else if (cnt < 100) begin
	        cnt <= cnt + 1; // clock 이 postive edge 일때 마다, counting 을 함.
	    end
	    // 100 이 넘어가면 더이상 counting 을 하지 않음.
	end
	assign o_cnt = cnt;

	reg [6:0] cnt_always;  // 100 까지 셀수 있도록 overflow 를 피하기 위해서 7 bit 를 선언하였습니다. 0~127 (2^7)
	always @(posedge clk or negedge reset_n) begin
	    if(!reset_n) begin
	        cnt_always <= 0;  // 0 부터 counting 가능.
	    end else if (cnt_always == 100-1) begin
	        cnt_always <= 0; // 99 -> 0
	    end else begin
	        cnt_always <= cnt_always + 1; // clock 이 postive edge 일때 마다, counting 을 함.
		end
	end
	assign o_cnt_always = cnt_always;

endmodule
