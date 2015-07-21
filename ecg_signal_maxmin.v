`timescale 1ns / 100ps
`include "parameter.v"

module ecg_signal_maxmin(q_peak_ref,q_peak_pos_ref,s_peak_ref,s_peak_pos_ref,p_peak,p_peak_pos,p_begin,p_end,t_peak,t_peak_pos,t_begin,t_end,array_2,p1_cD_full,p2_cD_full,t_cD_full,p_zero,p1maxp,p1minp,p2maxp,p2minp,
t1maxp,t1minp,start_qrs_fin_2,end_qrs_fin_2,r_peak_pos_ref,
count1,count2,ecg0,ecg1,ecg2,ecg3,ecg4,ecg5,ecg6,ecg7,ecg8,ecg9,ecg10,ecg11,ecg12,ecg13,ecg14,ecg15,ecg16,ecg17,ecg18,ecg19,ecg20,ecg21,ecg22,ecg23,ecg24,ecg25,ecg26,ecg27,ecg28,ecg29,ecg30,ecg31,ecg32,ecg33,ecg34,ecg35,ecg36,ecg37,ecg38,ecg39,ecg40,ecg41,ecg42,ecg43,ecg44,ecg45,ecg46,ecg47,ecg48,ecg49,ecg50,ecg51,ecg52,ecg53,ecg54,ecg55,ecg56,ecg57,ecg58,ecg59,ecg60,ecg61,ecg62,ecg63,ecg64,ecg65,ecg66,ecg67,ecg68,ecg69,ecg70,ecg71,ecg72,ecg73,ecg74,ecg75,ecg76,ecg77,ecg78,ecg79,ecg80,ecg81,ecg82,ecg83,ecg84,ecg85,ecg86,ecg87,ecg88,ecg89,ecg90,ecg91,ecg92,ecg93,ecg94,ecg95,ecg96,ecg97,ecg98,ecg99,ecg100,ecg101,ecg102,ecg103,ecg104,ecg105,ecg106,ecg107,ecg108,ecg109,ecg110,ecg111,ecg112,ecg113,ecg114,ecg115,ecg116,ecg117,ecg118,ecg119,ecg120,ecg121,ecg122,ecg123,ecg124,ecg125,ecg126,ecg127,ecg128,ecg129,ecg130,ecg131,ecg132,ecg133,ecg134,ecg135,ecg136,ecg137,ecg138,ecg139,ecg140,ecg141,ecg142,ecg143,ecg144,ecg145,ecg146,ecg147,ecg148,ecg149,ecg150,ecg151,ecg152,ecg153,ecg154,ecg155,ecg156,ecg157,ecg158,ecg159,ecg160,ecg161,ecg162,ecg163,ecg164,ecg165,ecg166,ecg167,ecg168,ecg169,ecg170,ecg171,ecg172,ecg173,ecg174,ecg175,ecg176,ecg177,ecg178,ecg179,ecg180,ecg181,ecg182,ecg183,ecg184,ecg185,ecg186,ecg187,ecg188,ecg189,ecg190,ecg191,ecg192,ecg193,ecg194,ecg195,ecg196,ecg197,ecg198,ecg199,ecg200,ecg201,ecg202,ecg203,ecg204,ecg205,ecg206,ecg207,ecg208,ecg209,ecg210,ecg211,ecg212,ecg213,ecg214,ecg215,ecg216,ecg217,ecg218,ecg219,ecg220,ecg221,ecg222,ecg223,ecg224,ecg225,ecg226,ecg227,ecg228,ecg229,ecg230,ecg231,ecg232,ecg233,ecg234,ecg235,ecg236,ecg237,ecg238,ecg239,ecg240,ecg241,ecg242,ecg243,ecg244,ecg245,ecg246,ecg247,ecg248,ecg249,ecg250,ecg251,ecg252,ecg253,ecg254,ecg255,ecg256,ecg257,ecg258,ecg259,ecg260,ecg261,ecg262,ecg263,ecg264,ecg265,ecg266,ecg267,ecg268,ecg269,ecg270,ecg271,ecg272,ecg273,ecg274,ecg275,ecg276,ecg277,ecg278,ecg279,ecg280,ecg281,ecg282,ecg283,ecg284,ecg285,ecg286,ecg287,ecg288,ecg289,ecg290,ecg291,ecg292,ecg293,ecg294,ecg295,ecg296,ecg297,ecg298,ecg299,ecg300,ecg301,ecg302,ecg303,ecg304,ecg305,ecg306,ecg307,ecg308,ecg309,ecg310,ecg311,ecg312,ecg313,ecg314,ecg315,ecg316,ecg317,ecg318,ecg319,ecg320,ecg321,ecg322,ecg323,ecg324,ecg325,ecg326,ecg327,ecg328,ecg329,ecg330,ecg331,ecg332,ecg333,ecg334,ecg335,ecg336,ecg337,ecg338,ecg339,ecg340,ecg341,ecg342,ecg343,ecg344,ecg345,ecg346,ecg347,ecg348,ecg349,ecg350,ecg351,ecg352,ecg353,ecg354,ecg355,ecg356,ecg357,ecg358,ecg359,ecg360,ecg361,ecg362,ecg363,ecg364,ecg365,ecg366,ecg367,ecg368,ecg369,ecg370,ecg371,ecg372,ecg373,ecg374,ecg375,ecg376,ecg377,ecg378,ecg379,ecg380,ecg381,ecg382,ecg383,ecg384,ecg385,ecg386,ecg387,ecg388,ecg389,ecg390,ecg391,ecg392,ecg393,ecg394,ecg395,ecg396,ecg397,ecg398,ecg399,ecg400,ecg401,ecg402,ecg403,ecg404,ecg405,ecg406,ecg407,ecg408,ecg409,ecg410,ecg411,ecg412,ecg413,ecg414,ecg415,ecg416,ecg417,ecg418,ecg419,ecg420,ecg421,ecg422,ecg423,ecg424,ecg425,ecg426,ecg427,ecg428,ecg429,ecg430,ecg431,ecg432,ecg433,ecg434,ecg435,ecg436,ecg437,ecg438,ecg439,ecg440,ecg441,ecg442,ecg443,ecg444,ecg445,ecg446,ecg447,ecg448,ecg449,ecg450,ecg451,ecg452,ecg453,ecg454,ecg455,ecg456,ecg457,ecg458,ecg459,ecg460,ecg461,ecg462,ecg463,ecg464,ecg465,ecg466,ecg467,ecg468,ecg469,ecg470,ecg471,ecg472,ecg473,ecg474,ecg475,ecg476,ecg477,ecg478,ecg479,ecg480,ecg481,ecg482,ecg483,ecg484,ecg485,ecg486,ecg487,ecg488,ecg489,ecg490,ecg491,ecg492,ecg493,ecg494,ecg495,ecg496,ecg497,ecg498,ecg499,ecg500,ecg501,ecg502,ecg503,ecg504,ecg505,ecg506,ecg507,ecg508,ecg509,ecg510,ecg511,ecg512,ecg513,ecg514,ecg515,ecg516,ecg517,ecg518,ecg519,ecg520,ecg521,ecg522,ecg523,ecg524,ecg525,ecg526,ecg527,ecg528,ecg529,ecg530,ecg531,ecg532,ecg533,ecg534,ecg535,ecg536,ecg537,ecg538,ecg539,ecg540,ecg541,ecg542,ecg543,ecg544,ecg545,ecg546,ecg547,ecg548,ecg549,ecg550,ecg551,ecg552,ecg553,ecg554,ecg555,ecg556,ecg557,ecg558,ecg559,ecg560,ecg561,ecg562,ecg563,ecg564,ecg565,ecg566,ecg567,ecg568,ecg569,ecg570,ecg571,ecg572,ecg573,ecg574,ecg575,ecg576,ecg577,ecg578,ecg579,ecg580,ecg581,ecg582,ecg583,ecg584,ecg585,ecg586,ecg587,ecg588,ecg589,ecg590,ecg591,ecg592,ecg593,ecg594,ecg595,ecg596,ecg597,ecg598,ecg599,
ecg600,ecg601,ecg602,ecg603,ecg604,ecg605,ecg606,ecg607,ecg608,ecg609,ecg610,ecg611,ecg612,ecg613,ecg614,ecg615,ecg616,ecg617,ecg618,ecg619,ecg620,ecg621,ecg622,ecg623,ecg624,ecg625,ecg626,ecg627,ecg628,ecg629,ecg630,ecg631,ecg632,ecg633,ecg634,ecg635,ecg636,ecg637,ecg638,ecg639,ecg640,ecg641,ecg642,ecg643,ecg644,ecg645,ecg646,ecg647,ecg648,ecg649,ecg650,ecg651,ecg652,ecg653,ecg654,ecg655,ecg656,ecg657,ecg658,ecg659,ecg660,ecg661,ecg662,ecg663,ecg664,ecg665,ecg666,ecg667,ecg668,ecg669,ecg670,ecg671,ecg672,ecg673,ecg674,ecg675,ecg676,ecg677,ecg678,ecg679,ecg680,ecg681,ecg682,ecg683,ecg684,ecg685,ecg686,ecg687,ecg688,ecg689,ecg690,ecg691,ecg692,ecg693,ecg694,ecg695,ecg696,ecg697,ecg698,ecg699,ecg700,ecg701,ecg702,ecg703,ecg704,ecg705,ecg706,ecg707,ecg708,ecg709,ecg710,ecg711,ecg712,ecg713,ecg714,ecg715,ecg716,ecg717,ecg718,ecg719,ecg720,ecg721,ecg722,ecg723,ecg724,ecg725,ecg726,ecg727,ecg728,ecg729,ecg730,ecg731,ecg732,ecg733,ecg734,ecg735,ecg736,ecg737,ecg738,ecg739,ecg740,ecg741,ecg742,ecg743,ecg744,ecg745,ecg746,ecg747,ecg748,ecg749,ecg750,ecg751,ecg752,ecg753,ecg754,ecg755,ecg756,ecg757,ecg758,ecg759,ecg760,ecg761,ecg762,ecg763,ecg764,ecg765,ecg766,ecg767,ecg768,ecg769,ecg770,ecg771,ecg772,ecg773,ecg774,ecg775,ecg776,ecg777,ecg778,ecg779,ecg780,ecg781,ecg782,ecg783,ecg784,ecg785,ecg786,ecg787,ecg788,ecg789,ecg790,ecg791,ecg792,ecg793,ecg794,ecg795,ecg796,ecg797,ecg798,ecg799,clk,nReset);
  
