`timescale 1ns / 100ps
`include "parameter.v"

module rwave_refine(r_peak_ref,r_peak_pos_ref,start_qrs_fin_2,end_qrs_fin_2,
ecg0,ecg1,ecg2,ecg3,ecg4,ecg5,ecg6,ecg7,ecg8,ecg9,ecg10,ecg11,ecg12,ecg13,ecg14,ecg15,ecg16,ecg17,ecg18,ecg19,ecg20,ecg21,ecg22,ecg23,ecg24,ecg25,ecg26,ecg27,ecg28,ecg29,ecg30,ecg31,ecg32,ecg33,ecg34,ecg35,ecg36,ecg37,ecg38,ecg39,ecg40,ecg41,ecg42,ecg43,ecg44,ecg45,ecg46,ecg47,ecg48,ecg49,ecg50,ecg51,ecg52,ecg53,ecg54,ecg55,ecg56,ecg57,ecg58,ecg59,ecg60,ecg61,ecg62,ecg63,ecg64,ecg65,ecg66,ecg67,ecg68,ecg69,ecg70,ecg71,ecg72,ecg73,ecg74,ecg75,ecg76,ecg77,ecg78,ecg79,ecg80,ecg81,ecg82,ecg83,ecg84,ecg85,ecg86,ecg87,ecg88,ecg89,ecg90,ecg91,ecg92,ecg93,ecg94,ecg95,ecg96,ecg97,ecg98,ecg99,ecg100,ecg101,ecg102,ecg103,ecg104,ecg105,ecg106,ecg107,ecg108,ecg109,ecg110,ecg111,ecg112,ecg113,ecg114,ecg115,ecg116,ecg117,ecg118,ecg119,ecg120,ecg121,ecg122,ecg123,ecg124,ecg125,ecg126,ecg127,ecg128,ecg129,ecg130,ecg131,ecg132,ecg133,ecg134,ecg135,ecg136,ecg137,ecg138,ecg139,ecg140,ecg141,ecg142,ecg143,ecg144,ecg145,ecg146,ecg147,ecg148,ecg149,ecg150,ecg151,ecg152,ecg153,ecg154,ecg155,ecg156,ecg157,ecg158,ecg159,ecg160,ecg161,ecg162,ecg163,ecg164,ecg165,ecg166,ecg167,ecg168,ecg169,ecg170,ecg171,ecg172,ecg173,ecg174,ecg175,ecg176,ecg177,ecg178,ecg179,ecg180,ecg181,ecg182,ecg183,ecg184,ecg185,ecg186,ecg187,ecg188,ecg189,ecg190,ecg191,ecg192,ecg193,ecg194,ecg195,ecg196,ecg197,ecg198,ecg199,ecg200,ecg201,ecg202,ecg203,ecg204,ecg205,ecg206,ecg207,ecg208,ecg209,ecg210,ecg211,ecg212,ecg213,ecg214,ecg215,ecg216,ecg217,ecg218,ecg219,ecg220,ecg221,ecg222,ecg223,ecg224,ecg225,ecg226,ecg227,ecg228,ecg229,ecg230,ecg231,ecg232,ecg233,ecg234,ecg235,ecg236,ecg237,ecg238,ecg239,ecg240,ecg241,ecg242,ecg243,ecg244,ecg245,ecg246,ecg247,ecg248,ecg249,ecg250,ecg251,ecg252,ecg253,ecg254,ecg255,ecg256,ecg257,ecg258,ecg259,ecg260,ecg261,ecg262,ecg263,ecg264,ecg265,ecg266,ecg267,ecg268,ecg269,ecg270,ecg271,ecg272,ecg273,ecg274,ecg275,ecg276,ecg277,ecg278,ecg279,ecg280,ecg281,ecg282,ecg283,ecg284,ecg285,ecg286,ecg287,ecg288,ecg289,ecg290,ecg291,ecg292,ecg293,ecg294,ecg295,ecg296,ecg297,ecg298,ecg299,ecg300,ecg301,ecg302,ecg303,ecg304,ecg305,ecg306,ecg307,ecg308,ecg309,ecg310,ecg311,ecg312,ecg313,ecg314,ecg315,ecg316,ecg317,ecg318,ecg319,ecg320,ecg321,ecg322,ecg323,ecg324,ecg325,ecg326,ecg327,ecg328,ecg329,ecg330,ecg331,ecg332,ecg333,ecg334,ecg335,ecg336,ecg337,ecg338,ecg339,ecg340,ecg341,ecg342,ecg343,ecg344,ecg345,ecg346,ecg347,ecg348,ecg349,ecg350,ecg351,ecg352,ecg353,ecg354,ecg355,ecg356,ecg357,ecg358,ecg359,ecg360,ecg361,ecg362,ecg363,ecg364,ecg365,ecg366,ecg367,ecg368,ecg369,ecg370,ecg371,ecg372,ecg373,ecg374,ecg375,ecg376,ecg377,ecg378,ecg379,ecg380,ecg381,ecg382,ecg383,ecg384,ecg385,ecg386,ecg387,ecg388,ecg389,ecg390,ecg391,ecg392,ecg393,ecg394,ecg395,ecg396,ecg397,ecg398,ecg399,ecg400,ecg401,ecg402,ecg403,ecg404,ecg405,ecg406,ecg407,ecg408,ecg409,ecg410,ecg411,ecg412,ecg413,ecg414,ecg415,ecg416,ecg417,ecg418,ecg419,ecg420,ecg421,ecg422,ecg423,ecg424,ecg425,ecg426,ecg427,ecg428,ecg429,ecg430,ecg431,ecg432,ecg433,ecg434,ecg435,ecg436,ecg437,ecg438,ecg439,ecg440,ecg441,ecg442,ecg443,ecg444,ecg445,ecg446,ecg447,ecg448,ecg449,ecg450,ecg451,ecg452,ecg453,ecg454,ecg455,ecg456,ecg457,ecg458,ecg459,ecg460,ecg461,ecg462,ecg463,ecg464,ecg465,ecg466,ecg467,ecg468,ecg469,ecg470,ecg471,ecg472,ecg473,ecg474,ecg475,ecg476,ecg477,ecg478,ecg479,ecg480,ecg481,ecg482,ecg483,ecg484,ecg485,ecg486,ecg487,ecg488,ecg489,ecg490,ecg491,ecg492,ecg493,ecg494,ecg495,ecg496,ecg497,ecg498,ecg499,ecg500,ecg501,ecg502,ecg503,ecg504,ecg505,ecg506,ecg507,ecg508,ecg509,ecg510,ecg511,ecg512,ecg513,ecg514,ecg515,ecg516,ecg517,ecg518,ecg519,ecg520,ecg521,ecg522,ecg523,ecg524,ecg525,ecg526,ecg527,ecg528,ecg529,ecg530,ecg531,ecg532,ecg533,ecg534,ecg535,ecg536,ecg537,ecg538,ecg539,ecg540,ecg541,ecg542,ecg543,ecg544,ecg545,ecg546,ecg547,ecg548,ecg549,ecg550,ecg551,ecg552,ecg553,ecg554,ecg555,ecg556,ecg557,ecg558,ecg559,ecg560,ecg561,ecg562,ecg563,ecg564,ecg565,ecg566,ecg567,ecg568,ecg569,ecg570,ecg571,ecg572,ecg573,ecg574,ecg575,ecg576,ecg577,ecg578,ecg579,ecg580,ecg581,ecg582,ecg583,ecg584,ecg585,ecg586,ecg587,ecg588,ecg589,ecg590,ecg591,ecg592,ecg593,ecg594,ecg595,ecg596,ecg597,ecg598,ecg599,
ecg600,ecg601,ecg602,ecg603,ecg604,ecg605,ecg606,ecg607,ecg608,ecg609,ecg610,ecg611,ecg612,ecg613,ecg614,ecg615,ecg616,ecg617,ecg618,ecg619,ecg620,ecg621,ecg622,ecg623,ecg624,ecg625,ecg626,ecg627,ecg628,ecg629,ecg630,ecg631,ecg632,ecg633,ecg634,ecg635,ecg636,ecg637,ecg638,ecg639,ecg640,ecg641,ecg642,ecg643,ecg644,ecg645,ecg646,ecg647,ecg648,ecg649,ecg650,ecg651,ecg652,ecg653,ecg654,ecg655,ecg656,ecg657,ecg658,ecg659,ecg660,ecg661,ecg662,ecg663,ecg664,ecg665,ecg666,ecg667,ecg668,ecg669,ecg670,ecg671,ecg672,ecg673,ecg674,ecg675,ecg676,ecg677,ecg678,ecg679,ecg680,ecg681,ecg682,ecg683,ecg684,ecg685,ecg686,ecg687,ecg688,ecg689,ecg690,ecg691,ecg692,ecg693,ecg694,ecg695,ecg696,ecg697,ecg698,ecg699,ecg700,ecg701,ecg702,ecg703,ecg704,ecg705,ecg706,ecg707,ecg708,ecg709,ecg710,ecg711,ecg712,ecg713,ecg714,ecg715,ecg716,ecg717,ecg718,ecg719,ecg720,ecg721,ecg722,ecg723,ecg724,ecg725,ecg726,ecg727,ecg728,ecg729,ecg730,ecg731,ecg732,ecg733,ecg734,ecg735,ecg736,ecg737,ecg738,ecg739,ecg740,ecg741,ecg742,ecg743,ecg744,ecg745,ecg746,ecg747,ecg748,ecg749,ecg750,ecg751,ecg752,ecg753,ecg754,ecg755,ecg756,ecg757,ecg758,ecg759,ecg760,ecg761,ecg762,ecg763,ecg764,ecg765,ecg766,ecg767,ecg768,ecg769,ecg770,ecg771,ecg772,ecg773,ecg774,ecg775,ecg776,ecg777,ecg778,ecg779,ecg780,ecg781,ecg782,ecg783,ecg784,ecg785,ecg786,ecg787,ecg788,ecg789,ecg790,ecg791,ecg792,ecg793,ecg794,ecg795,ecg796,ecg797,ecg798,ecg799,max_pos_l3_n,min_pos_l3_n,cD_min_found,count1,count2,max_pos_l3,
min_pos_l3,data_in,thr1,thr2,q_begin_l3_temp,s_end_l3_temp,
q_begin_l3_flag,s_end_l3_flag,
cA0,cA1,cA2,cA3,cA4,cA5,cA6,cA7,cA8,cA9,cA10,cA11,cA12,cA13,cA14,cA15,cA16,cA17,cA18,cA19,cA20,cA21,cA22,cA23,cA24,cA25,cA26,cA27,cA28,cA29,cA30,cA31,cA32,cA33,cA34,cA35,cA36,cA37,cA38,cA39,cA40,cA41,cA42,cA43,cA44,cA45,cA46,cA47,cA48,cA49,cA50,cA51,cA52,cA53,cA54,cA55,cA56,cA57,cA58,cA59,cA60,cA61,cA62,cA63,cA64,cA65,cA66,cA67,cA68,cA69,cA70,cA71,cA72,cA73,cA74,cA75,cA76,cA77,cA78,cA79,cA80,cA81,cA82,cA83,cA84,cA85,cA86,cA87,cA88,cA89,cA90,cA91,cA92,cA93,cA94,cA95,cA96,cA97,cA98,cA99,clk,nReset);
  
