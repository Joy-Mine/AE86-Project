`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/12 22:44:16
// Design Name: 
// Module Name: cik_div_2HZ
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


//  module cik_div_2HZ(input clk,rst,output reg clk_2HZ  );//0信号使能，2hz分频器
 module cik_div_2HZ(input clk,output reg clk_2HZ  );//0信号使能，2hz分频器
parameter  period = 50_000000;

reg [31:0] div2hz_cnt=0;
// always@(posedge clk )
// always@(posedge clk or negedge rst)
always@(posedge clk )
begin
	// if(rst)begin
	// 	div2hz_cnt=26'd00;
	// 	end
	// else if( div2hz_cnt==12500000)
	if( div2hz_cnt==12500000)
	begin
		clk_2HZ=~clk_2HZ;
        div2hz_cnt=0;
	end
	else
		div2hz_cnt=div2hz_cnt+1'b1;
end



endmodule
