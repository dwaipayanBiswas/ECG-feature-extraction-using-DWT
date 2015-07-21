`timescale 1ns / 100ps
`include "parameter.v"

module ecg_signal_max(thr1,thr2,count1,count2,min_pos_l3,
max_pos_l3,data_in,clk,nReset);
  
output [15:0] thr1,thr2;

reg signed [15:0] ecg_max,ecg_min,thr1,thr2;

input signed [15:0] data_in;
input [15:0] min_pos_l3,max_pos_l3;

input [3:0] count1;
input [8:0] count2;

input clk, nReset;
wire clk, nReset;

reg [15:0] diff,diff_abs,thr1_temp,temp1,thr2_temp,temp2;

always @(posedge clk or negedge nReset)

if (!nReset)
begin
	ecg_max <= #20 0;
	ecg_min <= #20 0;
end
else
begin
	if (count1 > 0)
	begin
		if (count2 > 1)
		begin
			if (count2 == `n3 && count1 == 1)
			begin
				ecg_max <= #20 data_in;
				ecg_min <= #20 data_in;
			end
			else
			begin
				if (data_in > ecg_max)
				begin
					ecg_max <= #20 data_in;
					ecg_min <= #20 ecg_min;
				end
				else
				begin
					if (data_in < ecg_min)
					begin
						ecg_min <= #20 data_in;
						ecg_max <= #20 ecg_max;
					end
					else
					begin
						ecg_max <= #20 ecg_max;
						ecg_min <= #20 ecg_min;
					end
				end
			end
		end
		else
		begin
			ecg_max <= #20 ecg_max;
			ecg_min <= #20 ecg_min;
		end
	end
	else
	begin
		ecg_max <= #20 ecg_max;
		ecg_min <= #20 ecg_min;
	end
end

always @(*)
begin

diff = 0;
diff_abs = 0; 
temp1 = 0; 
thr1_temp = 0;
thr1 = 0; 
temp2 = 0;  
thr2_temp = 0; 
thr2 = 0; 

if (count2 == 1)
begin
	diff = ecg_max - ecg_min;
	if (diff[15] == 1)
		diff_abs = ~(diff-1);
	else
		diff_abs = diff;

	if (min_pos_l3 < max_pos_l3)
	begin
		if (diff_abs > 4000)	
		begin
			thr1_temp = (diff_abs >> `div2);

			temp1 = thr1_temp<<`mul1;
			thr1 = temp1;
			temp1 = thr1_temp>>`div1;
			thr1 = thr1 + temp1;
			temp1 = thr1_temp>>`div2;
			thr1 = thr1 + temp1;
			temp1 = thr1_temp>>`div4;
			thr1 = thr1 + temp1;
			temp1 = thr1_temp>>`div6;
			thr1 = thr1 + temp1;
			temp1 = thr1_temp>>`div12;
			thr1 = thr1 + temp1 + 1;

			thr2_temp = (diff_abs >> `div3);

			temp2 = thr2_temp<<`mul1;
			thr2 = temp2;
			temp2 = thr2_temp>>`div1;
			thr2 = thr2 + temp2;
			temp2 = thr2_temp>>`div2;
			thr2 = thr2 + temp2;
			temp2 = thr2_temp>>`div4;
			thr2 = thr2 + temp2;
			temp2 = thr2_temp>>`div6;
			thr2 = thr2 + temp2;
			temp2 = thr2_temp>>`div12;
			thr2 = thr2 + temp2 + 1;
		end
		else
		begin
			if (diff_abs > 2000)
			begin
				thr1_temp = (diff_abs >> `div3);

				temp1 = thr1_temp<<`mul1;
				thr1 = temp1;
				temp1 = thr1_temp>>`div1;
				thr1 = thr1 + temp1;
				temp1 = thr1_temp>>`div2;
				thr1 = thr1 + temp1;
				temp1 = thr1_temp>>`div4;
				thr1 = thr1 + temp1;
				temp1 = thr1_temp>>`div6;
				thr1 = thr1 + temp1;
				temp1 = thr1_temp>>`div12;
				thr1 = thr1 + temp1 + 1;
			
				thr2_temp = (diff_abs >> `div4);

				temp2 = thr2_temp<<`mul1;
				thr2 = temp2;
				temp2 = thr2_temp>>`div1;
				thr2 = thr2 + temp2;
				temp2 = thr2_temp>>`div2;
				thr2 = thr2 + temp2;
				temp2 = thr2_temp>>`div4;
				thr2 = thr2 + temp2;
				temp2 = thr2_temp>>`div6;
				thr2 = thr2 + temp2;
				temp2 = thr2_temp>>`div12;
				thr2 = thr2 + temp2 + 1;
			end
			else
			begin
				thr1_temp = (diff_abs >> `div6);

				temp1 = thr1_temp<<`mul1;
				thr1 = temp1;
				temp1 = thr1_temp>>`div1;
				thr1 = thr1 + temp1;
				temp1 = thr1_temp>>`div2;
				thr1 = thr1 + temp1;
				temp1 = thr1_temp>>`div4;
				thr1 = thr1 + temp1;
				temp1 = thr1_temp>>`div6;
				thr1 = thr1 + temp1;
				temp1 = thr1_temp>>`div12;
				thr1 = thr1 + temp1 + 1 + 2;
			
				thr2_temp = (diff_abs >> `div3);

				temp2 = thr2_temp<<`mul1;
				thr2 = temp2;
				temp2 = thr2_temp>>`div1;
				thr2 = thr2 + temp2;
				temp2 = thr2_temp>>`div2;
				thr2 = thr2 + temp2;
				temp2 = thr2_temp>>`div4;
				thr2 = thr2 + temp2;
				temp2 = thr2_temp>>`div6;
				thr2 = thr2 + temp2;
				temp2 = thr2_temp>>`div12;
				thr2 = thr2 + temp2 + 1;
			end
		end
	end
	else
	begin
		if (diff_abs > 4000)	
		begin
			thr1_temp = (diff_abs >> `div7);

			temp1 = thr1_temp<<`mul1;
			thr1 = temp1;
			temp1 = thr1_temp>>`div1;
			thr1 = thr1 + temp1;
			temp1 = thr1_temp>>`div2;
			thr1 = thr1 + temp1;
			temp1 = thr1_temp>>`div4;
			thr1 = thr1 + temp1;
			temp1 = thr1_temp>>`div6;
			thr1 = thr1 + temp1;
			temp1 = thr1_temp>>`div12;
			thr1 = thr1 + temp1 + 1;

			thr2_temp = (diff_abs >> `div4);

			temp2 = thr2_temp<<`mul1;
			thr2 = temp2;
			temp2 = thr2_temp>>`div1;
			thr2 = thr2 + temp2;
			temp2 = thr2_temp>>`div2;
			thr2 = thr2 + temp2;
			temp2 = thr2_temp>>`div4;
			thr2 = thr2 + temp2;
			temp2 = thr2_temp>>`div6;
			thr2 = thr2 + temp2;
			temp2 = thr2_temp>>`div12;
			thr2 = thr2 + temp2 + 1;
		end
		else
		begin
			if (diff_abs > 2000)
			begin
				thr1_temp = (diff_abs >> `div5);

				temp1 = thr1_temp<<`mul1;
				thr1 = temp1;
				temp1 = thr1_temp>>`div1;
				thr1 = thr1 + temp1;
				temp1 = thr1_temp>>`div2;
				thr1 = thr1 + temp1;
				temp1 = thr1_temp>>`div4;
				thr1 = thr1 + temp1;
				temp1 = thr1_temp>>`div6;
				thr1 = thr1 + temp1;
				temp1 = thr1_temp>>`div12;
				thr1 = thr1 + temp1 + 1;
			
				thr2_temp = (diff_abs >> `div3);

				temp2 = thr2_temp<<`mul1;
				thr2 = temp2;
				temp2 = thr2_temp>>`div1;
				thr2 = thr2 + temp2;
				temp2 = thr2_temp>>`div2;
				thr2 = thr2 + temp2;
				temp2 = thr2_temp>>`div4;
				thr2 = thr2 + temp2;
				temp2 = thr2_temp>>`div6;
				thr2 = thr2 + temp2;
				temp2 = thr2_temp>>`div12;
				thr2 = thr2 + temp2 + 1;
			end
			else
			begin
				thr1_temp = (diff_abs >> `div5);

				temp1 = thr1_temp<<`mul1;
				thr1 = temp1;
				temp1 = thr1_temp>>`div1;
				thr1 = thr1 + temp1;
				temp1 = thr1_temp>>`div2;
				thr1 = thr1 + temp1;
				temp1 = thr1_temp>>`div4;
				thr1 = thr1 + temp1;
				temp1 = thr1_temp>>`div6;
				thr1 = thr1 + temp1;
				temp1 = thr1_temp>>`div12;
				thr1 = thr1 + temp1 + 1;
			
				thr2_temp = (diff_abs >> `div3);

				temp2 = thr2_temp<<`mul1;
				thr2 = temp2;
				temp2 = thr2_temp>>`div1;
				thr2 = thr2 + temp2;
				temp2 = thr2_temp>>`div2;
				thr2 = thr2 + temp2;
				temp2 = thr2_temp>>`div4;
				thr2 = thr2 + temp2;
				temp2 = thr2_temp>>`div6;
				thr2 = thr2 + temp2;
				temp2 = thr2_temp>>`div12;
				thr2 = thr2 + temp2 + 1;
			end
		end
	end
end
else
begin
	thr1 = thr1;
	thr2 = thr2;
	temp1 = temp1;
	temp2 = temp2;
	thr1_temp = thr1_temp;
	thr2_temp = thr2_temp;
	diff = diff;
	diff_abs = diff_abs;
end

end

endmodule