output [15:0] r_peak_ref,r_peak_pos_ref,start_qrs_fin_2,
end_qrs_fin_2;

reg signed [15:0] r_peak_ref,r_peak_pos_ref,r_peak_ref1,
r_peak_pos_ref1,r_peak_ref2,r_peak_pos_ref2,r_peak_ref3,
r_peak_pos_ref3,r_peak_pos_temp1,r_peak_pos_temp2,
r_peak_pos_temp3,start_qrs_fin_2,end_qrs_fin_2;

input [15:0] max_pos_l3_n,min_pos_l3_n,max_pos_l3,min_pos_l3,
data_in,thr1,thr2,q_begin_l3_temp,s_end_l3_temp,
cA0,cA1,cA2,cA3,cA4,cA5,cA6,cA7,cA8,cA9,cA10,cA11,cA12,cA13,cA14,cA15,cA16,cA17,cA18,cA19,cA20,cA21,cA22,cA23,cA24,cA25,cA26,cA27,cA28,cA29,cA30,cA31,cA32,cA33,cA34,cA35,cA36,cA37,cA38,cA39,cA40,cA41,cA42,cA43,cA44,cA45,cA46,cA47,cA48,cA49,cA50,cA51,cA52,cA53,cA54,cA55,cA56,cA57,cA58,cA59,cA60,cA61,cA62,cA63,cA64,cA65,cA66,cA67,cA68,cA69,cA70,cA71,cA72,cA73,cA74,cA75,cA76,cA77,cA78,cA79,cA80,cA81,cA82,cA83,cA84,cA85,cA86,cA87,cA88,cA89,cA90,cA91,cA92,cA93,cA94,cA95,cA96,cA97,cA98,cA99;

input q_begin_l3_flag,s_end_l3_flag,cD_min_found;

output signed [15:0] ecg0,ecg1,ecg2,ecg3,ecg4,ecg5,ecg6,ecg7,ecg8,ecg9,ecg10,ecg11,ecg12,ecg13,ecg14,ecg15,ecg16,ecg17,ecg18,ecg19,ecg20,ecg21,ecg22,ecg23,ecg24,ecg25,ecg26,ecg27,ecg28,ecg29,ecg30,ecg31,ecg32,ecg33,ecg34,ecg35,ecg36,ecg37,ecg38,ecg39,ecg40,ecg41,ecg42,ecg43,ecg44,ecg45,ecg46,ecg47,ecg48,ecg49,ecg50,ecg51,ecg52,ecg53,ecg54,ecg55,ecg56,ecg57,ecg58,ecg59,ecg60,ecg61,ecg62,ecg63,ecg64,ecg65,ecg66,ecg67,ecg68,ecg69,ecg70,ecg71,ecg72,ecg73,ecg74,ecg75,ecg76,ecg77,ecg78,ecg79,ecg80,ecg81,ecg82,ecg83,ecg84,ecg85,ecg86,ecg87,ecg88,ecg89,ecg90,ecg91,ecg92,ecg93,ecg94,ecg95,ecg96,ecg97,ecg98,ecg99,ecg100,ecg101,ecg102,ecg103,ecg104,ecg105,ecg106,ecg107,ecg108,ecg109,ecg110,ecg111,ecg112,ecg113,ecg114,ecg115,ecg116,ecg117,ecg118,ecg119,ecg120,ecg121,ecg122,ecg123,ecg124,ecg125,ecg126,ecg127,ecg128,ecg129,ecg130,ecg131,ecg132,ecg133,ecg134,ecg135,ecg136,ecg137,ecg138,ecg139,ecg140,ecg141,ecg142,ecg143,ecg144,ecg145,ecg146,ecg147,ecg148,ecg149,ecg150,ecg151,ecg152,ecg153,ecg154,ecg155,ecg156,ecg157,ecg158,ecg159,ecg160,ecg161,ecg162,ecg163,ecg164,ecg165,ecg166,ecg167,ecg168,ecg169,ecg170,ecg171,ecg172,ecg173,ecg174,ecg175,ecg176,ecg177,ecg178,ecg179,ecg180,ecg181,ecg182,ecg183,ecg184,ecg185,ecg186,ecg187,ecg188,ecg189,ecg190,ecg191,ecg192,ecg193,ecg194,ecg195,ecg196,ecg197,ecg198,ecg199,ecg200,ecg201,ecg202,ecg203,ecg204,ecg205,ecg206,ecg207,ecg208,ecg209,ecg210,ecg211,ecg212,ecg213,ecg214,ecg215,ecg216,ecg217,ecg218,ecg219,ecg220,ecg221,ecg222,ecg223,ecg224,ecg225,ecg226,ecg227,ecg228,ecg229,ecg230,ecg231,ecg232,ecg233,ecg234,ecg235,ecg236,ecg237,ecg238,ecg239,ecg240,ecg241,ecg242,ecg243,ecg244,ecg245,ecg246,ecg247,ecg248,ecg249,ecg250,ecg251,ecg252,ecg253,ecg254,ecg255,ecg256,ecg257,ecg258,ecg259,ecg260,ecg261,ecg262,ecg263,ecg264,ecg265,ecg266,ecg267,ecg268,ecg269,ecg270,ecg271,ecg272,ecg273,ecg274,ecg275,ecg276,ecg277,ecg278,ecg279,ecg280,ecg281,ecg282,ecg283,ecg284,ecg285,ecg286,ecg287,ecg288,ecg289,ecg290,ecg291,ecg292,ecg293,ecg294,ecg295,ecg296,ecg297,ecg298,ecg299,ecg300,ecg301,ecg302,ecg303,ecg304,ecg305,ecg306,ecg307,ecg308,ecg309,ecg310,ecg311,ecg312,ecg313,ecg314,ecg315,ecg316,ecg317,ecg318,ecg319,ecg320,ecg321,ecg322,ecg323,ecg324,ecg325,ecg326,ecg327,ecg328,ecg329,ecg330,ecg331,ecg332,ecg333,ecg334,ecg335,ecg336,ecg337,ecg338,ecg339,ecg340,ecg341,ecg342,ecg343,ecg344,ecg345,ecg346,ecg347,ecg348,ecg349,ecg350,ecg351,ecg352,ecg353,ecg354,ecg355,ecg356,ecg357,ecg358,ecg359,ecg360,ecg361,ecg362,ecg363,ecg364,ecg365,ecg366,ecg367,ecg368,ecg369,ecg370,ecg371,ecg372,ecg373,ecg374,ecg375,ecg376,ecg377,ecg378,ecg379,ecg380,ecg381,ecg382,ecg383,ecg384,ecg385,ecg386,ecg387,ecg388,ecg389,ecg390,ecg391,ecg392,ecg393,ecg394,ecg395,ecg396,ecg397,ecg398,ecg399,ecg400,ecg401,ecg402,ecg403,ecg404,ecg405,ecg406,ecg407,ecg408,ecg409,ecg410,ecg411,ecg412,ecg413,ecg414,ecg415,ecg416,ecg417,ecg418,ecg419,ecg420,ecg421,ecg422,ecg423,ecg424,ecg425,ecg426,ecg427,ecg428,ecg429,ecg430,ecg431,ecg432,ecg433,ecg434,ecg435,ecg436,ecg437,ecg438,ecg439,ecg440,ecg441,ecg442,ecg443,ecg444,ecg445,ecg446,ecg447,ecg448,ecg449,ecg450,ecg451,ecg452,ecg453,ecg454,ecg455,ecg456,ecg457,ecg458,ecg459,ecg460,ecg461,ecg462,ecg463,ecg464,ecg465,ecg466,ecg467,ecg468,ecg469,ecg470,ecg471,ecg472,ecg473,ecg474,ecg475,ecg476,ecg477,ecg478,ecg479,ecg480,ecg481,ecg482,ecg483,ecg484,ecg485,ecg486,ecg487,ecg488,ecg489,ecg490,ecg491,ecg492,ecg493,ecg494,ecg495,ecg496,ecg497,ecg498,ecg499,ecg500,ecg501,ecg502,ecg503,ecg504,ecg505,ecg506,ecg507,ecg508,ecg509,ecg510,ecg511,ecg512,ecg513,ecg514,ecg515,ecg516,ecg517,ecg518,ecg519,ecg520,ecg521,ecg522,ecg523,ecg524,ecg525,ecg526,ecg527,ecg528,ecg529,ecg530,ecg531,ecg532,ecg533,ecg534,ecg535,ecg536,ecg537,ecg538,ecg539,ecg540,ecg541,ecg542,ecg543,ecg544,ecg545,ecg546,ecg547,ecg548,ecg549,ecg550,ecg551,ecg552,ecg553,ecg554,ecg555,ecg556,ecg557,ecg558,ecg559,ecg560,ecg561,ecg562,ecg563,ecg564,ecg565,ecg566,ecg567,ecg568,ecg569,ecg570,ecg571,ecg572,ecg573,ecg574,ecg575,ecg576,ecg577,ecg578,ecg579,ecg580,ecg581,ecg582,ecg583,ecg584,ecg585,ecg586,ecg587,ecg588,ecg589,ecg590,ecg591,ecg592,ecg593,ecg594,ecg595,ecg596,ecg597,ecg598,ecg599,
ecg600,ecg601,ecg602,ecg603,ecg604,ecg605,ecg606,ecg607,ecg608,ecg609,ecg610,ecg611,ecg612,ecg613,ecg614,ecg615,ecg616,ecg617,ecg618,ecg619,ecg620,ecg621,ecg622,ecg623,ecg624,ecg625,ecg626,ecg627,ecg628,ecg629,ecg630,ecg631,ecg632,ecg633,ecg634,ecg635,ecg636,ecg637,ecg638,ecg639,ecg640,ecg641,ecg642,ecg643,ecg644,ecg645,ecg646,ecg647,ecg648,ecg649,ecg650,ecg651,ecg652,ecg653,ecg654,ecg655,ecg656,ecg657,ecg658,ecg659,ecg660,ecg661,ecg662,ecg663,ecg664,ecg665,ecg666,ecg667,ecg668,ecg669,ecg670,ecg671,ecg672,ecg673,ecg674,ecg675,ecg676,ecg677,ecg678,ecg679,ecg680,ecg681,ecg682,ecg683,ecg684,ecg685,ecg686,ecg687,ecg688,ecg689,ecg690,ecg691,ecg692,ecg693,ecg694,ecg695,ecg696,ecg697,ecg698,ecg699,ecg700,ecg701,ecg702,ecg703,ecg704,ecg705,ecg706,ecg707,ecg708,ecg709,ecg710,ecg711,ecg712,ecg713,ecg714,ecg715,ecg716,ecg717,ecg718,ecg719,ecg720,ecg721,ecg722,ecg723,ecg724,ecg725,ecg726,ecg727,ecg728,ecg729,ecg730,ecg731,ecg732,ecg733,ecg734,ecg735,ecg736,ecg737,ecg738,ecg739,ecg740,ecg741,ecg742,ecg743,ecg744,ecg745,ecg746,ecg747,ecg748,ecg749,ecg750,ecg751,ecg752,ecg753,ecg754,ecg755,ecg756,ecg757,ecg758,ecg759,ecg760,ecg761,ecg762,ecg763,ecg764,ecg765,ecg766,ecg767,ecg768,ecg769,ecg770,ecg771,ecg772,ecg773,ecg774,ecg775,ecg776,ecg777,ecg778,ecg779,ecg780,ecg781,ecg782,ecg783,ecg784,ecg785,ecg786,ecg787,ecg788,ecg789,ecg790,ecg791,ecg792,ecg793,ecg794,ecg795,ecg796,ecg797,ecg798,ecg799;

