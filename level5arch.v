`timescale 1ns / 100ps
`include "parameter.v"

module level5arch (p_begin,p_end,p1maxp,p1minp,p2maxp,p2minp,t_begin,t_end,
t1maxp,t1minp,array_2,p1_cD_full,p2_cD_full,t_cD_full,
p_zero,count1,count2,start_qrs_fin_2,end_qrs_fin_2,data_in,
clk,nReset);

output [5:0] count1;
output [5:0] count2;
output [15:0] p_begin,p_end,p1maxp,p1minp,p2maxp,p2minp,
t_begin,t_end,t1maxp,t1minp; 

reg signed [15:0] cD_l5,cA_l5,len_cD,p_begin,p_end,val,p1maxv,
p1maxp,p1minv,p1minp,p2maxv,p2maxp,p2minv,p2minp,t_begin,t_end,
t1maxv,t1maxp,t1minv,t1minp,start_qrs_temp,p_upper_check,
p_remain,temp1,temp2,temp5,temp6;

output array_2,p1_cD_full,p2_cD_full,t_cD_full,p_zero;

reg array_2,p1_cD_full,p2_cD_full,t_cD_full,p_zero;

input signed [15:0] data_in;

input [15:0] start_qrs_fin_2,end_qrs_fin_2;

wire [15:0] temp3,temp4;

input clk, nReset;
wire clk, nReset;

reg [15:0] c2,c3,c4;

reg signed [15:0] data0, data1;
reg [5:0] count1;
reg [5:0] count2;
reg [5:0] count3;

