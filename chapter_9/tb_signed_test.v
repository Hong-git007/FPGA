//////////////////////////////////////////////////////////////////////////////////
// Company: Personal
// Engineer: Matbi / Austin
//
// Create Date:
// Design Name: tb_signed_test
// Module Name: tb_signed_test
// Project Name:
// Target Devices:
// Tool Versions:
// Description: signed_test
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module tb_signed_test;

reg         [3:0]   a;              // 0~15
reg signed  [3:0]   b;              // -8~7
reg signed  [4:0]   correct;
reg signed  [4:0]   wrong;
initial begin
    a = 15;
    b = -8;
    correct = $signed({1'b0,a}) + b;
    wrong = a + b;
    $display("%d + %d = %d\n", a, b, correct);
    $display("%d + %d = %d\n", a, b, wrong);
end

endmodule