reg r_win_full1,r_win_full2,r_win_full3;

input [3:0] count1;
input [8:0] count2;

reg counta, countb;

input clk, nReset;
wire clk, nReset;

reg [15:0] limit01_xa_find,limit02_xa_find,limit03_xb_find,
limit04_xb_find,limit1ecg,limit2ecg,limit3ecg,limit4ecg,
limit5ecg,limit6ecg,limit21_xa_find,limit22_xa_find,limit23_xb_find,limit24_xb_find,start_var,end_var;

reg signed [15:0] start_qrs1,end_qrs1,grad_ecg_qrs_abs1,grad_ecg_qrs1,
flip_grad_qrs_abs1,flip_grad_qrs1,start_qrs2,end_qrs2,grad_ecg_qrs_abs2,grad_ecg_qrs2,flip_grad_qrs_abs2,flip_grad_qrs2;

reg start_qrs_found1,end_qrs_found1,grad_win_full1,
flip_grad_win_full1,start_qrs_found2,end_qrs_found2,
grad_win_full2,flip_grad_win_full2;

integer j;

reg signed [15:0] ecg_signal [0:`m-1];

wire signed [15:0] cA_store [0:`n3-2];

reg [15:0] c2,c3,c4,c5,c6,c7,c8,c9;

assign cA_store[0] = cA0;
assign cA_store[1] = cA1;
assign cA_store[2] = cA2;
assign cA_store[3] = cA3;
assign cA_store[4] = cA4;
assign cA_store[5] = cA5;
assign cA_store[6] = cA6;
assign cA_store[7] = cA7;
assign cA_store[8] = cA8;
assign cA_store[9] = cA9;
assign cA_store[10] = cA10;
assign cA_store[11] = cA11;
assign cA_store[12] = cA12;
assign cA_store[13] = cA13;
assign cA_store[14] = cA14;
assign cA_store[15] = cA15;
assign cA_store[16] = cA16;
assign cA_store[17] = cA17;
assign cA_store[18] = cA18;
assign cA_store[19] = cA19;
assign cA_store[20] = cA20;
assign cA_store[21] = cA21;
assign cA_store[22] = cA22;
assign cA_store[23] = cA23;
assign cA_store[24] = cA24;
assign cA_store[25] = cA25;
assign cA_store[26] = cA26;
assign cA_store[27] = cA27;
assign cA_store[28] = cA28;
assign cA_store[29] = cA29;
assign cA_store[30] = cA30;
assign cA_store[31] = cA31;
assign cA_store[32] = cA32;
assign cA_store[33] = cA33;
assign cA_store[34] = cA34;
assign cA_store[35] = cA35;
assign cA_store[36] = cA36;
assign cA_store[37] = cA37;
assign cA_store[38] = cA38;
assign cA_store[39] = cA39;
assign cA_store[40] = cA40;
assign cA_store[41] = cA41;
assign cA_store[42] = cA42;
assign cA_store[43] = cA43;
assign cA_store[44] = cA44;
assign cA_store[45] = cA45;
assign cA_store[46] = cA46;
assign cA_store[47] = cA47;
assign cA_store[48] = cA48;
assign cA_store[49] = cA49;
assign cA_store[50] = cA50;
assign cA_store[51] = cA51;
assign cA_store[52] = cA52;
assign cA_store[53] = cA53;
assign cA_store[54] = cA54;
assign cA_store[55] = cA55;
assign cA_store[56] = cA56;
assign cA_store[57] = cA57;
assign cA_store[58] = cA58;
assign cA_store[59] = cA59;
assign cA_store[60] = cA60;
assign cA_store[61] = cA61;
assign cA_store[62] = cA62;
assign cA_store[63] = cA63;
assign cA_store[64] = cA64;
assign cA_store[65] = cA65;
assign cA_store[66] = cA66;
assign cA_store[67] = cA67;
assign cA_store[68] = cA68;
assign cA_store[69] = cA69;
assign cA_store[70] = cA70;
assign cA_store[71] = cA71;
assign cA_store[72] = cA72;
assign cA_store[73] = cA73;
assign cA_store[74] = cA74;
assign cA_store[75] = cA75;
assign cA_store[76] = cA76;
assign cA_store[77] = cA77;
assign cA_store[78] = cA78;
assign cA_store[79] = cA79;
assign cA_store[80] = cA80;
assign cA_store[81] = cA81;
assign cA_store[82] = cA82;
assign cA_store[83] = cA83;
assign cA_store[84] = cA84;
assign cA_store[85] = cA85;
assign cA_store[86] = cA86;
assign cA_store[87] = cA87;
assign cA_store[88] = cA88;
assign cA_store[89] = cA89;
assign cA_store[90] = cA90;
assign cA_store[91] = cA91;
assign cA_store[92] = cA92;
assign cA_store[93] = cA93;
assign cA_store[94] = cA94;
assign cA_store[95] = cA95;
assign cA_store[96] = cA96;
assign cA_store[97] = cA97;
assign cA_store[98] = cA98;
assign cA_store[99] = cA99;


always @(*)
begin

limit1ecg = 0;
limit2ecg = 0;
limit3ecg = 0;
limit4ecg = 0;
limit5ecg = 0;
limit6ecg = 0;
limit01_xa_find = 0;
limit02_xa_find = 0;
limit03_xb_find = 0;
limit04_xb_find = 0;

if (count2 == 1)
begin
	if (min_pos_l3 < max_pos_l3)
	begin
		limit1ecg = ((min_pos_l3+1)<<`shift3)-1;
		limit2ecg = ((max_pos_l3+1)<<`shift3)-1;
		limit3ecg = limit3ecg;
		limit4ecg = limit4ecg;
		limit5ecg = limit3ecg;
		limit6ecg = limit4ecg;

		if (cD_min_found != 0)
		begin
			limit01_xa_find = q_begin_l3_temp + (3-1);
			limit02_xa_find = min_pos_l3+1;
//			limit03_xb_find = s_end_l3_temp-(3*`rat)-1;
			limit03_xb_find = s_end_l3_temp-(3*`rat);
//			limit04_xb_find = min_pos_l3_n-1;
			limit04_xb_find = min_pos_l3_n-1;
		end
		else
		begin
			limit01_xa_find = limit01_xa_find;
			limit02_xa_find = limit02_xa_find;
			limit03_xb_find = limit03_xb_find;
			limit04_xb_find = limit04_xb_find;
		end
	end
	else
	begin
		limit1ecg = limit1ecg;
		limit2ecg = limit2ecg;

		if (min_pos_l3_n != 0)
		begin
			limit3ecg = ((min_pos_l3_n+1)<<`shift3)-1;
			limit4ecg = ((max_pos_l3+1)<<`shift3)-1;
		end
		else
		begin
			limit3ecg = limit3ecg;
			limit4ecg = limit4ecg;
		end
		
		if (max_pos_l3_n != 0)
		begin
			limit5ecg = ((min_pos_l3+1)<<`shift3)-1;
			limit6ecg = ((max_pos_l3_n+1)<<`shift3)-1;
		end
		else
		begin
			limit5ecg = limit5ecg;
			limit6ecg = limit6ecg;
		end

		limit01_xa_find = q_begin_l3_temp + (3 - 1);
		limit02_xa_find = min_pos_l3+1;
		limit03_xb_find = s_end_l3_temp - (3*`rat);
		limit04_xb_find = min_pos_l3-1;

	end
end
else
begin
	limit1ecg = limit1ecg;
	limit2ecg = limit2ecg;
	limit3ecg = limit3ecg;
	limit4ecg = limit4ecg;
	limit5ecg = limit5ecg;
	limit6ecg = limit6ecg;
	limit01_xa_find = limit01_xa_find;
	limit02_xa_find = limit02_xa_find;
	limit03_xb_find = limit03_xb_find;
	limit04_xb_find = limit04_xb_find;
end
end


//**************************************************************

always @(posedge clk or negedge nReset)