reg signed [15:0] cD_store [0:`n5-2];

integer i;

always @(posedge clk or negedge nReset)

if (!nReset)
	begin
		data0 <= #20 0;
		data1 <= #20 0;
		cD_l5 <= #20 0;
		cA_l5 <= #20 0;
		count1 <= #20 0;
		count2 <= #20 `n5;
		count3 <= #20 0;
		len_cD <= #20 0;
		for (i=0; i<=`n5-2; i=i+1)
			cD_store[i] <= #20 0;
	end
else
	begin
		if (count1 < 33 && count2 > 0)
		begin
		case (count1)

		0 :	begin
				data0 <= #20 0;
				data1 <= #20 0;
				count1 <= #20 count1 + 1;
			end
		1 :	begin
				if (count2 > 0)
				begin
					count1 <= #20 count1 + 1;
					data0 <= #20 data_in;
					
					if (count3 != 0 && count3 < `n5)
						cD_store[count3-1] <= #20 cD_l5;
					else	
						cD_store[count3-1] <= #20 0;

					if (count2 == 1)
						len_cD <= #20 count3-1;
					else
						len_cD <= #20 len_cD;
				end
			end
		2 : 	begin
				if(count2 > 1)
				begin	
					data0 <= #20 data0 + data_in;
					count1 <= #20 count1 + 1;
				end
			end
		3 :	begin
				data0 <= #20 data0 + data_in;
				count1 <= #20 count1 + 1;
			end
		4 : 	begin
				data0 <= #20 data0 + data_in;
				count1 <= #20 count1 + 1;
			end				
		5 :	begin
				data0 <= #20 data0 + data_in;
				count1 <= #20 count1 + 1;
			end
		6 : 	begin
				data0 <= #20 data0 + data_in;
				count1 <= #20 count1 + 1;
			end
		7 :	begin
				data0 <= #20 data0 + data_in;
				count1 <= #20 count1 + 1;
			end	
		8 :	begin
				data0 <= #20 data0 + data_in;
				count1 <= #20 count1 + 1;
			end	
		9 :	begin
				data0 <= #20 data0 + data_in;
				count1 <= #20 count1 + 1;
			end	
		10 :	begin
				data0 <= #20 data0 + data_in;
				count1 <= #20 count1 + 1;
			end	
		11 :	begin
				data0 <= #20 data0 + data_in;
				count1 <= #20 count1 + 1;
			end	
		12 :	begin
				data0 <= #20 data0 + data_in;
				count1 <= #20 count1 + 1;
			end	
		13 :	begin
				data0 <= #20 data0 + data_in;
				count1 <= #20 count1 + 1;
			end	
		14 :	begin
				data0 <= #20 data0 + data_in;
				count1 <= #20 count1 + 1;
			end	
		15 :	begin
				data0 <= #20 data0 + data_in;
				count1 <= #20 count1 + 1;
			end	
		16 :	begin
				data0 <= #20 data0 + data_in;
				count1 <= #20 count1 + 1;
			end	
		17 :	begin
				data1 <= #20 data_in;
				count1 <= #20 count1 + 1;
			end	
		18 :	begin
				data1 <= #20 data1 + data_in;
				count1 <= #20 count1 + 1;
			end	
		19 :	begin
				data1 <= #20 data1 + data_in;
				count1 <= #20 count1 + 1;
			end	
		20 :	begin
				data1 <= #20 data1 + data_in;
				count1 <= #20 count1 + 1;
			end	
		21 :	begin
				data1 <= #20 data1 + data_in;
				count1 <= #20 count1 + 1;
			end	
		22 :	begin
				data1 <= #20 data1 + data_in;
				count1 <= #20 count1 + 1;
			end	
		23 :	begin
				data1 <= #20 data1 + data_in;
				count1 <= #20 count1 + 1;
			end	
		24 :	begin
				data1 <= #20 data1 + data_in;
				count1 <= #20 count1 + 1;
			end	
		25 :	begin
				data1 <= #20 data1 + data_in;
				count1 <= #20 count1 + 1;
			end	
		26 :	begin
				data1 <= #20 data1 + data_in;
				count1 <= #20 count1 + 1;
			end	
		27 :	begin
				data1 <= #20 data1 + data_in;
				count1 <= #20 count1 + 1;
			end	
		28 :	begin
				data1 <= #20 data1 + data_in;
				count1 <= #20 count1 + 1;
			end	
		29 :	begin
				data1 <= #20 data1 + data_in;
				count1 <= #20 count1 + 1;
			end	
		30 :	begin
				data1 <= #20 data1 + data_in;
				count1 <= #20 count1 + 1;
			end	
		31 :	begin
				data1 <= #20 data1 + data_in;
				count1 <= #20 count1 + 1;
			end	
		32 :	begin
				cA_l5 <= #20 data0 + data1 + data_in;
				cD_l5 <= #20 data0 - (data1 + data_in);
				count3 <= #20 count3 + 1;
				
				count1 <= #20 1;
				count2 <= #20 count2 - 1;
			end
		default :	begin
					data0 <= #20 0;
					data1 <= #20 0;
				end
		endcase

		end
		else
		begin
			count1 <= #20 1;
			len_cD <= #20 len_cD;
		end
	end


//***********************************************************


always @(*)
begin

start_qrs_temp = 0;
p_upper_check = 0;
p_remain = 0;
temp1 = 0;
temp2 = 0;
temp5 = 0;
temp6 = 0;

if (start_qrs_fin_2 != 0)
begin
	start_qrs_temp = start_qrs_fin_2 + 1;
	p_upper_check = start_qrs_temp >> `resol_l5;
	p_remain = start_qrs_temp - (p_upper_check << `resol_l5);

	if (p_remain == 0)
	begin
		temp1 = 0;
		temp2 = (start_qrs_fin_2 >> `resol_l5);
		temp5 = 0;
		temp6 = (start_qrs_fin_2 >> `resol_l5) - 1;
	end
	else
	begin
		temp1 = 0;
		temp2 = (start_qrs_fin_2 >> `resol_l5) - 1;		  			temp5 = 0;
		temp6 = (start_qrs_fin_2 >> `resol_l5) - 2;
	end