output [15:0] q_peak_ref,q_peak_pos_ref,s_peak_ref,s_peak_pos_ref,p_peak,p_peak_pos,t_peak,t_peak_pos;

reg signed [15:0] q_peak_ref,q_peak_pos_ref,s_peak_ref,s_peak_pos_ref,p_peak,p_peak_pos,t_peak,t_peak_pos,max1v,max1p,min1v,min1p,
max2v,max2p,min2v,min2p,q_peak_pos_temp,s_peak_pos_temp;

input [15:0] p_begin,p_end,t_begin,t_end,p1maxp,p1minp,
p2maxp,p2minp,t1maxp,t1minp,start_qrs_fin_2,end_qrs_fin_2,
r_peak_pos_ref;

input signed [15:0] ecg0,ecg1,ecg2,ecg3,ecg4,ecg5,ecg6,ecg7,ecg8,ecg9,ecg10,ecg11,ecg12,ecg13,ecg14,ecg15,ecg16,ecg17,ecg18,ecg19,ecg20,ecg21,ecg22,ecg23,ecg24,ecg25,ecg26,ecg27,ecg28,ecg29,ecg30,ecg31,ecg32,ecg33,ecg34,ecg35,ecg36,ecg37,ecg38,ecg39,ecg40,ecg41,ecg42,ecg43,ecg44,ecg45,ecg46,ecg47,ecg48,ecg49,ecg50,ecg51,ecg52,ecg53,ecg54,ecg55,ecg56,ecg57,ecg58,ecg59,ecg60,ecg61,ecg62,ecg63,ecg64,ecg65,ecg66,ecg67,ecg68,ecg69,ecg70,ecg71,ecg72,ecg73,ecg74,ecg75,ecg76,ecg77,ecg78,ecg79,ecg80,ecg81,ecg82,ecg83,ecg84,ecg85,ecg86,ecg87,ecg88,ecg89,ecg90,ecg91,ecg92,ecg93,ecg94,ecg95,ecg96,ecg97,ecg98,ecg99,ecg100,ecg101,ecg102,ecg103,ecg104,ecg105,ecg106,ecg107,ecg108,ecg109,ecg110,ecg111,ecg112,ecg113,ecg114,ecg115,ecg116,ecg117,ecg118,ecg119,ecg120,ecg121,ecg122,ecg123,ecg124,ecg125,ecg126,ecg127,ecg128,ecg129,ecg130,ecg131,ecg132,ecg133,ecg134,ecg135,ecg136,ecg137,ecg138,ecg139,ecg140,ecg141,ecg142,ecg143,ecg144,ecg145,ecg146,ecg147,ecg148,ecg149,ecg150,ecg151,ecg152,ecg153,ecg154,ecg155,ecg156,ecg157,ecg158,ecg159,ecg160,ecg161,ecg162,ecg163,ecg164,ecg165,ecg166,ecg167,ecg168,ecg169,ecg170,ecg171,ecg172,ecg173,ecg174,ecg175,ecg176,ecg177,ecg178,ecg179,ecg180,ecg181,ecg182,ecg183,ecg184,ecg185,ecg186,ecg187,ecg188,ecg189,ecg190,ecg191,ecg192,ecg193,ecg194,ecg195,ecg196,ecg197,ecg198,ecg199,ecg200,ecg201,ecg202,ecg203,ecg204,ecg205,ecg206,ecg207,ecg208,ecg209,ecg210,ecg211,ecg212,ecg213,ecg214,ecg215,ecg216,ecg217,ecg218,ecg219,ecg220,ecg221,ecg222,ecg223,ecg224,ecg225,ecg226,ecg227,ecg228,ecg229,ecg230,ecg231,ecg232,ecg233,ecg234,ecg235,ecg236,ecg237,ecg238,ecg239,ecg240,ecg241,ecg242,ecg243,ecg244,ecg245,ecg246,ecg247,ecg248,ecg249,ecg250,ecg251,ecg252,ecg253,ecg254,ecg255,ecg256,ecg257,ecg258,ecg259,ecg260,ecg261,ecg262,ecg263,ecg264,ecg265,ecg266,ecg267,ecg268,ecg269,ecg270,ecg271,ecg272,ecg273,ecg274,ecg275,ecg276,ecg277,ecg278,ecg279,ecg280,ecg281,ecg282,ecg283,ecg284,ecg285,ecg286,ecg287,ecg288,ecg289,ecg290,ecg291,ecg292,ecg293,ecg294,ecg295,ecg296,ecg297,ecg298,ecg299,ecg300,ecg301,ecg302,ecg303,ecg304,ecg305,ecg306,ecg307,ecg308,ecg309,ecg310,ecg311,ecg312,ecg313,ecg314,ecg315,ecg316,ecg317,ecg318,ecg319,ecg320,ecg321,ecg322,ecg323,ecg324,ecg325,ecg326,ecg327,ecg328,ecg329,ecg330,ecg331,ecg332,ecg333,ecg334,ecg335,ecg336,ecg337,ecg338,ecg339,ecg340,ecg341,ecg342,ecg343,ecg344,ecg345,ecg346,ecg347,ecg348,ecg349,ecg350,ecg351,ecg352,ecg353,ecg354,ecg355,ecg356,ecg357,ecg358,ecg359,ecg360,ecg361,ecg362,ecg363,ecg364,ecg365,ecg366,ecg367,ecg368,ecg369,ecg370,ecg371,ecg372,ecg373,ecg374,ecg375,ecg376,ecg377,ecg378,ecg379,ecg380,ecg381,ecg382,ecg383,ecg384,ecg385,ecg386,ecg387,ecg388,ecg389,ecg390,ecg391,ecg392,ecg393,ecg394,ecg395,ecg396,ecg397,ecg398,ecg399,ecg400,ecg401,ecg402,ecg403,ecg404,ecg405,ecg406,ecg407,ecg408,ecg409,ecg410,ecg411,ecg412,ecg413,ecg414,ecg415,ecg416,ecg417,ecg418,ecg419,ecg420,ecg421,ecg422,ecg423,ecg424,ecg425,ecg426,ecg427,ecg428,ecg429,ecg430,ecg431,ecg432,ecg433,ecg434,ecg435,ecg436,ecg437,ecg438,ecg439,ecg440,ecg441,ecg442,ecg443,ecg444,ecg445,ecg446,ecg447,ecg448,ecg449,ecg450,ecg451,ecg452,ecg453,ecg454,ecg455,ecg456,ecg457,ecg458,ecg459,ecg460,ecg461,ecg462,ecg463,ecg464,ecg465,ecg466,ecg467,ecg468,ecg469,ecg470,ecg471,ecg472,ecg473,ecg474,ecg475,ecg476,ecg477,ecg478,ecg479,ecg480,ecg481,ecg482,ecg483,ecg484,ecg485,ecg486,ecg487,ecg488,ecg489,ecg490,ecg491,ecg492,ecg493,ecg494,ecg495,ecg496,ecg497,ecg498,ecg499,ecg500,ecg501,ecg502,ecg503,ecg504,ecg505,ecg506,ecg507,ecg508,ecg509,ecg510,ecg511,ecg512,ecg513,ecg514,ecg515,ecg516,ecg517,ecg518,ecg519,ecg520,ecg521,ecg522,ecg523,ecg524,ecg525,ecg526,ecg527,ecg528,ecg529,ecg530,ecg531,ecg532,ecg533,ecg534,ecg535,ecg536,ecg537,ecg538,ecg539,ecg540,ecg541,ecg542,ecg543,ecg544,ecg545,ecg546,ecg547,ecg548,ecg549,ecg550,ecg551,ecg552,ecg553,ecg554,ecg555,ecg556,ecg557,ecg558,ecg559,ecg560,ecg561,ecg562,ecg563,ecg564,ecg565,ecg566,ecg567,ecg568,ecg569,ecg570,ecg571,ecg572,ecg573,ecg574,ecg575,ecg576,ecg577,ecg578,ecg579,ecg580,ecg581,ecg582,ecg583,ecg584,ecg585,ecg586,ecg587,ecg588,ecg589,ecg590,ecg591,ecg592,ecg593,ecg594,ecg595,ecg596,ecg597,ecg598,ecg599,
ecg600,ecg601,ecg602,ecg603,ecg604,ecg605,ecg606,ecg607,ecg608,ecg609,ecg610,ecg611,ecg612,ecg613,ecg614,ecg615,ecg616,ecg617,ecg618,ecg619,ecg620,ecg621,ecg622,ecg623,ecg624,ecg625,ecg626,ecg627,ecg628,ecg629,ecg630,ecg631,ecg632,ecg633,ecg634,ecg635,ecg636,ecg637,ecg638,ecg639,ecg640,ecg641,ecg642,ecg643,ecg644,ecg645,ecg646,ecg647,ecg648,ecg649,ecg650,ecg651,ecg652,ecg653,ecg654,ecg655,ecg656,ecg657,ecg658,ecg659,ecg660,ecg661,ecg662,ecg663,ecg664,ecg665,ecg666,ecg667,ecg668,ecg669,ecg670,ecg671,ecg672,ecg673,ecg674,ecg675,ecg676,ecg677,ecg678,ecg679,ecg680,ecg681,ecg682,ecg683,ecg684,ecg685,ecg686,ecg687,ecg688,ecg689,ecg690,ecg691,ecg692,ecg693,ecg694,ecg695,ecg696,ecg697,ecg698,ecg699,ecg700,ecg701,ecg702,ecg703,ecg704,ecg705,ecg706,ecg707,ecg708,ecg709,ecg710,ecg711,ecg712,ecg713,ecg714,ecg715,ecg716,ecg717,ecg718,ecg719,ecg720,ecg721,ecg722,ecg723,ecg724,ecg725,ecg726,ecg727,ecg728,ecg729,ecg730,ecg731,ecg732,ecg733,ecg734,ecg735,ecg736,ecg737,ecg738,ecg739,ecg740,ecg741,ecg742,ecg743,ecg744,ecg745,ecg746,ecg747,ecg748,ecg749,ecg750,ecg751,ecg752,ecg753,ecg754,ecg755,ecg756,ecg757,ecg758,ecg759,ecg760,ecg761,ecg762,ecg763,ecg764,ecg765,ecg766,ecg767,ecg768,ecg769,ecg770,ecg771,ecg772,ecg773,ecg774,ecg775,ecg776,ecg777,ecg778,ecg779,ecg780,ecg781,ecg782,ecg783,ecg784,ecg785,ecg786,ecg787,ecg788,ecg789,ecg790,ecg791,ecg792,ecg793,ecg794,ecg795,ecg796,ecg797,ecg798,ecg799;