if (!nReset)
begin
	c5 <= #20 0;
	for (j=0; j<`m; j=j+1)
		ecg_signal[j] <= #20 0;

	c2 <= #20 0;
	c3 <= #20 0;
	c4 <= #20 0;


	r_peak_ref1 <= #20 0;
	r_peak_pos_temp1 <= #20 0;
	r_win_full1 <= #20 0;
	r_peak_pos_ref1 <= #20 0;

	r_peak_ref2 <= #20 0;
	r_peak_pos_temp2 <= #20 0;
	r_win_full2 <= #20 0;
	r_peak_pos_ref2 <= #20 0;

	r_peak_ref3 <= #20 0;
	r_peak_pos_temp3 <= #20 0;
	r_win_full3 <= #20 0;
	r_peak_pos_ref3 <= #20 0;

end
else
begin
	if (count1 > 0)
	begin
		if (c5 <= `m)
		begin
			ecg_signal[c5] <= #20 data_in;
			c5 <= #20 c5 + 1;
		end
		else
			ecg_signal[c5] <= #20 0;
	end
	else
		c5 <= #20 0;

	if (count1 == 2 && count2 == 1)
	begin
		if (min_pos_l3 < max_pos_l3)
		begin
		if (c2 <= limit2ecg)
		begin
			if (c2 == 0)
				c2 <= #20 limit1ecg; 
			else 
			begin
				if (c2 == limit1ecg) 
				begin
				  c2 <= #20 limit1ecg;
				  r_peak_ref1 <= #20 ecg_signal[limit1ecg];
				  r_peak_pos_temp1 <= #20 limit1ecg;
				  c2 <= #20 c2 + 1;
				end
				else
				begin
			 	     if (ecg_signal[c2] > r_peak_ref1)
				     begin
				  	  r_peak_ref1 <= #20 ecg_signal[c2];
					  r_peak_pos_temp1 <= #20 c2;
				     end
				     else
				     begin
				  	  r_peak_ref1 <= #20 r_peak_ref1;
					  r_peak_pos_temp1 <= #20 											r_peak_pos_temp1;
				     end

				    c2 <= #20 c2 + 1;

				  if (c2 >= limit2ecg)
					r_win_full1 <= #20 1;
				  else
					r_win_full1 <= #20 r_win_full1;
				end
			end
		end
		else
		begin
			c2 <= #20 c2;
			r_peak_ref1 <= #20 r_peak_ref1;
			r_peak_pos_temp1 <= #20 r_peak_pos_temp1;
			r_win_full1 <= #20 r_win_full1;
			r_peak_pos_ref1 <= #20 r_peak_pos_ref1;
		end
		if (r_win_full1 == 1)
			r_peak_pos_ref1 <= #20 r_peak_pos_temp1;
		else
			r_peak_pos_ref1 <= #20 r_peak_pos_ref1;
		end

		else
		begin

		if (c3 <= limit4ecg)
		begin
			if (c3 == 0)
				c3 <= #20 limit3ecg; 
			else 
			begin
				if (c3 == limit3ecg) 
				begin
				  c3 <= #20 limit3ecg;
				  r_peak_ref2 <= #20 ecg_signal[limit3ecg];
				  r_peak_pos_temp2 <= #20 limit3ecg;
				  c3 <= #20 c3 + 1;
				end
				else
				begin
			 	     if (ecg_signal[c3] > r_peak_ref2)
				     begin
				  	  r_peak_ref2 <= #20 ecg_signal[c3];
					  r_peak_pos_temp2 <= #20 c3;
				     end
				     else
				     begin
				  	  r_peak_ref2 <= #20 r_peak_ref2;
					  r_peak_pos_temp2 <= #20 											r_peak_pos_temp2;
				     end

				    c3 <= #20 c3 + 1;

				  if (c3 >= limit4ecg)
					r_win_full2 <= #20 1;
				  else
					r_win_full2 <= #20 r_win_full2;
				end
			end
		end
		else
		begin
			c3 <= #20 c3;
			r_peak_ref2 <= #20 r_peak_ref2;
			r_peak_pos_temp2 <= #20 r_peak_pos_temp2;
			r_win_full2 <= #20 r_win_full2;
			r_peak_pos_ref2 <= #20 r_peak_pos_ref2;
		end
		if (r_win_full2 == 1)
			r_peak_pos_ref2 <= #20 r_peak_pos_temp2;
		else
			r_peak_pos_ref2 <= #20 r_peak_pos_ref2;


		if (c4 <= limit6ecg)
		begin
			if (c4 == 0)
				c4 <= #20 limit5ecg; 
			else 
			begin
				if (c4 == limit5ecg) 
				begin
				  c4 <= #20 limit5ecg;
				  r_peak_ref3 <= #20 ecg_signal[limit5ecg];
				  r_peak_pos_temp3 <= #20 limit5ecg;
				  c4 <= #20 c4 + 1;
				end
				else
				begin
			 	     if (ecg_signal[c4] > r_peak_ref3)
				     begin
				  	  r_peak_ref3 <= #20 ecg_signal[c4];
					  r_peak_pos_temp3 <= #20 c4;
				     end
				     else
				     begin
				  	  r_peak_ref3 <= #20 r_peak_ref3;
					  r_peak_pos_temp3 <= #20 											r_peak_pos_temp3;
				     end

				    c4 <= #20 c4 + 1;

				  if (c4 >= limit6ecg)
					r_win_full3 <= #20 1;
				  else
					r_win_full3 <= #20 r_win_full3;
				end
			end
		end
		else
		begin
			c4 <= #20 c4;
			r_peak_ref3 <= #20 r_peak_ref3;
			r_peak_pos_temp3 <= #20 r_peak_pos_temp3;
			r_win_full3 <= #20 r_win_full3;
			r_peak_pos_ref3 <= #20 r_peak_pos_ref3;
		end
		if (r_win_full3 == 1)
			r_peak_pos_ref3 <= #20 r_peak_pos_temp3;
		else
			r_peak_pos_ref3 <= #20 r_peak_pos_ref3;

		end
	end
	else
	begin
		c2 <= #20 c2;
		r_peak_ref1 <= #20 r_peak_ref1;
		r_peak_pos_temp1 <= #20 r_peak_pos_temp1;
		r_win_full1 <= #20 r_win_full1;
		r_peak_pos_ref1 <= #20 r_peak_pos_ref1;

		c3 <= #20 c3;
		r_peak_ref2 <= #20 r_peak_ref2;
		r_peak_pos_temp2 <= #20 r_peak_pos_temp2;
		r_win_full2 <= #20 r_win_full2;
		r_peak_pos_ref2 <= #20 r_peak_pos_ref2;

		c4 <= #20 c4;
		r_peak_ref3 <= #20 r_peak_ref3;
		r_peak_pos_temp3 <= #20 r_peak_pos_temp3;
		r_win_full3 <= #20 r_win_full3;
		r_peak_pos_ref3 <= #20 r_peak_pos_ref3;
	end

end



//**************************************************************

always @(posedge clk or negedge nReset)

if (!nReset)
begin
	c6 <= #20 0;
	c7 <= #20 0;
	counta <= #20 0;
	start_qrs_found1 <= #20 0;
	start_qrs1 <= #20 0;
	end_qrs_found1 <= #20 0;
	end_qrs1 <= #20 0;
	grad_ecg_qrs1 <= #20 0;
	grad_ecg_qrs_abs1 <= #20 0;
	flip_grad_qrs1 <= #20 0;
	flip_grad_qrs_abs1 <= #20 0;
	grad_win_full1 <= #20 0;
	flip_grad_win_full1 <= #20 0;
end
else
begin
	counta <= ~counta;
	if (count2 == 1) 
	begin
		if (q_begin_l3_flag != 0 && q_begin_l3_temp != 0)
		begin 
		if (c6 <= limit02_xa_find+1)
		begin
			if (c6 == 0)
			begin
				c6 <= #20 limit01_xa_find; 

				if (limit01_xa_find > limit02_xa_find)
					grad_win_full1 <= #20 1;
				else
					grad_win_full1 <= #20 grad_win_full1;
			end
			else
			begin
				if (start_qrs_found1 != 1)
				begin
					grad_ecg_qrs1 <= #20 cA_store[c6+1] - 									cA_store[c6];
 
					if (grad_ecg_qrs1[15] == 1)
					  	grad_ecg_qrs_abs1 <= #20 										~(grad_ecg_qrs1-1);
					else
					    grad_ecg_qrs_abs1<=#20 												grad_ecg_qrs1;

					if (grad_ecg_qrs_abs1 > thr1)
					begin
						start_qrs_found1 <= #20 1;
						if (limit01_xa_find == 											q_begin_l3_temp)
							start_qrs1 <= #20 
								((c6+1)<<`shift3)-1;
						else
							start_qrs1 <= #20 
				((c6+(limit01_xa_find-q_begin_l3_temp))										<<`shift3)-1;
					end
					else
					begin
						start_qrs_found1 <= #20 										start_qrs_found1;
						start_qrs1 <= #20 start_qrs1;

						if (counta)
							c6 <= #20 c6 + 1;
						else
							c6 <= #20 c6;
					end
				end
				else
				begin
					start_qrs_found1 <= #20 										start_qrs_found1;
					start_qrs1 <= #20 start_qrs1;
				end
				if (c6 == (limit02_xa_find+1)										||start_qrs_found1 != 0)
					grad_win_full1 <= #20 1;
				else
					grad_win_full1 <= #20 grad_win_full1;
			end
		end
		else
		begin
			start_qrs_found1 <= #20 start_qrs_found1;
			start_qrs1 <= #20 start_qrs1;
			grad_win_full1 <= #20 grad_win_full1;
		end
		end
		else
		begin
			start_qrs_found1 <= #20 start_qrs_found1;
			start_qrs1 <= #20 start_qrs1;
			grad_win_full1 <= #20 grad_win_full1;
		end

		if (cD_min_found != 0 && min_pos_l3_n != 0 && 
								s_end_l3_temp != 0)
		begin
			if (limit03_xb_find != limit04_xb_find)
			begin
			if (c7 == 0)
				c7 <= #20 limit03_xb_find;
			else
				c7 <= #20 c7;
			if (c7 >= limit04_xb_find)
			begin
				if (end_qrs_found1 != 1)
				begin	
					flip_grad_qrs1 <= #20 cA_store[c7] - 									cA_store[c7-1]; 

					if (flip_grad_qrs1[15] == 1)
					 	flip_grad_qrs_abs1 <= #20 										~(flip_grad_qrs1-1);
					else
					    	flip_grad_qrs_abs1										<= #20 flip_grad_qrs1;

					if (flip_grad_qrs_abs1 > thr2)
					begin
						end_qrs_found1 <= #20 1;
						end_qrs1 <= #20 ((c7+2)											<<`shift3)-1;
					end
					else
					begin
						end_qrs_found1 <= #20 											end_qrs_found1;
						end_qrs1 <= #20 end_qrs1;

						if (!counta)
						begin
							c7 <= #20 c7 - 1;
						end
						else
						begin
							c7 <= #20 c7;
						end
					end
				end
				else
				begin
					end_qrs_found1 <= #20 end_qrs_found1;
					end_qrs1 <= #20 end_qrs1;
				end
				if (c7 == limit04_xb_find || end_qrs_found1 											!= 0)
					flip_grad_win_full1 <= #20 1;
				else
					flip_grad_win_full1 <= #20 											flip_grad_win_full1;
			end
			else
			begin
				end_qrs_found1 <= #20 end_qrs_found1;
				end_qrs1 <= #20 end_qrs1;
				flip_grad_win_full1 <= flip_grad_win_full1;
			end
			end
			else
			begin
				end_qrs_found1 <= #20 end_qrs_found1;
				end_qrs1 <= #20 end_qrs1;
				flip_grad_win_full1 <= #20 												flip_grad_win_full1;
			end
		end
		else
		begin
			end_qrs_found1 <= #20 end_qrs_found1;
			end_qrs1 <= #20 end_qrs1;
			flip_grad_win_full1 <= #20 flip_grad_win_full1;
		end
	end
	else
	begin
		c6 <= #20 c6;
		c7 <= #20 c7;
		start_qrs_found1 <= #20 start_qrs_found1;
		start_qrs1 <= #20 start_qrs1;
		end_qrs_found1 <= #20 end_qrs_found1;
		end_qrs1 <= #20 end_qrs1;
		grad_win_full1 <= #20 grad_win_full1;
		flip_grad_win_full1 <= #20 flip_grad_win_full1;
	end