end
else
begin
	temp1 = temp1;
	temp2 = temp2;
	temp5 = temp5;
	temp6 = temp6;
	start_qrs_temp = start_qrs_temp ;
	p_upper_check = p_upper_check;
	p_remain = p_remain;
end
end

assign temp3 = (end_qrs_fin_2 >> `resol_l5) + 1;
assign temp4 = len_cD;


always @(posedge clk or negedge nReset)

if (!nReset)
begin
   
	c2 <= #20 0;
	c3 <= #20 0;
	c4 <= #20 0;

	p1maxv <= #20 0;
	p1maxp <= #20 0;
	p1minv <= #20 0;
	p1minp <= #20 0;

	p2maxv <= #20 0;
	p2maxp <= #20 0;
	p2minv <= #20 0;
	p2minp <= #20 0;

	t1maxv <= #20 0;
	t1maxp <= #20 0;
	t1minv <= #20 0;
	t1minp <= #20 0;

	p1_cD_full <= #20 0;
	p2_cD_full <= #20 0;
	t_cD_full <= #20 0;
end
else
begin
	if (count1==2 && count2==1 && start_qrs_fin_2!=0 && 									end_qrs_fin_2!=0)
	begin
		if (c2 <= temp2)
		begin
			if (c2 == temp1) 
			begin
				c2 <= #20 temp1;
			  	p1maxv <= #20 cD_store[temp1];
			  	p1minv <= #20 cD_store[temp1];
			  	p1maxp <= #20 temp1;
			  	p1minp <= #20 temp1;
			  	c2 <= #20 c2 + 1;
			end
			else
			begin
				if (cD_store[c2] > p1maxv)
			  	begin
			  		p1maxv <= #20 cD_store[c2];
					p1maxp <= #20 c2;
					p1minv <= #20 p1minv;
					p1minp <= #20 p1minp;
			  	end
			  	else
			  	begin
			  		if (cD_store[c2] < p1minv)
			  		begin
				  		p1minv <= #20 cD_store[c2];
						p1minp <= #20 c2;
			  			p1maxv <= #20 p1maxv;
						p1maxp <= #20 p1maxp;
			  		end
					else
					begin
			  			p1maxv <= #20 p1maxv;
						p1maxp <= #20 p1maxp;
						p1minv <= #20 p1minv;
						p1minp <= #20 p1minp;
					end
				end

				c2 <= #20 c2 + 1;

				if (c2 >= temp2)
					p1_cD_full <= #20 1;
			  	else
					p1_cD_full <= #20 p1_cD_full;
			end
		end
		else
		begin
			c2 <= #20 c2;
			p1maxv <= #20 p1maxv;
			p1maxp <= #20 p1maxp;
			p1minv <= #20 p1minv;
			p1minp <= #20 p1minp;
			p1_cD_full <= #20 p1_cD_full;
		end

		if (c4 <= temp6)
		begin
			if (c4 == temp5) 
			begin
				c4 <= #20 temp5;
			  	p2maxv <= #20 cD_store[temp5];
			  	p2minv <= #20 cD_store[temp5];
			  	p2maxp <= #20 temp5;
			  	p2minp <= #20 temp5;
			  	c4 <= #20 c4 + 1;
			end
			else
			begin
				if (cD_store[c4] > p2maxv)
			  	begin
			  		p2maxv <= #20 cD_store[c4];
					p2maxp <= #20 c4;
					p2minv <= #20 p2minv;
					p2minp <= #20 p2minp;
			  	end
			  	else
			  	begin
			  		if (cD_store[c4] < p2minv)
			  		begin
				  		p2minv <= #20 cD_store[c4];
						p2minp <= #20 c4;
			  			p2maxv <= #20 p2maxv;
						p2maxp <= #20 p2maxp;
			  		end
					else
					begin
			  			p2maxv <= #20 p2maxv;
						p2maxp <= #20 p2maxp;
						p2minv <= #20 p2minv;
						p2minp <= #20 p2minp;
					end
				end

				c4 <= #20 c4 + 1;

				if (c4 >= temp6)
					p2_cD_full <= #20 1;
			  	else
					p2_cD_full <= #20 p2_cD_full;
			end
		end
		else
		begin
			c4 <= #20 c4;
			p2maxv <= #20 p2maxv;
			p2maxp <= #20 p2maxp;
			p2minv <= #20 p2minv;
			p2minp <= #20 p2minp;
			p2_cD_full <= #20 p2_cD_full;
		end


		if (c3 <= temp4)
		begin
			if (c3 == 0)
				c3 <= #20 temp3; 
			else 
			begin
				if (c3 == temp3) 
				begin
					c3 <= #20 temp3;
				  	t1maxv <= #20 cD_store[temp3];
				  	t1minv <= #20 cD_store[temp3];
				  	t1maxp <= #20 temp3;
				  	t1minp <= #20 temp3;
				  	c3 <= #20 c3 + 1;
				end
				else
				begin
			 		if (cD_store[c3] > t1maxv)
				  	begin
				  		t1maxv <= #20 cD_store[c3];
						t1maxp <= #20 c3;
						t1minv <= #20 t1minv;
						t1minp <= #20 t1minp;
				  	end
				  	else
				  	begin
			 	  		if (cD_store[c3] < t1minv)
				  		begin
					  		t1minv <= #20cD_store[c3];
							t1minp <= #20 c3;
				  			t1maxv <= #20 t1maxv;
							t1maxp <= #20 t1maxp;
				  		end
						else
						begin
				  			t1maxv <= #20 t1maxv;
							t1maxp <= #20 t1maxp;
							t1minv <= #20 t1minv;
							t1minp <= #20 t1minp;
						end
					end

				  	c3 <= #20 c3 + 1;

				  	if (c3 >= temp4)
						t_cD_full <= #20 1;
				  	else
						t_cD_full <= #20 t_cD_full;
				end
			end
		end
		else
		begin
			c3 <= #20 c3;
			t1maxv <= #20 t1maxv;
			t1maxp <= #20 t1maxp;
			t1minv <= #20 t1minv;
			t1minp <= #20 t1minp;
			t_cD_full <= #20 t_cD_full;
		end
	end
	else
	begin
		c2 <= #20 c2;
		c3 <= #20 c3;
		c4 <= #20 c4;
		p1maxv <= #20 p1maxv;
		p1maxp <= #20 p1maxp;
		p1minv <= #20 p1minv;
		p1minp <= #20 p1minp;
		p2maxv <= #20 p2maxv;
		p2maxp <= #20 p2maxp;
		p2minv <= #20 p2minv;
		p2minp <= #20 p2minp;
		p1_cD_full <= #20 p1_cD_full;
		p2_cD_full <= #20 p2_cD_full;
		val <= #20 val;
		t1maxv <= #20 t1maxv;
		t1maxp <= #20 t1maxp;
		t1minv <= #20 t1minv;
		t1minp <= #20 t1minp;
		t_cD_full <= #20 t_cD_full;
	end
end


always @(*)
begin

t_begin = 0;
t_end = 0;

	if (t_cD_full == 1)
	begin
		if (t1minp < t1maxp)
		begin
			t_begin = ((t1minp-1)<<`resol_l5)-1;
			t_end = (((t1maxp+2)<<`resol_l5)										+`t_right)-1; 
		end
		else
		begin
			t_begin = ((t1maxp-1)<<`resol_l5)-1;
			t_end = (((t1minp+2)<<`resol_l5)											+`t_right)-1;
		end

		if (t_begin < end_qrs_fin_2)
			t_begin = end_qrs_fin_2;
		else
			t_begin = t_begin;

		if (t_end > `m)
			t_end = `m;
		else
			t_end = t_end;
	end
	else
	begin
		t_begin = t_begin;
		t_end = t_end;
	end
end

always @(*)
begin

	p_begin = 0;
	p_end = 0;
	val = 0;
	p_zero  = 0;
	array_2 = 0;

	if (p1_cD_full == 1)
	begin
		if (p1minp < p1maxp)
		begin
			val = (((p1maxp+1)<<`resol_l5)										+`p_right)-1;
			if (val != 0 && val < start_qrs_fin_2)
			begin
				if (p1minp <= 0)
					p_begin = ((1<<`resol_l5)-1);
				else
					p_begin = (p1minp											<<`resol_l5)-1;
				p_end = #20 (((p1maxp+1)<<`resol_l5)								+`p_right)-1; 
			end
			else
			begin
				if (val >= start_qrs_fin_2)
				begin
					array_2 = 1;
					if (p2_cD_full == 1)
					begin
						if (p2minp < p2maxp)
						begin
							if (p2minp <= 0)
								p_begin = 										  ((1<<`resol_l5)-1);
							else
								p_begin = 												(p2minp											<<`resol_l5)-1;

							p_end = (((p2maxp+1)									<<`resol_l5)+`p_right)-1; 
						end
						else
						begin
							if (p2minp <= 0)
							begin
								if (p2maxp == 0)
								begin
									p_begin = 												p2maxp;
									p_zero = 1;
								end
								else
									p_begin = 											(p2maxp
									 <<`resol_l5)-1;
							end
							else
							begin
								if (p2maxp == 0)
								begin
									p_begin = 												p2maxp;
									p_zero = 1;
								end
								else
								p_begin = 	(p2maxp										<<`resol_l5)-1;
							end
							p_end = (((p2minp+1)									<<`resol_l5)+`p_right)-1;
						end
						end
						else
						begin
							p_begin = p_begin;
							p_end = p_end;
						end
					end
					else
					begin
						p_begin = p_begin;
						p_end = p_end;
					end
				end
			end
			else
			begin
				val = (((p1minp+1)<<`resol_l5)										+`p_right)-1;
				if (val != 0 && val < start_qrs_fin_2)
				begin
					if (p1minp <= 0)
					begin
						if (p1maxp == 0)
						begin
							p_begin = p1maxp;
							p_zero = 1;
						end
						else
							p_begin = (p1maxp										<<`resol_l5)-1;
					end
					else
					begin
						if (p1maxp == 0)
						begin
							p_begin = p1maxp;
							p_zero = 1;
						end
						else
							p_begin = (p1maxp										<<`resol_l5)-1;
					end
					p_end = (((p1minp+1)<<`resol_l5)										+`p_right)-1;
				end
				else
				begin
					if (val >= start_qrs_fin_2)
					begin
						array_2 = 1;
						if (p2_cD_full == 1)
						begin
							if (p2minp < p2maxp)
							begin
								if (p2minp <= 0)
									p_begin = 									  ((1<<`resol_l5)-1);
								else
									p_begin = 										(p2minp											<<`resol_l5)-1;

							p_end = (((p2maxp+1)								<<`resol_l5)+`p_right)-1; 
							end
							else
							begin
								if (p2minp <= 0)
								begin
									if (p2maxp == 0)
									begin
										p_begin = 									   													p2maxp;
										p_zero =1;
									end
									else
										p_begin = 										(p2maxp
									 <<`resol_l5)-1;
								end
								else
								begin
									if (p2maxp == 0)
									begin
										p_begin = 											   p2maxp;
										p_zero =1; 											     
									end
									else
									p_begin = 										(p2maxp											<<`resol_l5)-1;
								end
								p_end = 										(((p2minp+1)										<<`resol_l5)											+`p_right)-1;
							end
						end
						else
						begin
							p_begin = p_begin;
							p_end = p_end;
						end
					end
					else
					begin
						p_begin = p_begin;
						p_end = p_end;
					end
				end
			end
		end
		else
		begin
			p_begin = p_begin;
			p_end = p_end;
			val = val;
			p_zero  = p_zero;
			array_2 = array_2;
		end
end


endmodule