input array_2,p1_cD_full,p2_cD_full,t_cD_full,p_zero;

input [5:0] count1;
input [5:0] count2;

input clk, nReset;
wire clk, nReset;

wire [15:0] temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8;

reg [15:0] c2,c3,c6,c7;

reg p_full,t_full,q_peak_found,s_peak_found;

wire signed [15:0] ecg_signal [0:`m-1];

assign ecg_signal[0] = ecg0;
assign ecg_signal[1] = ecg1;
assign ecg_signal[2] = ecg2;
assign ecg_signal[3] = ecg3;
assign ecg_signal[4] = ecg4;
assign ecg_signal[5] = ecg5;
assign ecg_signal[6] = ecg6;
assign ecg_signal[7] = ecg7;
assign ecg_signal[8] = ecg8;
assign ecg_signal[9] = ecg9;
assign ecg_signal[10] = ecg10;
assign ecg_signal[11] = ecg11;
assign ecg_signal[12] = ecg12;
assign ecg_signal[13] = ecg13;
assign ecg_signal[14] = ecg14;
assign ecg_signal[15] = ecg15;
assign ecg_signal[16] = ecg16;
assign ecg_signal[17] = ecg17;
assign ecg_signal[18] = ecg18;
assign ecg_signal[19] = ecg19;
assign ecg_signal[20] = ecg20;
assign ecg_signal[21] = ecg21;
assign ecg_signal[22] = ecg22;
assign ecg_signal[23] = ecg23;
assign ecg_signal[24] = ecg24;
assign ecg_signal[25] = ecg25;
assign ecg_signal[26] = ecg26;
assign ecg_signal[27] = ecg27;
assign ecg_signal[28] = ecg28;
assign ecg_signal[29] = ecg29;
assign ecg_signal[30] = ecg30;
assign ecg_signal[31] = ecg31;
assign ecg_signal[32] = ecg32;
assign ecg_signal[33] = ecg33;
assign ecg_signal[34] = ecg34;
assign ecg_signal[35] = ecg35;
assign ecg_signal[36] = ecg36;
assign ecg_signal[37] = ecg37;
assign ecg_signal[38] = ecg38;
assign ecg_signal[39] = ecg39;
assign ecg_signal[40] = ecg40;
assign ecg_signal[41] = ecg41;
assign ecg_signal[42] = ecg42;
assign ecg_signal[43] = ecg43;
assign ecg_signal[44] = ecg44;
assign ecg_signal[45] = ecg45;
assign ecg_signal[46] = ecg46;
assign ecg_signal[47] = ecg47;
assign ecg_signal[48] = ecg48;
assign ecg_signal[49] = ecg49;
assign ecg_signal[50] = ecg50;
assign ecg_signal[51] = ecg51;
assign ecg_signal[52] = ecg52;
assign ecg_signal[53] = ecg53;
assign ecg_signal[54] = ecg54;
assign ecg_signal[55] = ecg55;
assign ecg_signal[56] = ecg56;
assign ecg_signal[57] = ecg57;
assign ecg_signal[58] = ecg58;
assign ecg_signal[59] = ecg59;
assign ecg_signal[60] = ecg60;
assign ecg_signal[61] = ecg61;
assign ecg_signal[62] = ecg62;
assign ecg_signal[63] = ecg63;
assign ecg_signal[64] = ecg64;
assign ecg_signal[65] = ecg65;
assign ecg_signal[66] = ecg66;
assign ecg_signal[67] = ecg67;
assign ecg_signal[68] = ecg68;
assign ecg_signal[69] = ecg69;
assign ecg_signal[70] = ecg70;
assign ecg_signal[71] = ecg71;
assign ecg_signal[72] = ecg72;
assign ecg_signal[73] = ecg73;
assign ecg_signal[74] = ecg74;
assign ecg_signal[75] = ecg75;
assign ecg_signal[76] = ecg76;
assign ecg_signal[77] = ecg77;
assign ecg_signal[78] = ecg78;
assign ecg_signal[79] = ecg79;
assign ecg_signal[80] = ecg80;
assign ecg_signal[81] = ecg81;
assign ecg_signal[82] = ecg82;
assign ecg_signal[83] = ecg83;
assign ecg_signal[84] = ecg84;
assign ecg_signal[85] = ecg85;
assign ecg_signal[86] = ecg86;
assign ecg_signal[87] = ecg87;
assign ecg_signal[88] = ecg88;
assign ecg_signal[89] = ecg89;
assign ecg_signal[90] = ecg90;
assign ecg_signal[91] = ecg91;
assign ecg_signal[92] = ecg92;
assign ecg_signal[93] = ecg93;
assign ecg_signal[94] = ecg94;
assign ecg_signal[95] = ecg95;
assign ecg_signal[96] = ecg96;
assign ecg_signal[97] = ecg97;
assign ecg_signal[98] = ecg98;
assign ecg_signal[99] = ecg99;
assign ecg_signal[100] = ecg100;
assign ecg_signal[101] = ecg101;
assign ecg_signal[102] = ecg102;
assign ecg_signal[103] = ecg103;
assign ecg_signal[104] = ecg104;
assign ecg_signal[105] = ecg105;
assign ecg_signal[106] = ecg106;
assign ecg_signal[107] = ecg107;
assign ecg_signal[108] = ecg108;
assign ecg_signal[109] = ecg109;
assign ecg_signal[110] = ecg110;
assign ecg_signal[111] = ecg111;
assign ecg_signal[112] = ecg112;
assign ecg_signal[113] = ecg113;
assign ecg_signal[114] = ecg114;
assign ecg_signal[115] = ecg115;
assign ecg_signal[116] = ecg116;
assign ecg_signal[117] = ecg117;
assign ecg_signal[118] = ecg118;
assign ecg_signal[119] = ecg119;
assign ecg_signal[120] = ecg120;
assign ecg_signal[121] = ecg121;
assign ecg_signal[122] = ecg122;
assign ecg_signal[123] = ecg123;
assign ecg_signal[124] = ecg124;
assign ecg_signal[125] = ecg125;
assign ecg_signal[126] = ecg126;
assign ecg_signal[127] = ecg127;
assign ecg_signal[128] = ecg128;
assign ecg_signal[129] = ecg129;
assign ecg_signal[130] = ecg130;
assign ecg_signal[131] = ecg131;
assign ecg_signal[132] = ecg132;
assign ecg_signal[133] = ecg133;
assign ecg_signal[134] = ecg134;
assign ecg_signal[135] = ecg135;
assign ecg_signal[136] = ecg136;
assign ecg_signal[137] = ecg137;
assign ecg_signal[138] = ecg138;
assign ecg_signal[139] = ecg139;
assign ecg_signal[140] = ecg140;
assign ecg_signal[141] = ecg141;
assign ecg_signal[142] = ecg142;
assign ecg_signal[143] = ecg143;
assign ecg_signal[144] = ecg144;
assign ecg_signal[145] = ecg145;
assign ecg_signal[146] = ecg146;
assign ecg_signal[147] = ecg147;
assign ecg_signal[148] = ecg148;
assign ecg_signal[149] = ecg149;
assign ecg_signal[150] = ecg150;
assign ecg_signal[151] = ecg151;
assign ecg_signal[152] = ecg152;
assign ecg_signal[153] = ecg153;
assign ecg_signal[154] = ecg154;
assign ecg_signal[155] = ecg155;
assign ecg_signal[156] = ecg156;
assign ecg_signal[157] = ecg157;
assign ecg_signal[158] = ecg158;
assign ecg_signal[159] = ecg159;
assign ecg_signal[160] = ecg160;
assign ecg_signal[161] = ecg161;
assign ecg_signal[162] = ecg162;
assign ecg_signal[163] = ecg163;
assign ecg_signal[164] = ecg164;
assign ecg_signal[165] = ecg165;
assign ecg_signal[166] = ecg166;
assign ecg_signal[167] = ecg167;
assign ecg_signal[168] = ecg168;
assign ecg_signal[169] = ecg169;
assign ecg_signal[170] = ecg170;
assign ecg_signal[171] = ecg171;
assign ecg_signal[172] = ecg172;
assign ecg_signal[173] = ecg173;
assign ecg_signal[174] = ecg174;
assign ecg_signal[175] = ecg175;
assign ecg_signal[176] = ecg176;
assign ecg_signal[177] = ecg177;
assign ecg_signal[178] = ecg178;
assign ecg_signal[179] = ecg179;
assign ecg_signal[180] = ecg180;
assign ecg_signal[181] = ecg181;
assign ecg_signal[182] = ecg182;
assign ecg_signal[183] = ecg183;
assign ecg_signal[184] = ecg184;
assign ecg_signal[185] = ecg185;
assign ecg_signal[186] = ecg186;
assign ecg_signal[187] = ecg187;
assign ecg_signal[188] = ecg188;
assign ecg_signal[189] = ecg189;
assign ecg_signal[190] = ecg190;
assign ecg_signal[191] = ecg191;
assign ecg_signal[192] = ecg192;
assign ecg_signal[193] = ecg193;
assign ecg_signal[194] = ecg194;
assign ecg_signal[195] = ecg195;
assign ecg_signal[196] = ecg196;
assign ecg_signal[197] = ecg197;
assign ecg_signal[198] = ecg198;
assign ecg_signal[199] = ecg199;
assign ecg_signal[200] = ecg200;
assign ecg_signal[201] = ecg201;
assign ecg_signal[202] = ecg202;
assign ecg_signal[203] = ecg203;
assign ecg_signal[204] = ecg204;
assign ecg_signal[205] = ecg205;
assign ecg_signal[206] = ecg206;
assign ecg_signal[207] = ecg207;
assign ecg_signal[208] = ecg208;
assign ecg_signal[209] = ecg209;
assign ecg_signal[210] = ecg210;
assign ecg_signal[211] = ecg211;
assign ecg_signal[212] = ecg212;
assign ecg_signal[213] = ecg213;
assign ecg_signal[214] = ecg214;
assign ecg_signal[215] = ecg215;
assign ecg_signal[216] = ecg216;
assign ecg_signal[217] = ecg217;
assign ecg_signal[218] = ecg218;
assign ecg_signal[219] = ecg219;
assign ecg_signal[220] = ecg220;
assign ecg_signal[221] = ecg221;
assign ecg_signal[222] = ecg222;
assign ecg_signal[223] = ecg223;
assign ecg_signal[224] = ecg224;
assign ecg_signal[225] = ecg225;
assign ecg_signal[226] = ecg226;
assign ecg_signal[227] = ecg227;
assign ecg_signal[228] = ecg228;
assign ecg_signal[229] = ecg229;
assign ecg_signal[230] = ecg230;
assign ecg_signal[231] = ecg231;
assign ecg_signal[232] = ecg232;
assign ecg_signal[233] = ecg233;
assign ecg_signal[234] = ecg234;
assign ecg_signal[235] = ecg235;
assign ecg_signal[236] = ecg236;
assign ecg_signal[237] = ecg237;
assign ecg_signal[238] = ecg238;
assign ecg_signal[239] = ecg239;
assign ecg_signal[240] = ecg240;
assign ecg_signal[241] = ecg241;
assign ecg_signal[242] = ecg242;
assign ecg_signal[243] = ecg243;
assign ecg_signal[244] = ecg244;
assign ecg_signal[245] = ecg245;
assign ecg_signal[246] = ecg246;
assign ecg_signal[247] = ecg247;
assign ecg_signal[248] = ecg248;
assign ecg_signal[249] = ecg249;
assign ecg_signal[250] = ecg250;
assign ecg_signal[251] = ecg251;
assign ecg_signal[252] = ecg252;
assign ecg_signal[253] = ecg253;
assign ecg_signal[254] = ecg254;
assign ecg_signal[255] = ecg255;
assign ecg_signal[256] = ecg256;
assign ecg_signal[257] = ecg257;
assign ecg_signal[258] = ecg258;
assign ecg_signal[259] = ecg259;
assign ecg_signal[260] = ecg260;
assign ecg_signal[261] = ecg261;
assign ecg_signal[262] = ecg262;
assign ecg_signal[263] = ecg263;
assign ecg_signal[264] = ecg264;
assign ecg_signal[265] = ecg265;
assign ecg_signal[266] = ecg266;
assign ecg_signal[267] = ecg267;
assign ecg_signal[268] = ecg268;
assign ecg_signal[269] = ecg269;
assign ecg_signal[270] = ecg270;
assign ecg_signal[271] = ecg271;
assign ecg_signal[272] = ecg272;
assign ecg_signal[273] = ecg273;
assign ecg_signal[274] = ecg274;
assign ecg_signal[275] = ecg275;
assign ecg_signal[276] = ecg276;
assign ecg_signal[277] = ecg277;
assign ecg_signal[278] = ecg278;
assign ecg_signal[279] = ecg279;
assign ecg_signal[280] = ecg280;
assign ecg_signal[281] = ecg281;
assign ecg_signal[282] = ecg282;
assign ecg_signal[283] = ecg283;
assign ecg_signal[284] = ecg284;
assign ecg_signal[285] = ecg285;
assign ecg_signal[286] = ecg286;
assign ecg_signal[287] = ecg287;
assign ecg_signal[288] = ecg288;
assign ecg_signal[289] = ecg289;
assign ecg_signal[290] = ecg290;
assign ecg_signal[291] = ecg291;
assign ecg_signal[292] = ecg292;
assign ecg_signal[293] = ecg293;
assign ecg_signal[294] = ecg294;
assign ecg_signal[295] = ecg295;
assign ecg_signal[296] = ecg296;
assign ecg_signal[297] = ecg297;
assign ecg_signal[298] = ecg298;
assign ecg_signal[299] = ecg299;
assign ecg_signal[300] = ecg300;
assign ecg_signal[301] = ecg301;
assign ecg_signal[302] = ecg302;
assign ecg_signal[303] = ecg303;
assign ecg_signal[304] = ecg304;
assign ecg_signal[305] = ecg305;
assign ecg_signal[306] = ecg306;
assign ecg_signal[307] = ecg307;
assign ecg_signal[308] = ecg308;
assign ecg_signal[309] = ecg309;
assign ecg_signal[310] = ecg310;
assign ecg_signal[311] = ecg311;
assign ecg_signal[312] = ecg312;
assign ecg_signal[313] = ecg313;
assign ecg_signal[314] = ecg314;
assign ecg_signal[315] = ecg315;
assign ecg_signal[316] = ecg316;
assign ecg_signal[317] = ecg317;
assign ecg_signal[318] = ecg318;
assign ecg_signal[319] = ecg319;
assign ecg_signal[320] = ecg320;
assign ecg_signal[321] = ecg321;
assign ecg_signal[322] = ecg322;
assign ecg_signal[323] = ecg323;
assign ecg_signal[324] = ecg324;
assign ecg_signal[325] = ecg325;
assign ecg_signal[326] = ecg326;
assign ecg_signal[327] = ecg327;
assign ecg_signal[328] = ecg328;
assign ecg_signal[329] = ecg329;
assign ecg_signal[330] = ecg330;
assign ecg_signal[331] = ecg331;
assign ecg_signal[332] = ecg332;
assign ecg_signal[333] = ecg333;
assign ecg_signal[334] = ecg334;
assign ecg_signal[335] = ecg335;
assign ecg_signal[336] = ecg336;
assign ecg_signal[337] = ecg337;
assign ecg_signal[338] = ecg338;
assign ecg_signal[339] = ecg339;
assign ecg_signal[340] = ecg340;
assign ecg_signal[341] = ecg341;
assign ecg_signal[342] = ecg342;
assign ecg_signal[343] = ecg343;
assign ecg_signal[344] = ecg344;
assign ecg_signal[345] = ecg345;
assign ecg_signal[346] = ecg346;
assign ecg_signal[347] = ecg347;
assign ecg_signal[348] = ecg348;
assign ecg_signal[349] = ecg349;
assign ecg_signal[350] = ecg350;
assign ecg_signal[351] = ecg351;
assign ecg_signal[352] = ecg352;
assign ecg_signal[353] = ecg353;
assign ecg_signal[354] = ecg354;
assign ecg_signal[355] = ecg355;
assign ecg_signal[356] = ecg356;
assign ecg_signal[357] = ecg357;
assign ecg_signal[358] = ecg358;
assign ecg_signal[359] = ecg359;
assign ecg_signal[360] = ecg360;
assign ecg_signal[361] = ecg361;
assign ecg_signal[362] = ecg362;
assign ecg_signal[363] = ecg363;
assign ecg_signal[364] = ecg364;
assign ecg_signal[365] = ecg365;
assign ecg_signal[366] = ecg366;
assign ecg_signal[367] = ecg367;
assign ecg_signal[368] = ecg368;
assign ecg_signal[369] = ecg369;
assign ecg_signal[370] = ecg370;
assign ecg_signal[371] = ecg371;
assign ecg_signal[372] = ecg372;
assign ecg_signal[373] = ecg373;
assign ecg_signal[374] = ecg374;
assign ecg_signal[375] = ecg375;
assign ecg_signal[376] = ecg376;
assign ecg_signal[377] = ecg377;
assign ecg_signal[378] = ecg378;
assign ecg_signal[379] = ecg379;
assign ecg_signal[380] = ecg380;
assign ecg_signal[381] = ecg381;
assign ecg_signal[382] = ecg382;
assign ecg_signal[383] = ecg383;
assign ecg_signal[384] = ecg384;
assign ecg_signal[385] = ecg385;
assign ecg_signal[386] = ecg386;
assign ecg_signal[387] = ecg387;
assign ecg_signal[388] = ecg388;
assign ecg_signal[389] = ecg389;
assign ecg_signal[390] = ecg390;
assign ecg_signal[391] = ecg391;
assign ecg_signal[392] = ecg392;
assign ecg_signal[393] = ecg393;
assign ecg_signal[394] = ecg394;
assign ecg_signal[395] = ecg395;
assign ecg_signal[396] = ecg396;
assign ecg_signal[397] = ecg397;
assign ecg_signal[398] = ecg398;
assign ecg_signal[399] = ecg399;
assign ecg_signal[400] = ecg400;
assign ecg_signal[401] = ecg401;
assign ecg_signal[402] = ecg402;
assign ecg_signal[403] = ecg403;
assign ecg_signal[404] = ecg404;
assign ecg_signal[405] = ecg405;
assign ecg_signal[406] = ecg406;
assign ecg_signal[407] = ecg407;
assign ecg_signal[408] = ecg408;
assign ecg_signal[409] = ecg409;
assign ecg_signal[410] = ecg410;
assign ecg_signal[411] = ecg411;
assign ecg_signal[412] = ecg412;
assign ecg_signal[413] = ecg413;
assign ecg_signal[414] = ecg414;
assign ecg_signal[415] = ecg415;
assign ecg_signal[416] = ecg416;
assign ecg_signal[417] = ecg417;
assign ecg_signal[418] = ecg418;
assign ecg_signal[419] = ecg419;
assign ecg_signal[420] = ecg420;
assign ecg_signal[421] = ecg421;
assign ecg_signal[422] = ecg422;
assign ecg_signal[423] = ecg423;
assign ecg_signal[424] = ecg424;
assign ecg_signal[425] = ecg425;
assign ecg_signal[426] = ecg426;
assign ecg_signal[427] = ecg427;
assign ecg_signal[428] = ecg428;
assign ecg_signal[429] = ecg429;
assign ecg_signal[430] = ecg430;
assign ecg_signal[431] = ecg431;
assign ecg_signal[432] = ecg432;
assign ecg_signal[433] = ecg433;
assign ecg_signal[434] = ecg434;
assign ecg_signal[435] = ecg435;
assign ecg_signal[436] = ecg436;
assign ecg_signal[437] = ecg437;
assign ecg_signal[438] = ecg438;
assign ecg_signal[439] = ecg439;
assign ecg_signal[440] = ecg440;
assign ecg_signal[441] = ecg441;
assign ecg_signal[442] = ecg442;
assign ecg_signal[443] = ecg443;
assign ecg_signal[444] = ecg444;
assign ecg_signal[445] = ecg445;
assign ecg_signal[446] = ecg446;
assign ecg_signal[447] = ecg447;
assign ecg_signal[448] = ecg448;
assign ecg_signal[449] = ecg449;
assign ecg_signal[450] = ecg450;
assign ecg_signal[451] = ecg451;
assign ecg_signal[452] = ecg452;
assign ecg_signal[453] = ecg453;
assign ecg_signal[454] = ecg454;
assign ecg_signal[455] = ecg455;
assign ecg_signal[456] = ecg456;
assign ecg_signal[457] = ecg457;
assign ecg_signal[458] = ecg458;
assign ecg_signal[459] = ecg459;
assign ecg_signal[460] = ecg460;
assign ecg_signal[461] = ecg461;
assign ecg_signal[462] = ecg462;
assign ecg_signal[463] = ecg463;
assign ecg_signal[464] = ecg464;
assign ecg_signal[465] = ecg465;
assign ecg_signal[466] = ecg466;
assign ecg_signal[467] = ecg467;
assign ecg_signal[468] = ecg468;
assign ecg_signal[469] = ecg469;
assign ecg_signal[470] = ecg470;
assign ecg_signal[471] = ecg471;
assign ecg_signal[472] = ecg472;
assign ecg_signal[473] = ecg473;
assign ecg_signal[474] = ecg474;
assign ecg_signal[475] = ecg475;
assign ecg_signal[476] = ecg476;
assign ecg_signal[477] = ecg477;
assign ecg_signal[478] = ecg478;
assign ecg_signal[479] = ecg479;
assign ecg_signal[480] = ecg480;
assign ecg_signal[481] = ecg481;
assign ecg_signal[482] = ecg482;
assign ecg_signal[483] = ecg483;
assign ecg_signal[484] = ecg484;
assign ecg_signal[485] = ecg485;
assign ecg_signal[486] = ecg486;
assign ecg_signal[487] = ecg487;
assign ecg_signal[488] = ecg488;
assign ecg_signal[489] = ecg489;
assign ecg_signal[490] = ecg490;
assign ecg_signal[491] = ecg491;
assign ecg_signal[492] = ecg492;
assign ecg_signal[493] = ecg493;
assign ecg_signal[494] = ecg494;
assign ecg_signal[495] = ecg495;
assign ecg_signal[496] = ecg496;
assign ecg_signal[497] = ecg497;
assign ecg_signal[498] = ecg498;
assign ecg_signal[499] = ecg499;
assign ecg_signal[500] = ecg500;
assign ecg_signal[501] = ecg501;
assign ecg_signal[502] = ecg502;
assign ecg_signal[503] = ecg503;
assign ecg_signal[504] = ecg504;
assign ecg_signal[505] = ecg505;
assign ecg_signal[506] = ecg506;
assign ecg_signal[507] = ecg507;
assign ecg_signal[508] = ecg508;
assign ecg_signal[509] = ecg509;
assign ecg_signal[510] = ecg510;
assign ecg_signal[511] = ecg511;
assign ecg_signal[512] = ecg512;
assign ecg_signal[513] = ecg513;
assign ecg_signal[514] = ecg514;
assign ecg_signal[515] = ecg515;
assign ecg_signal[516] = ecg516;
assign ecg_signal[517] = ecg517;
assign ecg_signal[518] = ecg518;
assign ecg_signal[519] = ecg519;
assign ecg_signal[520] = ecg520;
assign ecg_signal[521] = ecg521;
assign ecg_signal[522] = ecg522;
assign ecg_signal[523] = ecg523;
assign ecg_signal[524] = ecg524;
assign ecg_signal[525] = ecg525;
assign ecg_signal[526] = ecg526;
assign ecg_signal[527] = ecg527;
assign ecg_signal[528] = ecg528;
assign ecg_signal[529] = ecg529;
assign ecg_signal[530] = ecg530;
assign ecg_signal[531] = ecg531;
assign ecg_signal[532] = ecg532;
assign ecg_signal[533] = ecg533;
assign ecg_signal[534] = ecg534;
assign ecg_signal[535] = ecg535;
assign ecg_signal[536] = ecg536;
assign ecg_signal[537] = ecg537;
assign ecg_signal[538] = ecg538;
assign ecg_signal[539] = ecg539;
assign ecg_signal[540] = ecg540;
assign ecg_signal[541] = ecg541;
assign ecg_signal[542] = ecg542;
assign ecg_signal[543] = ecg543;
assign ecg_signal[544] = ecg544;
assign ecg_signal[545] = ecg545;
assign ecg_signal[546] = ecg546;
assign ecg_signal[547] = ecg547;
assign ecg_signal[548] = ecg548;
assign ecg_signal[549] = ecg549;
assign ecg_signal[550] = ecg550;
assign ecg_signal[551] = ecg551;
assign ecg_signal[552] = ecg552;
assign ecg_signal[553] = ecg553;
assign ecg_signal[554] = ecg554;
assign ecg_signal[555] = ecg555;
assign ecg_signal[556] = ecg556;
assign ecg_signal[557] = ecg557;
assign ecg_signal[558] = ecg558;
assign ecg_signal[559] = ecg559;
assign ecg_signal[560] = ecg560;
assign ecg_signal[561] = ecg561;
assign ecg_signal[562] = ecg562;
assign ecg_signal[563] = ecg563;
assign ecg_signal[564] = ecg564;
assign ecg_signal[565] = ecg565;
assign ecg_signal[566] = ecg566;
assign ecg_signal[567] = ecg567;
assign ecg_signal[568] = ecg568;
assign ecg_signal[569] = ecg569;
assign ecg_signal[570] = ecg570;
assign ecg_signal[571] = ecg571;
assign ecg_signal[572] = ecg572;
assign ecg_signal[573] = ecg573;
assign ecg_signal[574] = ecg574;
assign ecg_signal[575] = ecg575;
assign ecg_signal[576] = ecg576;
assign ecg_signal[577] = ecg577;
assign ecg_signal[578] = ecg578;
assign ecg_signal[579] = ecg579;
assign ecg_signal[580] = ecg580;
assign ecg_signal[581] = ecg581;
assign ecg_signal[582] = ecg582;
assign ecg_signal[583] = ecg583;
assign ecg_signal[584] = ecg584;
assign ecg_signal[585] = ecg585;
assign ecg_signal[586] = ecg586;
assign ecg_signal[587] = ecg587;
assign ecg_signal[588] = ecg588;
assign ecg_signal[589] = ecg589;
assign ecg_signal[590] = ecg590;
assign ecg_signal[591] = ecg591;
assign ecg_signal[592] = ecg592;
assign ecg_signal[593] = ecg593;
assign ecg_signal[594] = ecg594;
assign ecg_signal[595] = ecg595;
assign ecg_signal[596] = ecg596;
assign ecg_signal[597] = ecg597;
assign ecg_signal[598] = ecg598;
assign ecg_signal[599] = ecg599;
assign ecg_signal[600] = ecg600;
assign ecg_signal[601] = ecg601;
assign ecg_signal[602] = ecg602;
assign ecg_signal[603] = ecg603;
assign ecg_signal[604] = ecg604;
assign ecg_signal[605] = ecg605;
assign ecg_signal[606] = ecg606;
assign ecg_signal[607] = ecg607;
assign ecg_signal[608] = ecg608;
assign ecg_signal[609] = ecg609;
assign ecg_signal[610] = ecg610;
assign ecg_signal[611] = ecg611;
assign ecg_signal[612] = ecg612;
assign ecg_signal[613] = ecg613;
assign ecg_signal[614] = ecg614;
assign ecg_signal[615] = ecg615;
assign ecg_signal[616] = ecg616;
assign ecg_signal[617] = ecg617;
assign ecg_signal[618] = ecg618;
assign ecg_signal[619] = ecg619;
assign ecg_signal[620] = ecg620;
assign ecg_signal[621] = ecg621;
assign ecg_signal[622] = ecg622;
assign ecg_signal[623] = ecg623;
assign ecg_signal[624] = ecg624;
assign ecg_signal[625] = ecg625;
assign ecg_signal[626] = ecg626;
assign ecg_signal[627] = ecg627;
assign ecg_signal[628] = ecg628;
assign ecg_signal[629] = ecg629;
assign ecg_signal[630] = ecg630;
assign ecg_signal[631] = ecg631;
assign ecg_signal[632] = ecg632;
assign ecg_signal[633] = ecg633;
assign ecg_signal[634] = ecg634;
assign ecg_signal[635] = ecg635;
assign ecg_signal[636] = ecg636;
assign ecg_signal[637] = ecg637;
assign ecg_signal[638] = ecg638;
assign ecg_signal[639] = ecg639;
assign ecg_signal[640] = ecg640;
assign ecg_signal[641] = ecg641;
assign ecg_signal[642] = ecg642;
assign ecg_signal[643] = ecg643;
assign ecg_signal[644] = ecg644;
assign ecg_signal[645] = ecg645;
assign ecg_signal[646] = ecg646;
assign ecg_signal[647] = ecg647;
assign ecg_signal[648] = ecg648;
assign ecg_signal[649] = ecg649;
assign ecg_signal[650] = ecg650;
assign ecg_signal[651] = ecg651;
assign ecg_signal[652] = ecg652;
assign ecg_signal[653] = ecg653;
assign ecg_signal[654] = ecg654;
assign ecg_signal[655] = ecg655;
assign ecg_signal[656] = ecg656;
assign ecg_signal[657] = ecg657;
assign ecg_signal[658] = ecg658;
assign ecg_signal[659] = ecg659;
assign ecg_signal[660] = ecg660;
assign ecg_signal[661] = ecg661;
assign ecg_signal[662] = ecg662;
assign ecg_signal[663] = ecg663;
assign ecg_signal[664] = ecg664;
assign ecg_signal[665] = ecg665;
assign ecg_signal[666] = ecg666;
assign ecg_signal[667] = ecg667;
assign ecg_signal[668] = ecg668;
assign ecg_signal[669] = ecg669;
assign ecg_signal[670] = ecg670;
assign ecg_signal[671] = ecg671;
assign ecg_signal[672] = ecg672;
assign ecg_signal[673] = ecg673;
assign ecg_signal[674] = ecg674;
assign ecg_signal[675] = ecg675;
assign ecg_signal[676] = ecg676;
assign ecg_signal[677] = ecg677;
assign ecg_signal[678] = ecg678;
assign ecg_signal[679] = ecg679;
assign ecg_signal[680] = ecg680;
assign ecg_signal[681] = ecg681;
assign ecg_signal[682] = ecg682;
assign ecg_signal[683] = ecg683;
assign ecg_signal[684] = ecg684;
assign ecg_signal[685] = ecg685;
assign ecg_signal[686] = ecg686;
assign ecg_signal[687] = ecg687;
assign ecg_signal[688] = ecg688;
assign ecg_signal[689] = ecg689;
assign ecg_signal[690] = ecg690;
assign ecg_signal[691] = ecg691;
assign ecg_signal[692] = ecg692;
assign ecg_signal[693] = ecg693;
assign ecg_signal[694] = ecg694;
assign ecg_signal[695] = ecg695;
assign ecg_signal[696] = ecg696;
assign ecg_signal[697] = ecg697;
assign ecg_signal[698] = ecg698;
assign ecg_signal[699] = ecg699;
assign ecg_signal[700] = ecg700;
assign ecg_signal[701] = ecg701;
assign ecg_signal[702] = ecg702;
assign ecg_signal[703] = ecg703;
assign ecg_signal[704] = ecg704;
assign ecg_signal[705] = ecg705;
assign ecg_signal[706] = ecg706;
assign ecg_signal[707] = ecg707;
assign ecg_signal[708] = ecg708;
assign ecg_signal[709] = ecg709;
assign ecg_signal[710] = ecg710;
assign ecg_signal[711] = ecg711;
assign ecg_signal[712] = ecg712;
assign ecg_signal[713] = ecg713;
assign ecg_signal[714] = ecg714;
assign ecg_signal[715] = ecg715;
assign ecg_signal[716] = ecg716;
assign ecg_signal[717] = ecg717;
assign ecg_signal[718] = ecg718;
assign ecg_signal[719] = ecg719;
assign ecg_signal[720] = ecg720;
assign ecg_signal[721] = ecg721;
assign ecg_signal[722] = ecg722;
assign ecg_signal[723] = ecg723;
assign ecg_signal[724] = ecg724;
assign ecg_signal[725] = ecg725;
assign ecg_signal[726] = ecg726;
assign ecg_signal[727] = ecg727;
assign ecg_signal[728] = ecg728;
assign ecg_signal[729] = ecg729;
assign ecg_signal[730] = ecg730;
assign ecg_signal[731] = ecg731;
assign ecg_signal[732] = ecg732;
assign ecg_signal[733] = ecg733;
assign ecg_signal[734] = ecg734;
assign ecg_signal[735] = ecg735;
assign ecg_signal[736] = ecg736;
assign ecg_signal[737] = ecg737;
assign ecg_signal[738] = ecg738;
assign ecg_signal[739] = ecg739;
assign ecg_signal[740] = ecg740;
assign ecg_signal[741] = ecg741;
assign ecg_signal[742] = ecg742;
assign ecg_signal[743] = ecg743;
assign ecg_signal[744] = ecg744;
assign ecg_signal[745] = ecg745;
assign ecg_signal[746] = ecg746;
assign ecg_signal[747] = ecg747;
assign ecg_signal[748] = ecg748;
assign ecg_signal[749] = ecg749;
assign ecg_signal[750] = ecg750;
assign ecg_signal[751] = ecg751;
assign ecg_signal[752] = ecg752;
assign ecg_signal[753] = ecg753;
assign ecg_signal[754] = ecg754;
assign ecg_signal[755] = ecg755;
assign ecg_signal[756] = ecg756;
assign ecg_signal[757] = ecg757;
assign ecg_signal[758] = ecg758;
assign ecg_signal[759] = ecg759;
assign ecg_signal[760] = ecg760;
assign ecg_signal[761] = ecg761;
assign ecg_signal[762] = ecg762;
assign ecg_signal[763] = ecg763;
assign ecg_signal[764] = ecg764;
assign ecg_signal[765] = ecg765;
assign ecg_signal[766] = ecg766;
assign ecg_signal[767] = ecg767;
assign ecg_signal[768] = ecg768;
assign ecg_signal[769] = ecg769;
assign ecg_signal[770] = ecg770;
assign ecg_signal[771] = ecg771;
assign ecg_signal[772] = ecg772;
assign ecg_signal[773] = ecg773;
assign ecg_signal[774] = ecg774;
assign ecg_signal[775] = ecg775;
assign ecg_signal[776] = ecg776;
assign ecg_signal[777] = ecg777;
assign ecg_signal[778] = ecg778;
assign ecg_signal[779] = ecg779;
assign ecg_signal[780] = ecg780;
assign ecg_signal[781] = ecg781;
assign ecg_signal[782] = ecg782;
assign ecg_signal[783] = ecg783;
assign ecg_signal[784] = ecg784;
assign ecg_signal[785] = ecg785;
assign ecg_signal[786] = ecg786;
assign ecg_signal[787] = ecg787;
assign ecg_signal[788] = ecg788;
assign ecg_signal[789] = ecg789;
assign ecg_signal[790] = ecg790;
assign ecg_signal[791] = ecg791;
assign ecg_signal[792] = ecg792;
assign ecg_signal[793] = ecg793;
assign ecg_signal[794] = ecg794;
assign ecg_signal[795] = ecg795;
assign ecg_signal[796] = ecg796;
assign ecg_signal[797] = ecg797;
assign ecg_signal[798] = ecg798;
assign ecg_signal[799] = ecg799;



assign temp1 = p_begin;
assign temp2 = p_end;

assign temp3 = t_begin;
assign temp4 = t_end;

assign temp5 = start_qrs_fin_2;
assign temp6 = r_peak_pos_ref;

assign temp7 = r_peak_pos_ref;
assign temp8 = end_qrs_fin_2;


always @(posedge clk or negedge nReset)

if (!nReset)
begin
	c2 <= #20 0;
	c3 <= #20 0;
	c6 <= #20 0;
	c7 <= #20 0;

	q_peak_found <= #20 0;
	q_peak_ref <= #20 0;
	q_peak_pos_ref <= #20 0;
	q_peak_pos_temp <= #20 0;

	s_peak_found <= #20 0;
	s_peak_ref <= #20 0;
	s_peak_pos_ref <= #20 0;
	s_peak_pos_temp <= #20 0;
   
	max1v <= #20 0;
	max1p <= #20 0;
	min1v <= #20 0;
	min1p <= #20 0;
	max2v <= #20 0;
	max2p <= #20 0;
	min2v <= #20 0;
	min2p <= #20 0;

	p_full <= #20 0;
	t_full <= #20 0;
end
else
begin
	if (count1 == 2 && count2 == 1)
	begin
		if (p1_cD_full != 0 || p2_cD_full != 0)
		begin
		if (c2 <= temp2)
		begin
			if (c2 == 0 && p_zero == 0)
				c2 <= #20 temp1;
			else 
			begin
				if (c2 == temp1) 
				begin
					c2 <= #20 temp1;
				  	max1v <= #20 ecg_signal[temp1];
				  	min1v <= #20 ecg_signal[temp1];
				  	max1p <= #20 temp1;
				  	min1p <= #20 temp1;
				  	c2 <= #20 c2 + 1;
				end
				else
				begin
			 		if (ecg_signal[c2] > max1v)
				  	begin
				  		max1v <= #20 ecg_signal[c2];
						max1p <= #20 c2;
						min1v <= #20 min1v;
						min1p <= #20 min1p;
				  	end
				  	else
				  	begin
			 	  		if (ecg_signal[c2] < min1v)
				  		begin
					  	    min1v <= #20 ecg_signal[c2];
							min1p <= #20 c2;
				  			max1v <= #20 max1v;
							max1p <= #20 max1p;
				  		end
						else
						begin
				  			max1v <= #20 max1v;
							max1p <= #20 max1p;
							min1v <= #20 min1v;
							min1p <= #20 min1p;
						end
					end

					c2 <= #20 c2 + 1;

					if (c2 >= temp2)
						p_full <= #20 1;
					else
						p_full <= #20 p_full;
				end	
			end
		end
		else
		begin
			c2 <= #20 c2;
			max1v <= #20 max1v;
			max1p <= #20 max1p;
			min1v <= #20 min1v;
			min1p <= #20 min1p;
			p_full <= #20 p_full;

		end
		end
		else
		begin
			c2 <= #20 c2;
			max1v <= #20 max1v;
			max1p <= #20 max1p;
			min1v <= #20 min1v;
			min1p <= #20 min1p;
			p_full <= #20 p_full;

		end


		if (c3 <= temp4)
		begin
			if (c3 == 0)
				c3 <= temp3; 
			else 
			begin
				if (c3 == temp3) 
				begin
					c3 <= #20 temp3;
				  	max2v <= #20 ecg_signal[temp3];
				  	min2v <= #20 ecg_signal[temp3];
				  	max2p <= #20 temp3;
				  	min2p <= #20 temp3;
				  	c3 <= #20 c3 + 1;
				end
				else
				begin
			 		if (ecg_signal[c3] > max2v)
				  	begin
				  		max2v <= #20 ecg_signal[c3];
						max2p <= #20 c3;
						min2v <= #20 min2v;
						min2p <= #20 min2p;
				  	end
				  	else
				  	begin
			 	  		if (ecg_signal[c3] < min2v)
				  		begin
					  	    min2v <= #20 ecg_signal[c3];
							min2p <= #20 c3;
				  			max2v <= #20 max2v;
							max2p <= #20 max2p;
				  		end
						else
						begin
				  			max2v <= #20 max2v;
							max2p <= #20 max2p;
							min2v <= #20 min2v;
							min2p <= #20 min2p;
						end
					end
	
				  	c3 <= #20 c3 + 1;

				  	if (c3 >= temp4)
						t_full <= #20 1;
				  	else
						t_full <= #20 t_full;
				end
			end
		end
		else
		begin
			c3 <= #20 c3;
			max2v <= #20 max2v;
			max2p <= #20 max2p;
			min2v <= #20 min2v;
			min2p <= #20 min2p;
			t_full <= #20 t_full;
		end


		if (end_qrs_fin_2 != 0 && r_peak_pos_ref != 0)
		begin
		if (c6 <= temp8)
		begin
			if (c6 == 0)
				c6 <= temp7; 
			else 
			begin
				if (c6 == temp7) 
				begin
				  c6 <= #20 temp7;
				  s_peak_ref <= #20 ecg_signal[temp7];
				  s_peak_pos_temp <= #20 temp7;

				  if (temp7 == temp8)
					s_peak_found <= #20 1;
				  else
					s_peak_found <= #20 s_peak_found;

				  c6 <= #20 c6 + 1;
				end
				else
				begin
			 	     if (ecg_signal[c6] < s_peak_ref)
				     begin
				  	  s_peak_ref <= #20 ecg_signal[c6];
					  s_peak_pos_temp <= #20 c6;
				     end
				     else
				     begin
				  	  s_peak_ref <= #20 s_peak_ref;
					  s_peak_pos_temp <= 											#20 s_peak_pos_temp;
				     end

				    	c6 <= #20 c6 + 1;
	
					if (c6 >= temp8)
						s_peak_found <= #20 1;
				  	else
					  s_peak_found <= #20 s_peak_found;
				end
			end
		end
		else
		begin
			c6 <= #20 c6;
			s_peak_ref <= #20 s_peak_ref;
			s_peak_pos_ref <= #20 s_peak_pos_ref;
			s_peak_pos_temp <= #20 s_peak_pos_temp;

		end

		if (s_peak_found == 1)
			s_peak_pos_ref <= #20 s_peak_pos_temp;
		else
			s_peak_pos_ref <= #20 s_peak_pos_ref;
		end
		else
		begin
			c6 <= #20 c6;
			s_peak_ref <= #20 s_peak_ref;
			s_peak_pos_ref <= #20 s_peak_pos_ref;
			s_peak_pos_temp <= #20 s_peak_pos_temp;
		end
			
		if (start_qrs_fin_2 != 0 && r_peak_pos_ref != 0)
		begin
		if (c7 <= temp6)
		begin
			if (c7 == 0 && temp5!= 0)
				c7 <= #20 temp5; 
			else 
			begin
				if (c7 == temp5) 
				begin
				  	c7 <= #20 temp5;
				  	q_peak_ref <= #20 ecg_signal[temp5];
				  	q_peak_pos_temp <= #20 temp5;

				 	if (temp5 == temp6)
						q_peak_found <= #20 1;
				  	else
					  q_peak_found <= #20 q_peak_found;

				  	c7 <= #20 c7 + 1;
				end
				else
				begin
			 	     if (ecg_signal[c7] < q_peak_ref)
				     begin
				  	  q_peak_ref <= #20 ecg_signal[c7];
					  q_peak_pos_temp <= #20 c7;
				     end
				     else
				     begin
				  	  q_peak_ref <= #20 q_peak_ref;
					  q_peak_pos_temp <= 											#20 q_peak_pos_temp;
				     end

				    	c7 <= #20 c7 + 1;
	
					if (c7 >= temp6)
						q_peak_found <= #20 1;
				  	else
					  q_peak_found <= #20 q_peak_found;
				end
			end
		end
		else
		begin
			c7 <= #20 c7;
			q_peak_ref <= #20 q_peak_ref;
			q_peak_pos_ref <= #20 q_peak_pos_ref;
			q_peak_pos_temp <= #20 q_peak_pos_temp;

		end
		if (q_peak_found == 1)
			q_peak_pos_ref <= #20 q_peak_pos_temp;
		else
			q_peak_pos_ref <= #20 q_peak_pos_ref;
		end
		else
		begin
			c7 <= #20 c7;
			q_peak_ref <= #20 q_peak_ref;
			q_peak_pos_ref <= #20 q_peak_pos_ref;
			q_peak_pos_temp <= #20 q_peak_pos_temp;
		end

	end
	else
	begin
		c2 <= #20 c2;
		c3 <= #20 c3;
		c6 <= #20 c6;
		c7 <= #20 c7;

		max1v <= #20 max1v;
		max1p <= #20 max1p;
		min1v <= #20 min1v;
		min1p <= #20 min1p;
		max2v <= #20 max2v;
		max2p <= #20 max2p;
		min2v <= #20 min2v;
		min2p <= #20 min2p;

		p_full <= #20 p_full;
		t_full <= #20 t_full;

		s_peak_ref <= #20 s_peak_ref;
		s_peak_pos_ref <= #20 s_peak_pos_ref;
		s_peak_pos_temp <= #20 s_peak_pos_temp;

		q_peak_ref <= #20 q_peak_ref;
		q_peak_pos_ref <= #20 q_peak_pos_ref;
		q_peak_pos_temp <= #20 q_peak_pos_temp;
	end
end


always @(*)
begin

p_peak = 0;
p_peak_pos = 0;

		if (p_full == 1)
		begin
			if (p1_cD_full != 0 || p2_cD_full != 0)
			begin
				if (array_2 != 0)
				begin
					if (p2minp < p2maxp)
					begin
						p_peak = max1v;
						p_peak_pos = max1p;
					end
					else
					begin
						p_peak = min1v;
						p_peak_pos = min1p;
					end
				end
				else
				begin
					if (p1minp < p1maxp)
					begin
						p_peak = max1v;
						p_peak_pos = max1p;
					end
					else
					begin
						p_peak = min1v;
						p_peak_pos = min1p;
					end
				end
			end
			else
			begin
				p_peak = p_peak;
				p_peak_pos = p_peak_pos;
			end
		end
		else
		begin
			p_peak = p_peak;
			p_peak_pos = p_peak_pos;
		end

end


always @(*)
begin

t_peak = 0;
t_peak_pos = 0;

		if (t_full == 1)
		begin
			if (t_cD_full != 0)
			begin
				if (t1minp < t1maxp)
				begin
					t_peak = max2v;
					t_peak_pos = max2p;
				end
				else
				begin
					t_peak = min2v;
					t_peak_pos = min2p;
				end
			end
			else
			begin
				t_peak = t_peak;
				t_peak_pos = t_peak_pos;
			end
		end
		else
		begin
			t_peak = t_peak;
			t_peak_pos = t_peak_pos;
		end
end


endmodule