end


//**************************************************************

always @(*)
begin

r_peak_ref = 0;
r_peak_pos_ref = 0;

if (count2 == 1)
begin
	if (min_pos_l3 < max_pos_l3)
	begin
		if (r_win_full1 != 0)
			r_peak_ref = r_peak_ref1;
		else
			r_peak_ref = r_peak_ref;
			r_peak_pos_ref = r_peak_pos_ref1;
	end
	else
	begin
		if (r_peak_pos_ref2 != 0 && r_peak_pos_ref3 != 0)
		begin
			if (r_peak_ref2 > r_peak_ref3)
			begin
				if (r_win_full3 != 0)
				begin
					r_peak_ref = r_peak_ref2;
				     r_peak_pos_ref = r_peak_pos_ref2;	
				end
				else
				begin
					r_peak_ref = r_peak_ref;
				     r_peak_pos_ref = r_peak_pos_ref; 	
				end
			end
			else	
			begin
				if (r_win_full3 != 0)
				begin
					r_peak_ref = r_peak_ref3;
				     r_peak_pos_ref = r_peak_pos_ref3;						end
				else
				begin
					r_peak_ref = r_peak_ref;
				     r_peak_pos_ref = r_peak_pos_ref;	
				end
			end
		end
		else
		begin
			r_peak_ref = r_peak_ref;
			r_peak_pos_ref = r_peak_pos_ref;
		end
	end
end
else
begin
	r_peak_ref = r_peak_ref;
	r_peak_pos_ref = r_peak_pos_ref;
end

end


//***************************************************************

always @(*)
begin

limit21_xa_find = 0;
limit22_xa_find = 0;
limit23_xb_find = 0;
limit24_xb_find = 0;

if (r_peak_pos_ref != 0)
begin
	if (start_qrs1 != 0)
	begin
		limit21_xa_find = q_begin_l3_temp;
		limit22_xa_find = (r_peak_pos_ref>>`shift3)+1;
	end
	else
	begin
		limit21_xa_find = limit21_xa_find;
		limit22_xa_find = limit22_xa_find;
	end

	if (end_qrs1 != 0)
	begin
		//limit23_xb_find = s_end_l3_temp-(3*`rat)-1;	
		limit23_xb_find = s_end_l3_temp-(3*`rat);	

		limit24_xb_find = (r_peak_pos_ref>>`shift3)-1;
		//limit24_xb_find = (r_peak_pos_ref>>`shift3);

	end
	else
	begin
		limit23_xb_find = limit23_xb_find;
		limit24_xb_find = limit24_xb_find;
	end
end
else
begin
	limit21_xa_find = limit21_xa_find;
	limit22_xa_find = limit22_xa_find;
	limit23_xb_find = limit23_xb_find;
	limit24_xb_find = limit24_xb_find;
end
end

always @(*)
begin

start_var = 0;
end_var = 0;

