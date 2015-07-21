`timescale 1ns / 100ps
`include "parameter.v"

module qrs_refinement1(q_begin_ref,s_end_ref,q_begin_l3_temp,s_end_l3_temp,q_begin_l3,s_end_l3,s_end_l3_flag,
count1,count2,clk,nReset,swindow1_full,qwindow1_full,
q_begin_l3_flag);
  
output [15:0] q_begin_ref,s_end_ref,q_begin_l3_temp
,s_end_l3_temp;

reg signed [15:0] q_begin_ref,s_end_ref,q_begin_l3_temp,
s_end_l3_temp;

input [15:0] q_begin_l3,s_end_l3;

input swindow1_full,qwindow1_full,s_end_l3_flag,q_begin_l3_flag;

input [3:0] count1;
input [8:0] count2;

input clk, nReset;

wire clk, nReset;

always @(posedge clk or negedge nReset)

if (!nReset)
	begin
		q_begin_ref <= #20 0;
		s_end_ref <= #20 0;
		q_begin_l3_temp <= #20 0;
		s_end_l3_temp <= #20 0;
	end
else
	begin
		if (count1 == 2 && count2 == 1)
		begin
			if (qwindow1_full != 0)
			begin
				if (q_begin_l3_flag != 0)
					q_begin_l3_temp <= #20 (q_begin_l3-(8*`rat));
				else
					q_begin_l3_temp <= #20 q_begin_l3_temp;
			end
			else
			begin
				q_begin_l3_temp <= #20 q_begin_l3_temp;
			end

			q_begin_ref <= #20 q_begin_l3_temp << `shift3;

			if (swindow1_full != 0)
			begin
				if (s_end_l3_flag != 0)
       	   			s_end_l3_temp <= #20 (s_end_l3+(15*`rat));
				else
					s_end_l3_temp <= #20 s_end_l3_temp;
			end
			else
			begin
				s_end_l3_temp <= #20 s_end_l3_temp;
			end

			s_end_ref <= #20 s_end_l3_temp << `shift3;
		end
		else
		begin
			q_begin_ref <= #20 q_begin_ref;
			s_end_ref <= #20 s_end_ref;
			q_begin_l3_temp <= #20 q_begin_l3_temp;
			s_end_l3_temp <= #20 s_end_l3_temp;
		end
	end
	
endmodule