if (q_begin_l3_temp != 0 && s_end_l3_temp != 0)
begin
	start_var = ((q_begin_l3_temp+(8*`rat))<<`shift3)-1;
	end_var = (((s_end_l3_temp)-(15*`rat)+2)<<`shift3)-1;
end
else
begin
	start_var = start_var;
	end_var = end_var;
end
end


always @(posedge clk or negedge nReset)

if (!nReset)
begin
	c8 <= #20 0;
	c9 <= #20 0;
	countb <= #20 0;
	start_qrs_found2 <= #20 0;
	start_qrs2 <= #20 0;
	end_qrs_found2 <= #20 0;
	end_qrs2 <= #20 0;
	grad_ecg_qrs2 <= #20 0;
	grad_ecg_qrs_abs2 <= #20 0;
	flip_grad_qrs2 <= #20 0;
	flip_grad_qrs_abs2 <= #20 0;
	grad_win_full2 <= #20 0;
	flip_grad_win_full2 <= #20 0;
end
else
begin
	countb <= ~countb;
	if (count2 == 1) 
	begin
		if (q_begin_l3_flag != 0 && q_begin_l3_temp != 0)
		begin 
		if (c8 <= limit22_xa_find+1)
		begin
			if (c8 == 0)
			begin
				c8 <= #20 limit21_xa_find; 

				if (limit21_xa_find > limit22_xa_find)
					grad_win_full2 <= #20 1;
				else
					grad_win_full2 <= #20 grad_win_full2;
			end
			else
			begin
				if (start_qrs_found2 != 1)
				begin
					grad_ecg_qrs2 <= #20 cA_store[c8+1] - 									cA_store[c8];
 
					if (grad_ecg_qrs2[15] == 1)
					  	grad_ecg_qrs_abs2 <= #20 										~(grad_ecg_qrs2-1);
					else
					    grad_ecg_qrs_abs2<=#20 												grad_ecg_qrs2;

					if (grad_ecg_qrs_abs2 > thr1)
					begin
						start_qrs_found2 <= #20 1;
						if (limit21_xa_find == 											q_begin_l3_temp)
							start_qrs2 <= #20 
								((c8+1)<<`shift3)-1;
						else
							start_qrs2 <= #20 
				((c8+(limit21_xa_find-q_begin_l3_temp))										<<`shift3)-1;
					end
					else
					begin
						start_qrs_found2 <= #20 										start_qrs_found2;
						start_qrs2 <= #20 start_qrs2;

						if (countb)
							c8 <= #20 c8 + 1;
						else
							c8 <= #20 c8;
					end
				end
				else
				begin
					start_qrs_found2 <= #20 											start_qrs_found2;
					start_qrs2 <= #20 start_qrs2;
				end
				if (c8 == (limit22_xa_find+1)										||start_qrs_found2 != 0)
					grad_win_full2 <= #20 1;
				else
					grad_win_full2 <= #20 grad_win_full2;
			end
		end
		else
		begin
			start_qrs_found2 <= #20 start_qrs_found2;
			start_qrs2 <= #20 start_qrs2;
			grad_win_full2 <= #20 grad_win_full2;
		end
		end
		else
		begin
			start_qrs_found2 <= #20 start_qrs_found2;
			start_qrs2 <= #20 start_qrs2;
			grad_win_full2 <= #20 grad_win_full2;
		end


		if (cD_min_found != 0 && min_pos_l3_n != 0 && 
								s_end_l3_temp != 0)
		begin
			if (limit23_xb_find != limit24_xb_find)
			begin
			if (c9 == 0)
				c9 <= #20 limit23_xb_find;
			else
				c9 <= #20 c9;
			if (c9 >= limit24_xb_find)
			begin
				if (end_qrs_found2 != 1)
				begin	
					flip_grad_qrs2 <= #20 cA_store[c9] - 									cA_store[c9-1]; 

					if (flip_grad_qrs2[15] == 1)
					 	flip_grad_qrs_abs2 <= #20 										~(flip_grad_qrs2-1);
					else
					    	flip_grad_qrs_abs2										<= #20 flip_grad_qrs2;

					if (flip_grad_qrs_abs2 > thr2)
					begin
						end_qrs_found2 <= #20 1;
						end_qrs2 <= #20 ((c9+2)											<<`shift3)-1;
					end
					else
					begin
						end_qrs_found2 <= #20 											end_qrs_found2;
						end_qrs2 <= #20 end_qrs2;

						if (!countb)
						begin
							c9 <= #20 c9 - 1;
						end
						else
						begin
							c9 <= #20 c9;
						end
					end
				end
				else
				begin
					end_qrs_found2 <= #20 end_qrs_found2;
					end_qrs2 <= #20 end_qrs2;
				end
				if (c9 == limit24_xb_find || end_qrs_found2 											!= 0)
					flip_grad_win_full2 <= #20 1;
				else
					flip_grad_win_full2 <= #20 											flip_grad_win_full2;
			end
			else
			begin
				end_qrs_found2 <= #20 end_qrs_found2;
				end_qrs2 <= #20 end_qrs2;
				flip_grad_win_full2 <= flip_grad_win_full2;
			end
			end
			else
			begin
				end_qrs_found2 <= #20 end_qrs_found2;
				end_qrs2 <= #20 end_qrs2;
				flip_grad_win_full2 <= #20 												flip_grad_win_full2;
			end
		end
		else
		begin
			end_qrs_found2 <= #20 end_qrs_found2;
			end_qrs2 <= #20 end_qrs2;
			flip_grad_win_full2 <= #20 flip_grad_win_full2;
		end
	end
	else
	begin
		c8 <= #20 c8;
		c9 <= #20 c9;
		start_qrs_found2 <= #20 start_qrs_found2;
		start_qrs2 <= #20 start_qrs2;
		end_qrs_found2 <= #20 end_qrs_found2;
		end_qrs2 <= #20 end_qrs2;
		grad_win_full2 <= #20 grad_win_full2;
		flip_grad_win_full2 <= #20 flip_grad_win_full2;
	end
end


always @(*)
begin

start_qrs_fin_2 = 0;
end_qrs_fin_2 = 0;

if (count2 == 1)
begin
	if (grad_win_full1 != 0)
	begin
		if (start_qrs1 != 0)
		begin
			if (r_peak_pos_ref != 0)
			begin
				if (start_qrs1 > r_peak_pos_ref)
				begin
					if (grad_win_full2 != 0)	
					begin
						if (start_qrs2 != 0)
						begin
							if (start_qrs2 > start_var)	
								start_qrs_fin_2 									  	     = start_var;
							else
								start_qrs_fin_2 									  	= start_qrs2;
						end
						else
						begin
							if (start_qrs1 > start_var)	
								start_qrs_fin_2 = 
									start_var;
							else
								start_qrs_fin_2 = 
								 	start_qrs1;
						end
					end
					else
						start_qrs_fin_2 = 
									start_qrs_fin_2;	
				end
				else
				begin
					if (start_qrs1 > start_var)
					     start_qrs_fin_2 = start_var;	
					else
						start_qrs_fin_2 = start_qrs1;
				end
			end
			else
				start_qrs_fin_2 = start_qrs_fin_2;
		end
		else
			start_qrs_fin_2 = start_var;
	end
	else
		start_qrs_fin_2 = start_qrs_fin_2;


	if (flip_grad_win_full1 != 0)
	begin
		if (end_qrs1 != 0)
		begin
			if (r_peak_pos_ref != 0)
			begin
				if (end_qrs1 < r_peak_pos_ref)
				begin
					if (flip_grad_win_full2 != 0)
					begin
						if (end_qrs2 != 0)
						begin
							if (end_qrs2 < end_var)								   end_qrs_fin_2 = end_var; 
							else
						  	  end_qrs_fin_2 = end_qrs2;	
						end
						else
						begin
							if (r_peak_pos_ref < 												end_var)	
								end_qrs_fin_2 = 
										end_var;	
							else
								end_qrs_fin_2 = 									  		r_peak_pos_ref;
						end
					end
					else
						end_qrs_fin_2 = end_qrs_fin_2;	
				end
				else
				begin
					if (end_qrs1 < end_var)
						end_qrs_fin_2 = end_var; 	
					else
						end_qrs_fin_2 = end_qrs1;
				end
			end
			else
				end_qrs_fin_2 = end_qrs_fin_2;
		end
		else
			end_qrs_fin_2 = end_var;
	end
	else
		end_qrs_fin_2 = end_qrs_fin_2;
end
else
begin
	start_qrs_fin_2 = start_qrs_fin_2;
	end_qrs_fin_2 = end_qrs_fin_2;
end


end



//**************************************************************

assign {ecg0,ecg1,ecg2,ecg3,ecg4,ecg5,ecg6,ecg7,ecg8,ecg9,ecg10,ecg11,ecg12,ecg13,ecg14,ecg15,ecg16,ecg17,ecg18,ecg19,ecg20,ecg21,ecg22,ecg23,ecg24,ecg25,ecg26,ecg27,ecg28,ecg29,ecg30,ecg31,ecg32,ecg33,ecg34,ecg35,ecg36,ecg37,ecg38,ecg39,ecg40,ecg41,ecg42,ecg43,ecg44,ecg45,ecg46,ecg47,ecg48,ecg49,ecg50,ecg51,ecg52,ecg53,ecg54,ecg55,ecg56,ecg57,ecg58,ecg59,ecg60,ecg61,ecg62,ecg63,ecg64,ecg65,ecg66,ecg67,ecg68,ecg69,ecg70,ecg71,ecg72,ecg73,ecg74,ecg75,ecg76,ecg77,ecg78,ecg79,ecg80,ecg81,ecg82,ecg83,ecg84,ecg85,ecg86,ecg87,ecg88,ecg89,ecg90,ecg91,ecg92,ecg93,ecg94,ecg95,ecg96,ecg97,ecg98,ecg99,ecg100,ecg101,ecg102,ecg103,ecg104,ecg105,ecg106,ecg107,ecg108,ecg109,ecg110,ecg111,ecg112,ecg113,ecg114,ecg115,ecg116,ecg117,ecg118,ecg119,ecg120,ecg121,ecg122,ecg123,ecg124,ecg125,ecg126,ecg127,ecg128,ecg129,ecg130,ecg131,ecg132,ecg133,ecg134,ecg135,ecg136,ecg137,ecg138,ecg139,ecg140,ecg141,ecg142,ecg143,ecg144,ecg145,ecg146,ecg147,ecg148,ecg149,ecg150,ecg151,ecg152,ecg153,ecg154,ecg155,ecg156,ecg157,ecg158,ecg159,ecg160,ecg161,ecg162,ecg163,ecg164,ecg165,ecg166,ecg167,ecg168,ecg169,ecg170,ecg171,ecg172,ecg173,ecg174,ecg175,ecg176,ecg177,ecg178,ecg179,ecg180,ecg181,ecg182,ecg183,ecg184,ecg185,ecg186,ecg187,ecg188,ecg189,ecg190,ecg191,ecg192,ecg193,ecg194,ecg195,ecg196,ecg197,ecg198,ecg199,ecg200,ecg201,ecg202,ecg203,ecg204,ecg205,ecg206,ecg207,ecg208,ecg209,ecg210,ecg211,ecg212,ecg213,ecg214,ecg215,ecg216,ecg217,ecg218,ecg219,ecg220,ecg221,ecg222,ecg223,ecg224,ecg225,ecg226,ecg227,ecg228,ecg229,ecg230,ecg231,ecg232,ecg233,ecg234,ecg235,ecg236,ecg237,ecg238,ecg239,ecg240,ecg241,ecg242,ecg243,ecg244,ecg245,ecg246,ecg247,ecg248,ecg249,ecg250,ecg251,ecg252,ecg253,ecg254,ecg255,ecg256,ecg257,ecg258,ecg259,ecg260,ecg261,ecg262,ecg263,ecg264,ecg265,ecg266,ecg267,ecg268,ecg269,ecg270,ecg271,ecg272,ecg273,ecg274,ecg275,ecg276,ecg277,ecg278,ecg279,ecg280,ecg281,ecg282,ecg283,ecg284,ecg285,ecg286,ecg287,ecg288,ecg289,ecg290,ecg291,ecg292,ecg293,ecg294,ecg295,ecg296,ecg297,ecg298,ecg299,ecg300,ecg301,ecg302,ecg303,ecg304,ecg305,ecg306,ecg307,ecg308,ecg309,ecg310,ecg311,ecg312,ecg313,ecg314,ecg315,ecg316,ecg317,ecg318,ecg319,ecg320,ecg321,ecg322,ecg323,ecg324,ecg325,ecg326,ecg327,ecg328,ecg329,ecg330,ecg331,ecg332,ecg333,ecg334,ecg335,ecg336,ecg337,ecg338,ecg339,ecg340,ecg341,ecg342,ecg343,ecg344,ecg345,ecg346,ecg347,ecg348,ecg349,ecg350,ecg351,ecg352,ecg353,ecg354,ecg355,ecg356,ecg357,ecg358,ecg359,ecg360,ecg361,ecg362,ecg363,ecg364,ecg365,ecg366,ecg367,ecg368,ecg369,ecg370,ecg371,ecg372,ecg373,ecg374,ecg375,ecg376,ecg377,ecg378,ecg379,ecg380,ecg381,ecg382,ecg383,ecg384,ecg385,ecg386,ecg387,ecg388,ecg389,ecg390,ecg391,ecg392,ecg393,ecg394,ecg395,ecg396,ecg397,ecg398,ecg399,ecg400,ecg401,ecg402,ecg403,ecg404,ecg405,ecg406,ecg407,ecg408,ecg409,ecg410,ecg411,ecg412,ecg413,ecg414,ecg415,ecg416,ecg417,ecg418,ecg419,ecg420,ecg421,ecg422,ecg423,ecg424,ecg425,ecg426,ecg427,ecg428,ecg429,ecg430,ecg431,ecg432,ecg433,ecg434,ecg435,ecg436,ecg437,ecg438,ecg439,ecg440,ecg441,ecg442,ecg443,ecg444,ecg445,ecg446,ecg447,ecg448,ecg449,ecg450,ecg451,ecg452,ecg453,ecg454,ecg455,ecg456,ecg457,ecg458,ecg459,ecg460,ecg461,ecg462,ecg463,ecg464,ecg465,ecg466,ecg467,ecg468,ecg469,ecg470,ecg471,ecg472,ecg473,ecg474,ecg475,ecg476,ecg477,ecg478,ecg479,ecg480,ecg481,ecg482,ecg483,ecg484,ecg485,ecg486,ecg487,ecg488,ecg489,ecg490,ecg491,ecg492,ecg493,ecg494,ecg495,ecg496,ecg497,ecg498,ecg499,ecg500,ecg501,ecg502,ecg503,ecg504,ecg505,ecg506,ecg507,ecg508,ecg509,ecg510,ecg511,ecg512,ecg513,ecg514,ecg515,ecg516,ecg517,ecg518,ecg519,ecg520,ecg521,ecg522,ecg523,ecg524,ecg525,ecg526,ecg527,ecg528,ecg529,ecg530,ecg531,ecg532,ecg533,ecg534,ecg535,ecg536,ecg537,ecg538,ecg539,ecg540,ecg541,ecg542,ecg543,ecg544,ecg545,ecg546,ecg547,ecg548,ecg549,ecg550,ecg551,ecg552,ecg553,ecg554,ecg555,ecg556,ecg557,ecg558,ecg559,ecg560,ecg561,ecg562,ecg563,ecg564,ecg565,ecg566,ecg567,ecg568,ecg569,ecg570,ecg571,ecg572,ecg573,ecg574,ecg575,ecg576,ecg577,ecg578,ecg579,ecg580,ecg581,ecg582,ecg583,ecg584,ecg585,ecg586,ecg587,ecg588,ecg589,ecg590,ecg591,ecg592,ecg593,ecg594,ecg595,ecg596,ecg597,ecg598,ecg599,
ecg600,ecg601,ecg602,ecg603,ecg604,ecg605,ecg606,ecg607,ecg608,ecg609,ecg610,ecg611,ecg612,ecg613,ecg614,ecg615,ecg616,ecg617,ecg618,ecg619,ecg620,ecg621,ecg622,ecg623,ecg624,ecg625,ecg626,ecg627,ecg628,ecg629,ecg630,ecg631,ecg632,ecg633,ecg634,ecg635,ecg636,ecg637,ecg638,ecg639,ecg640,ecg641,ecg642,ecg643,ecg644,ecg645,ecg646,ecg647,ecg648,ecg649,ecg650,ecg651,ecg652,ecg653,ecg654,ecg655,ecg656,ecg657,ecg658,ecg659,ecg660,ecg661,ecg662,ecg663,ecg664,ecg665,ecg666,ecg667,ecg668,ecg669,ecg670,ecg671,ecg672,ecg673,ecg674,ecg675,ecg676,ecg677,ecg678,ecg679,ecg680,ecg681,ecg682,ecg683,ecg684,ecg685,ecg686,ecg687,ecg688,ecg689,ecg690,ecg691,ecg692,ecg693,ecg694,ecg695,ecg696,ecg697,ecg698,ecg699,ecg700,ecg701,ecg702,ecg703,ecg704,ecg705,ecg706,ecg707,ecg708,ecg709,ecg710,ecg711,ecg712,ecg713,ecg714,ecg715,ecg716,ecg717,ecg718,ecg719,ecg720,ecg721,ecg722,ecg723,ecg724,ecg725,ecg726,ecg727,ecg728,ecg729,ecg730,ecg731,ecg732,ecg733,ecg734,ecg735,ecg736,ecg737,ecg738,ecg739,ecg740,ecg741,ecg742,ecg743,ecg744,ecg745,ecg746,ecg747,ecg748,ecg749,ecg750,ecg751,ecg752,ecg753,ecg754,ecg755,ecg756,ecg757,ecg758,ecg759,ecg760,ecg761,ecg762,ecg763,ecg764,ecg765,ecg766,ecg767,ecg768,ecg769,ecg770,ecg771,ecg772,ecg773,ecg774,ecg775,ecg776,ecg777,ecg778,ecg779,ecg780,ecg781,ecg782,ecg783,ecg784,ecg785,ecg786,ecg787,ecg788,ecg789,ecg790,ecg791,ecg792,ecg793,ecg794,ecg795,ecg796,ecg797,ecg798,ecg799} = {ecg_signal[0],ecg_signal[1],ecg_signal[2],ecg_signal[3],ecg_signal[4],ecg_signal[5],ecg_signal[6],ecg_signal[7],ecg_signal[8],ecg_signal[9],ecg_signal[10],ecg_signal[11],ecg_signal[12],ecg_signal[13],ecg_signal[14],ecg_signal[15],ecg_signal[16],ecg_signal[17],ecg_signal[18],ecg_signal[19],ecg_signal[20],ecg_signal[21],ecg_signal[22],ecg_signal[23],ecg_signal[24],ecg_signal[25],ecg_signal[26],ecg_signal[27],ecg_signal[28],ecg_signal[29],ecg_signal[30],ecg_signal[31],ecg_signal[32],ecg_signal[33],ecg_signal[34],ecg_signal[35],ecg_signal[36],ecg_signal[37],ecg_signal[38],ecg_signal[39],ecg_signal[40],ecg_signal[41],ecg_signal[42],ecg_signal[43],ecg_signal[44],ecg_signal[45],ecg_signal[46],ecg_signal[47],ecg_signal[48],ecg_signal[49],ecg_signal[50],ecg_signal[51],ecg_signal[52],ecg_signal[53],ecg_signal[54],ecg_signal[55],ecg_signal[56],ecg_signal[57],ecg_signal[58],ecg_signal[59],ecg_signal[60],ecg_signal[61],ecg_signal[62],ecg_signal[63],ecg_signal[64],ecg_signal[65],ecg_signal[66],ecg_signal[67],ecg_signal[68],ecg_signal[69],ecg_signal[70],ecg_signal[71],ecg_signal[72],ecg_signal[73],ecg_signal[74],ecg_signal[75],ecg_signal[76],ecg_signal[77],ecg_signal[78],ecg_signal[79],ecg_signal[80],ecg_signal[81],ecg_signal[82],ecg_signal[83],ecg_signal[84],ecg_signal[85],ecg_signal[86],ecg_signal[87],ecg_signal[88],ecg_signal[89],ecg_signal[90],ecg_signal[91],ecg_signal[92],ecg_signal[93],ecg_signal[94],ecg_signal[95],ecg_signal[96],ecg_signal[97],ecg_signal[98],ecg_signal[99],ecg_signal[100],ecg_signal[101],ecg_signal[102],ecg_signal[103],ecg_signal[104],ecg_signal[105],ecg_signal[106],ecg_signal[107],ecg_signal[108],ecg_signal[109],ecg_signal[110],ecg_signal[111],ecg_signal[112],ecg_signal[113],ecg_signal[114],ecg_signal[115],ecg_signal[116],ecg_signal[117],ecg_signal[118],ecg_signal[119],ecg_signal[120],ecg_signal[121],ecg_signal[122],ecg_signal[123],ecg_signal[124],ecg_signal[125],ecg_signal[126],ecg_signal[127],ecg_signal[128],ecg_signal[129],ecg_signal[130],ecg_signal[131],ecg_signal[132],ecg_signal[133],ecg_signal[134],ecg_signal[135],ecg_signal[136],ecg_signal[137],ecg_signal[138],ecg_signal[139],ecg_signal[140],ecg_signal[141],ecg_signal[142],ecg_signal[143],ecg_signal[144],ecg_signal[145],ecg_signal[146],ecg_signal[147],ecg_signal[148],ecg_signal[149],ecg_signal[150],ecg_signal[151],ecg_signal[152],ecg_signal[153],ecg_signal[154],ecg_signal[155],ecg_signal[156],ecg_signal[157],ecg_signal[158],ecg_signal[159],ecg_signal[160],ecg_signal[161],ecg_signal[162],ecg_signal[163],ecg_signal[164],ecg_signal[165],ecg_signal[166],ecg_signal[167],ecg_signal[168],ecg_signal[169],ecg_signal[170],ecg_signal[171],ecg_signal[172],ecg_signal[173],ecg_signal[174],ecg_signal[175],ecg_signal[176],ecg_signal[177],ecg_signal[178],ecg_signal[179],ecg_signal[180],ecg_signal[181],ecg_signal[182],ecg_signal[183],ecg_signal[184],ecg_signal[185],ecg_signal[186],ecg_signal[187],ecg_signal[188],ecg_signal[189],ecg_signal[190],ecg_signal[191],ecg_signal[192],ecg_signal[193],ecg_signal[194],ecg_signal[195],ecg_signal[196],ecg_signal[197],ecg_signal[198],ecg_signal[199],ecg_signal[200],ecg_signal[201],ecg_signal[202],ecg_signal[203],ecg_signal[204],ecg_signal[205],ecg_signal[206],ecg_signal[207],ecg_signal[208],ecg_signal[209],ecg_signal[210],ecg_signal[211],ecg_signal[212],ecg_signal[213],ecg_signal[214],ecg_signal[215],ecg_signal[216],ecg_signal[217],ecg_signal[218],ecg_signal[219],ecg_signal[220],ecg_signal[221],ecg_signal[222],ecg_signal[223],ecg_signal[224],ecg_signal[225],ecg_signal[226],ecg_signal[227],ecg_signal[228],ecg_signal[229],ecg_signal[230],ecg_signal[231],ecg_signal[232],ecg_signal[233],ecg_signal[234],ecg_signal[235],ecg_signal[236],ecg_signal[237],ecg_signal[238],ecg_signal[239],ecg_signal[240],ecg_signal[241],ecg_signal[242],ecg_signal[243],ecg_signal[244],ecg_signal[245],ecg_signal[246],ecg_signal[247],ecg_signal[248],ecg_signal[249],ecg_signal[250],ecg_signal[251],ecg_signal[252],ecg_signal[253],ecg_signal[254],ecg_signal[255],ecg_signal[256],ecg_signal[257],ecg_signal[258],ecg_signal[259],ecg_signal[260],ecg_signal[261],ecg_signal[262],ecg_signal[263],ecg_signal[264],ecg_signal[265],ecg_signal[266],ecg_signal[267],ecg_signal[268],ecg_signal[269],ecg_signal[270],ecg_signal[271],ecg_signal[272],ecg_signal[273],ecg_signal[274],ecg_signal[275],ecg_signal[276],ecg_signal[277],ecg_signal[278],ecg_signal[279],ecg_signal[280],ecg_signal[281],ecg_signal[282],ecg_signal[283],ecg_signal[284],ecg_signal[285],ecg_signal[286],ecg_signal[287],ecg_signal[288],ecg_signal[289],ecg_signal[290],ecg_signal[291],ecg_signal[292],ecg_signal[293],ecg_signal[294],ecg_signal[295],ecg_signal[296],ecg_signal[297],ecg_signal[298],ecg_signal[299],ecg_signal[300],ecg_signal[301],ecg_signal[302],ecg_signal[303],ecg_signal[304],ecg_signal[305],ecg_signal[306],ecg_signal[307],ecg_signal[308],ecg_signal[309],ecg_signal[310],ecg_signal[311],ecg_signal[312],ecg_signal[313],ecg_signal[314],ecg_signal[315],ecg_signal[316],ecg_signal[317],ecg_signal[318],ecg_signal[319],ecg_signal[320],ecg_signal[321],ecg_signal[322],ecg_signal[323],ecg_signal[324],ecg_signal[325],ecg_signal[326],ecg_signal[327],ecg_signal[328],ecg_signal[329],ecg_signal[330],ecg_signal[331],ecg_signal[332],ecg_signal[333],ecg_signal[334],ecg_signal[335],ecg_signal[336],ecg_signal[337],ecg_signal[338],ecg_signal[339],ecg_signal[340],ecg_signal[341],ecg_signal[342],ecg_signal[343],ecg_signal[344],ecg_signal[345],ecg_signal[346],ecg_signal[347],ecg_signal[348],ecg_signal[349],ecg_signal[350],ecg_signal[351],ecg_signal[352],ecg_signal[353],ecg_signal[354],ecg_signal[355],ecg_signal[356],ecg_signal[357],ecg_signal[358],ecg_signal[359],ecg_signal[360],ecg_signal[361],ecg_signal[362],ecg_signal[363],ecg_signal[364],ecg_signal[365],ecg_signal[366],ecg_signal[367],ecg_signal[368],ecg_signal[369],ecg_signal[370],ecg_signal[371],ecg_signal[372],ecg_signal[373],ecg_signal[374],ecg_signal[375],ecg_signal[376],ecg_signal[377],ecg_signal[378],ecg_signal[379],ecg_signal[380],ecg_signal[381],ecg_signal[382],ecg_signal[383],ecg_signal[384],ecg_signal[385],ecg_signal[386],ecg_signal[387],ecg_signal[388],ecg_signal[389],ecg_signal[390],ecg_signal[391],ecg_signal[392],ecg_signal[393],ecg_signal[394],ecg_signal[395],ecg_signal[396],ecg_signal[397],ecg_signal[398],ecg_signal[399],ecg_signal[400],ecg_signal[401],ecg_signal[402],ecg_signal[403],ecg_signal[404],ecg_signal[405],ecg_signal[406],ecg_signal[407],ecg_signal[408],ecg_signal[409],ecg_signal[410],ecg_signal[411],ecg_signal[412],ecg_signal[413],ecg_signal[414],ecg_signal[415],ecg_signal[416],ecg_signal[417],ecg_signal[418],ecg_signal[419],ecg_signal[420],ecg_signal[421],ecg_signal[422],ecg_signal[423],ecg_signal[424],ecg_signal[425],ecg_signal[426],ecg_signal[427],ecg_signal[428],ecg_signal[429],ecg_signal[430],ecg_signal[431],ecg_signal[432],ecg_signal[433],ecg_signal[434],ecg_signal[435],ecg_signal[436],ecg_signal[437],ecg_signal[438],ecg_signal[439],ecg_signal[440],ecg_signal[441],ecg_signal[442],ecg_signal[443],ecg_signal[444],ecg_signal[445],ecg_signal[446],ecg_signal[447],ecg_signal[448],ecg_signal[449],ecg_signal[450],ecg_signal[451],ecg_signal[452],ecg_signal[453],ecg_signal[454],ecg_signal[455],ecg_signal[456],ecg_signal[457],ecg_signal[458],ecg_signal[459],ecg_signal[460],ecg_signal[461],ecg_signal[462],ecg_signal[463],ecg_signal[464],ecg_signal[465],ecg_signal[466],ecg_signal[467],ecg_signal[468],ecg_signal[469],ecg_signal[470],ecg_signal[471],ecg_signal[472],ecg_signal[473],ecg_signal[474],ecg_signal[475],ecg_signal[476],ecg_signal[477],ecg_signal[478],ecg_signal[479],ecg_signal[480],ecg_signal[481],ecg_signal[482],ecg_signal[483],ecg_signal[484],ecg_signal[485],ecg_signal[486],ecg_signal[487],ecg_signal[488],ecg_signal[489],ecg_signal[490],ecg_signal[491],ecg_signal[492],ecg_signal[493],ecg_signal[494],ecg_signal[495],ecg_signal[496],ecg_signal[497],ecg_signal[498],ecg_signal[499],ecg_signal[500],ecg_signal[501],ecg_signal[502],ecg_signal[503],ecg_signal[504],ecg_signal[505],ecg_signal[506],ecg_signal[507],ecg_signal[508],ecg_signal[509],ecg_signal[510],ecg_signal[511],ecg_signal[512],ecg_signal[513],ecg_signal[514],ecg_signal[515],ecg_signal[516],ecg_signal[517],ecg_signal[518],ecg_signal[519],ecg_signal[520],ecg_signal[521],ecg_signal[522],ecg_signal[523],ecg_signal[524],ecg_signal[525],ecg_signal[526],ecg_signal[527],ecg_signal[528],ecg_signal[529],ecg_signal[530],ecg_signal[531],ecg_signal[532],ecg_signal[533],ecg_signal[534],ecg_signal[535],ecg_signal[536],ecg_signal[537],ecg_signal[538],ecg_signal[539],ecg_signal[540],ecg_signal[541],ecg_signal[542],ecg_signal[543],ecg_signal[544],ecg_signal[545],ecg_signal[546],ecg_signal[547],ecg_signal[548],ecg_signal[549],ecg_signal[550],ecg_signal[551],ecg_signal[552],ecg_signal[553],ecg_signal[554],ecg_signal[555],ecg_signal[556],ecg_signal[557],ecg_signal[558],ecg_signal[559],ecg_signal[560],ecg_signal[561],ecg_signal[562],ecg_signal[563],ecg_signal[564],ecg_signal[565],ecg_signal[566],ecg_signal[567],ecg_signal[568],ecg_signal[569],ecg_signal[570],ecg_signal[571],ecg_signal[572],ecg_signal[573],ecg_signal[574],ecg_signal[575],ecg_signal[576],ecg_signal[577],ecg_signal[578],ecg_signal[579],ecg_signal[580],ecg_signal[581],ecg_signal[582],ecg_signal[583],ecg_signal[584],ecg_signal[585],ecg_signal[586],ecg_signal[587],ecg_signal[588],ecg_signal[589],ecg_signal[590],ecg_signal[591],ecg_signal[592],ecg_signal[593],ecg_signal[594],ecg_signal[595],ecg_signal[596],ecg_signal[597],ecg_signal[598],ecg_signal[599],ecg_signal[600],ecg_signal[601],ecg_signal[602],ecg_signal[603],ecg_signal[604],ecg_signal[605],ecg_signal[606],ecg_signal[607],ecg_signal[608],ecg_signal[609],ecg_signal[610],ecg_signal[611],ecg_signal[612],ecg_signal[613],ecg_signal[614],ecg_signal[615],ecg_signal[616],ecg_signal[617],ecg_signal[618],ecg_signal[619],ecg_signal[620],ecg_signal[621],ecg_signal[622],ecg_signal[623],ecg_signal[624],ecg_signal[625],ecg_signal[626],ecg_signal[627],ecg_signal[628],ecg_signal[629],ecg_signal[630],ecg_signal[631],ecg_signal[632],ecg_signal[633],ecg_signal[634],ecg_signal[635],ecg_signal[636],ecg_signal[637],ecg_signal[638],ecg_signal[639],ecg_signal[640],ecg_signal[641],ecg_signal[642],ecg_signal[643],ecg_signal[644],ecg_signal[645],ecg_signal[646],ecg_signal[647],ecg_signal[648],ecg_signal[649],ecg_signal[650],ecg_signal[651],ecg_signal[652],ecg_signal[653],ecg_signal[654],ecg_signal[655],ecg_signal[656],ecg_signal[657],ecg_signal[658],ecg_signal[659],ecg_signal[660],ecg_signal[661],ecg_signal[662],ecg_signal[663],ecg_signal[664],ecg_signal[665],ecg_signal[666],ecg_signal[667],ecg_signal[668],ecg_signal[669],ecg_signal[670],ecg_signal[671],ecg_signal[672],ecg_signal[673],ecg_signal[674],ecg_signal[675],ecg_signal[676],ecg_signal[677],ecg_signal[678],ecg_signal[679],ecg_signal[680],ecg_signal[681],ecg_signal[682],ecg_signal[683],ecg_signal[684],ecg_signal[685],ecg_signal[686],ecg_signal[687],ecg_signal[688],ecg_signal[689],ecg_signal[690],ecg_signal[691],ecg_signal[692],ecg_signal[693],ecg_signal[694],ecg_signal[695],ecg_signal[696],ecg_signal[697],ecg_signal[698],ecg_signal[699],ecg_signal[700],ecg_signal[701],ecg_signal[702],ecg_signal[703],ecg_signal[704],ecg_signal[705],ecg_signal[706],ecg_signal[707],ecg_signal[708],ecg_signal[709],ecg_signal[710],ecg_signal[711],ecg_signal[712],ecg_signal[713],ecg_signal[714],ecg_signal[715],ecg_signal[716],ecg_signal[717],ecg_signal[718],ecg_signal[719],ecg_signal[720],ecg_signal[721],ecg_signal[722],ecg_signal[723],ecg_signal[724],ecg_signal[725],ecg_signal[726],ecg_signal[727],ecg_signal[728],ecg_signal[729],ecg_signal[730],ecg_signal[731],ecg_signal[732],ecg_signal[733],ecg_signal[734],ecg_signal[735],ecg_signal[736],ecg_signal[737],ecg_signal[738],ecg_signal[739],ecg_signal[740],ecg_signal[741],ecg_signal[742],ecg_signal[743],ecg_signal[744],ecg_signal[745],ecg_signal[746],ecg_signal[747],ecg_signal[748],ecg_signal[749],ecg_signal[750],ecg_signal[751],ecg_signal[752],ecg_signal[753],ecg_signal[754],ecg_signal[755],ecg_signal[756],ecg_signal[757],ecg_signal[758],ecg_signal[759],ecg_signal[760],ecg_signal[761],ecg_signal[762],ecg_signal[763],ecg_signal[764],ecg_signal[765],ecg_signal[766],ecg_signal[767],ecg_signal[768],ecg_signal[769],ecg_signal[770],ecg_signal[771],ecg_signal[772],ecg_signal[773],ecg_signal[774],ecg_signal[775],ecg_signal[776],ecg_signal[777],ecg_signal[778],ecg_signal[779],ecg_signal[780],ecg_signal[781],ecg_signal[782],ecg_signal[783],ecg_signal[784],ecg_signal[785],ecg_signal[786],ecg_signal[787],ecg_signal[788],ecg_signal[789],ecg_signal[790],ecg_signal[791],ecg_signal[792],ecg_signal[793],ecg_signal[794],ecg_signal[795],ecg_signal[796],ecg_signal[797],ecg_signal[798],ecg_signal[799]};


endmodule

