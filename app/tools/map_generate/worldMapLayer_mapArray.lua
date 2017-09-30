local worldMapLayer_mapArray = {}
setmetatable(worldMapLayer_mapArray,{__index = _G})
setfenv(1,worldMapLayer_mapArray)
map = {
	[1] = { 38,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,37,36, },
	[2] = { 34,6,1,2,5,3,5,7,5,7,3,7,6,5,7,1,3,2,1,2,4,1,7,8,2,5,6,8,5,8,3,4,7,6,1,5,2,5,7,9,6,2,1,9,8,5,6,3,8,2,1,2,3,8,2,9,3,6,3,2,8,2,8,1,7,5,2,1,6,8,6,1,7,6,9,6,2,7,2,7,2,7,8,5,6,7,8,3,4,2,3,8,9,3,9,2,7,6,7,4,7,4,35, },
	[3] = { 34,4,9,7,4,2,6,4,2,9,1,2,9,4,8,6,8,7,3,9,3,5,3,4,9,4,7,1,3,6,9,6,2,5,2,4,9,3,1,2,8,9,5,6,7,3,9,4,7,6,9,6,1,5,7,5,4,5,7,1,7,5,7,5,2,6,8,5,9,2,5,4,5,1,7,3,5,6,8,3,5,6,1,9,8,4,5,1,5,1,4,6,7,1,6,5,8,5,1,5,8,6,35, },
	[4] = { 34,2,3,1,5,8,7,8,6,4,5,7,5,7,9,1,3,6,4,1,4,8,1,6,3,5,2,8,4,5,8,4,8,7,1,8,6,7,4,5,7,2,4,1,2,6,1,3,8,4,3,8,7,3,9,8,7,8,2,8,6,2,1,8,3,4,2,6,1,6,1,9,2,9,4,1,8,7,4,6,4,3,5,2,5,1,2,4,9,2,3,2,3,4,9,1,9,3,9,4,1,5,35, },
	[5] = { 34,6,4,2,3,9,1,5,3,8,3,9,1,4,5,4,2,1,2,7,5,9,4,5,1,6,3,5,2,3,9,6,2,5,3,5,3,8,2,1,3,8,5,8,4,9,7,6,7,1,6,2,4,5,7,6,9,5,3,1,4,5,4,6,2,9,1,7,5,2,4,6,1,3,8,9,4,5,3,8,9,8,7,9,8,7,6,7,8,7,9,4,9,6,5,2,6,4,6,3,6,3,35, },
	[6] = { 34,8,9,5,4,6,3,8,2,4,6,8,5,6,7,8,3,6,8,1,4,8,6,7,3,9,2,8,7,4,7,1,8,1,7,6,7,1,9,7,5,4,2,3,5,1,3,5,3,8,9,8,3,9,4,8,3,7,6,2,6,9,2,5,8,3,5,8,6,3,9,3,7,9,2,1,3,9,2,4,3,2,6,1,6,3,2,1,9,3,1,2,1,7,8,1,5,7,8,1,9,1,35, },
	[7] = { 34,4,1,8,7,8,5,6,1,3,7,1,7,9,3,1,9,5,2,6,2,9,3,8,4,1,6,4,2,1,2,9,7,2,3,8,2,8,3,6,9,7,1,9,2,8,7,8,9,5,6,7,4,8,5,6,2,5,4,8,1,8,7,1,6,1,4,7,5,1,8,4,1,3,4,6,8,6,1,8,6,4,3,7,2,7,6,5,6,5,7,8,4,5,4,2,3,4,9,6,8,5,35, },
	[8] = { 34,9,2,3,9,3,9,4,8,6,8,6,4,8,7,4,6,7,3,1,8,7,2,6,9,3,8,3,6,3,8,3,1,9,6,4,7,6,2,4,5,8,5,8,3,5,2,3,4,7,1,5,9,2,7,1,4,7,2,5,2,5,3,8,3,2,6,8,4,7,9,7,8,2,7,9,1,3,4,5,9,1,6,4,8,4,8,3,9,2,9,2,6,8,9,6,7,6,3,5,3,2,35, },
	[9] = { 34,8,4,6,2,5,7,1,5,4,5,1,9,6,3,2,9,1,6,5,6,9,3,4,8,6,7,1,7,1,4,5,7,4,8,5,1,9,8,7,9,4,1,7,9,8,7,1,8,5,8,7,3,4,6,2,5,9,3,6,7,6,4,7,9,8,5,3,5,3,4,6,3,1,5,8,4,9,8,7,6,5,8,2,6,7,6,1,7,5,1,4,9,2,7,1,9,2,4,2,8,1,35, },
	[10] = { 34,7,9,7,8,6,2,6,3,7,8,4,5,7,4,5,3,5,7,1,8,5,6,2,1,9,3,6,9,8,6,1,6,2,6,2,8,5,3,6,1,2,8,3,4,3,9,3,2,9,1,9,8,1,5,9,1,6,5,2,5,2,3,1,2,7,9,7,6,8,5,2,8,9,4,6,7,3,5,4,9,3,6,7,1,8,3,9,2,9,6,2,7,8,6,2,8,3,9,1,5,3,35, },
	[11] = { 34,8,2,5,2,1,4,5,8,4,6,1,6,1,8,6,1,4,8,5,3,7,1,8,6,5,2,4,1,5,9,3,5,3,9,5,4,6,1,8,5,6,7,9,8,1,8,6,5,3,5,3,2,3,6,3,8,3,4,3,4,8,7,9,6,3,2,5,4,9,7,1,4,1,8,1,5,6,2,6,5,4,5,4,5,2,4,5,8,7,1,9,1,3,5,1,4,1,5,2,8,4,35, },
	[12] = { 34,3,4,7,3,6,8,7,1,5,9,8,7,9,4,2,5,6,9,1,2,6,9,2,4,1,8,3,8,7,8,6,8,1,6,3,1,7,9,7,3,1,5,1,2,5,3,4,7,6,1,8,4,5,2,7,4,9,6,2,7,3,6,2,4,5,6,3,8,6,4,9,7,5,7,9,4,7,1,4,9,2,8,9,1,6,7,1,6,3,8,3,4,7,9,3,6,3,7,9,5,1,35, },
	[13] = { 34,7,8,2,8,1,4,5,2,7,1,5,3,1,6,3,4,7,4,7,9,3,4,1,5,7,5,1,9,4,3,4,7,5,4,8,2,5,3,6,9,7,9,3,8,1,7,8,9,4,2,3,9,8,6,9,3,5,3,4,9,8,7,9,8,7,2,1,9,3,7,5,3,8,2,6,5,2,9,7,5,3,5,4,7,9,5,3,4,7,2,6,9,3,5,8,5,8,5,3,6,3,35, },
	[14] = { 34,6,1,6,5,2,9,6,1,4,9,8,6,9,8,9,1,3,1,3,6,5,2,8,6,4,9,4,2,6,1,9,6,2,1,9,6,9,1,2,4,3,5,6,4,9,2,5,6,5,8,7,2,4,3,8,4,7,1,5,1,6,1,4,3,6,4,3,2,8,2,8,2,7,4,3,9,4,3,4,8,2,8,6,5,4,6,1,6,9,1,4,7,6,4,2,9,2,9,7,5,8,35, },
	[15] = { 34,5,2,8,7,3,5,2,9,7,6,3,2,7,4,6,5,2,4,7,9,1,6,7,5,3,7,8,3,5,7,5,7,4,5,3,7,4,7,3,1,7,1,9,3,1,4,7,3,4,3,4,9,6,7,1,6,8,9,8,9,4,3,8,9,1,7,5,4,3,5,1,3,1,5,6,5,8,5,2,3,1,7,9,3,7,9,5,2,8,6,9,2,3,5,3,5,1,4,8,1,4,35, },
	[16] = { 34,4,9,3,1,9,4,6,1,8,1,8,1,8,9,2,3,6,3,8,4,8,4,3,9,4,2,1,4,9,4,8,6,9,1,2,9,5,8,4,5,3,4,6,4,2,6,8,9,5,8,7,8,1,5,3,2,1,6,2,3,2,9,6,7,4,8,3,7,1,9,2,4,2,9,2,4,1,4,7,8,4,3,8,5,6,8,4,6,1,5,3,1,4,2,6,9,7,9,5,2,3,35, },
	[17] = { 34,2,5,6,4,3,5,9,5,7,5,4,3,6,7,8,7,2,7,5,9,6,5,6,5,1,6,3,6,8,3,9,7,2,7,8,4,6,9,7,6,2,8,9,7,1,4,7,3,6,4,3,9,4,8,1,7,9,4,5,6,4,5,4,3,9,7,6,9,3,5,6,7,3,6,7,8,6,9,2,6,9,7,1,2,7,1,3,8,2,9,2,8,3,1,4,3,8,2,8,7,6,35, },
	[18] = { 34,6,4,1,8,7,1,3,2,9,6,9,1,8,2,5,6,8,1,3,4,7,1,7,9,4,2,1,9,1,6,2,6,1,4,3,7,3,8,5,1,3,6,1,8,6,3,1,4,5,9,1,6,7,2,4,8,2,7,2,3,9,1,6,5,4,2,5,1,6,4,9,4,1,4,1,5,4,7,1,8,4,2,6,3,4,6,7,6,1,6,5,4,7,2,5,9,5,7,9,4,1,35, },
	[19] = { 34,8,2,6,5,3,5,4,1,4,3,7,4,5,1,7,3,9,2,7,5,3,5,6,8,6,3,8,2,5,8,9,3,9,8,2,6,5,7,6,2,7,9,5,3,5,7,8,3,8,4,2,4,8,3,1,9,1,8,5,8,4,8,7,9,7,6,4,2,9,1,2,5,3,8,3,7,6,2,4,3,7,9,7,1,9,1,3,2,7,4,3,8,3,8,4,3,1,6,5,8,3,35, },
	[20] = { 34,7,5,7,4,2,1,7,5,6,1,8,6,3,4,8,4,8,3,1,6,7,1,9,2,4,5,6,9,3,4,7,6,7,5,1,9,3,9,5,4,6,8,2,7,2,9,2,1,6,5,8,3,5,6,5,8,3,2,1,9,7,5,4,2,8,1,3,1,4,5,4,8,9,5,6,1,3,8,9,6,4,2,5,8,6,8,4,1,9,2,9,1,7,1,2,7,5,3,2,6,2,35, },
	[21] = { 34,4,1,6,1,9,8,4,2,9,2,5,1,5,1,5,2,9,7,5,9,2,6,7,8,3,2,7,2,5,2,8,2,3,4,6,2,7,2,6,9,2,7,3,1,4,7,5,3,7,2,4,6,4,7,3,9,6,5,4,2,6,3,9,5,9,7,4,2,6,7,3,6,3,7,4,9,5,1,4,1,3,9,7,1,9,3,5,2,3,7,3,4,6,3,5,8,9,7,4,3,1,35, },
	[22] = { 34,8,9,8,5,7,5,7,3,1,8,6,7,4,2,7,6,4,3,1,6,5,9,5,4,5,9,6,4,3,9,5,4,7,9,5,1,6,1,4,7,3,6,9,7,2,8,6,9,8,3,9,7,2,5,4,7,1,3,8,5,7,4,2,1,8,1,5,8,3,2,4,8,1,2,6,2,6,2,6,7,8,5,4,3,6,4,1,7,8,9,2,7,5,7,4,2,6,3,5,7,2,35, },
	[23] = { 34,2,4,1,2,8,9,1,6,5,9,2,5,8,9,8,9,8,9,5,9,1,6,8,1,2,7,1,9,1,7,1,6,3,6,8,7,2,3,2,8,2,5,4,6,4,5,7,2,7,4,2,6,4,1,6,5,4,7,4,3,2,3,7,9,2,7,2,4,9,5,3,9,3,7,5,7,8,5,1,5,4,1,2,8,5,3,2,3,4,3,6,4,2,9,6,1,5,1,6,8,6,35, },
	[24] = { 34,9,5,3,7,5,3,7,4,8,1,6,3,6,4,5,1,4,1,6,7,3,9,2,6,8,5,3,2,8,5,4,7,2,4,9,3,9,8,7,5,1,9,3,2,8,2,8,1,8,3,8,9,8,3,4,8,2,3,9,7,6,1,4,5,4,3,6,1,7,8,4,6,1,9,2,3,2,9,8,3,8,6,9,4,1,4,5,6,9,2,1,8,7,3,4,3,8,2,4,2,7,35, },
	[25] = { 34,1,4,2,4,2,9,5,2,9,3,9,4,8,3,9,7,5,2,3,2,5,8,3,7,2,9,8,6,1,2,3,8,9,6,7,4,5,1,3,8,2,4,5,7,3,7,9,7,9,2,5,3,1,5,6,3,5,4,8,1,2,3,2,6,9,8,2,4,5,6,1,2,4,6,4,5,6,5,2,7,4,7,3,8,9,3,9,8,4,8,3,4,2,9,6,1,4,1,3,1,4,35, },
	[26] = { 34,2,9,7,8,6,1,7,8,7,6,8,7,5,2,1,6,8,4,9,1,4,1,5,1,6,1,5,2,7,6,7,4,1,5,1,8,7,8,4,9,7,8,6,2,8,4,3,6,3,7,8,6,8,4,1,2,9,2,9,3,5,4,1,4,7,1,9,7,2,8,4,8,9,5,8,1,2,4,9,1,6,2,5,6,5,8,6,1,3,2,9,7,1,3,2,8,2,9,6,7,3,35, },
	[27] = { 34,1,6,1,4,2,3,6,1,9,3,2,3,1,8,4,5,7,1,2,3,9,7,4,2,7,8,4,6,1,2,1,3,9,2,6,4,5,6,7,5,3,9,3,7,6,7,8,2,8,4,2,3,9,7,6,8,5,7,6,8,7,9,5,2,8,5,2,5,1,7,9,3,4,6,7,4,5,3,2,8,9,3,1,8,9,3,7,2,6,4,6,5,8,6,4,3,7,4,1,5,6,35, },
	[28] = { 34,4,3,2,3,5,8,2,4,5,1,8,7,4,2,9,8,6,5,6,8,1,3,5,6,5,6,9,8,9,6,4,7,1,7,1,3,8,3,8,9,8,7,2,5,4,1,6,4,1,5,1,5,8,4,2,7,1,4,5,4,1,4,3,9,7,6,1,8,3,6,5,6,1,3,2,6,8,9,5,6,4,2,7,3,6,2,9,3,9,7,3,9,1,2,1,5,1,2,6,8,9,35, },
	[29] = { 34,7,6,8,1,7,9,6,7,8,9,2,1,5,6,5,4,7,2,4,3,5,9,2,4,8,4,1,7,2,7,9,6,8,5,4,7,5,1,6,5,2,1,4,6,8,7,8,2,8,4,7,3,9,6,9,8,5,2,3,6,3,9,1,2,5,2,9,5,4,9,2,4,8,6,4,5,1,4,8,1,5,3,5,8,9,7,4,8,4,2,8,6,5,7,3,7,8,5,4,7,3,35, },
	[30] = { 34,4,2,7,9,4,1,2,9,5,6,5,9,2,3,9,6,1,5,7,6,2,7,3,9,7,6,5,6,5,8,2,4,1,2,9,2,8,3,2,1,4,7,2,5,2,3,1,5,3,2,1,4,8,5,7,1,7,4,5,7,5,6,5,8,3,4,3,6,2,7,1,6,1,3,7,9,8,9,5,4,6,1,4,3,4,8,9,1,7,6,3,7,4,8,1,6,4,9,8,9,2,35, },
	[31] = { 34,6,3,1,8,7,3,4,3,1,9,7,4,8,6,5,8,9,4,8,4,5,9,4,8,2,1,2,8,9,3,5,6,9,3,6,3,7,6,8,3,5,1,8,4,8,4,8,7,4,8,9,7,6,2,4,6,3,6,9,1,8,3,4,2,6,7,8,7,4,9,2,9,7,6,5,3,4,6,3,1,5,7,6,2,6,2,3,5,2,8,5,9,2,5,2,7,3,5,6,5,8,35, },
	[32] = { 34,2,9,6,2,1,8,9,6,7,4,5,1,5,2,1,7,5,7,5,2,8,3,5,6,4,8,9,5,1,6,8,3,2,4,9,2,4,3,1,6,4,7,3,2,9,5,3,9,1,7,5,8,5,9,1,7,8,4,5,6,9,7,9,5,9,1,6,1,8,3,8,3,1,4,2,7,8,1,8,6,9,2,3,8,7,1,8,9,3,9,7,1,3,1,4,8,9,7,3,4,1,35, },
	[33] = { 34,4,5,3,7,6,7,2,4,1,2,6,4,8,4,8,2,9,1,8,7,9,2,4,7,1,3,2,7,9,4,9,7,5,7,6,5,6,8,7,3,5,6,8,5,1,2,4,6,3,6,9,4,2,7,4,3,9,3,2,4,8,1,8,7,4,5,7,2,9,7,6,4,7,9,1,9,3,7,5,2,1,6,9,2,3,4,3,5,7,1,5,8,9,8,3,5,3,4,9,5,2,35, },
	[34] = { 34,8,2,8,2,1,3,9,5,3,9,8,5,7,3,9,1,3,4,3,6,5,8,9,2,8,6,4,8,2,7,5,4,3,8,9,8,7,9,2,9,1,9,3,7,9,5,8,5,7,8,1,5,1,6,8,6,1,8,9,1,6,2,9,1,3,1,8,5,6,8,9,3,6,3,8,5,6,1,3,9,3,5,8,4,9,7,2,1,4,3,7,6,4,5,4,6,8,1,8,6,4,35, },
	[35] = { 34,4,9,5,6,5,2,1,8,1,7,4,9,1,8,2,6,5,8,2,1,4,6,5,7,4,3,5,1,9,8,2,6,2,7,4,6,3,6,7,5,2,4,6,5,1,3,9,2,4,2,7,8,3,9,3,9,2,7,5,8,7,4,7,6,2,9,3,9,2,1,4,2,4,2,4,1,3,5,4,8,2,9,6,1,8,1,8,5,7,1,5,2,8,2,7,9,5,7,2,3,1,35, },
	[36] = { 34,2,6,8,1,9,4,5,9,5,3,2,5,4,9,5,4,7,1,6,5,9,1,3,1,2,8,4,3,5,1,9,7,9,1,5,9,8,9,3,1,3,7,3,7,9,2,5,7,3,6,5,9,1,2,6,7,1,9,4,3,6,2,8,1,4,7,1,4,3,6,7,8,5,3,9,8,6,7,1,7,1,7,3,2,7,6,7,6,3,4,6,9,4,9,1,8,3,4,6,7,8,35, },
	[37] = { 34,9,5,4,6,8,1,8,6,8,7,8,1,3,2,7,9,6,2,4,2,7,8,7,6,4,7,2,1,6,3,6,8,5,4,8,7,1,2,5,7,4,9,8,2,4,6,4,1,5,7,8,3,6,5,1,5,4,8,6,5,7,3,7,3,5,8,9,7,1,8,1,4,7,2,5,2,9,3,5,6,3,6,9,4,9,2,1,8,2,1,5,3,7,2,4,9,5,2,8,2,5,35, },
	[38] = { 34,6,3,8,2,7,3,7,4,3,6,3,4,5,8,6,5,3,9,7,5,4,2,5,8,2,9,4,3,8,1,5,1,3,9,6,3,4,8,9,3,2,6,5,6,1,5,2,7,2,4,1,7,4,8,4,8,7,1,4,1,9,5,9,1,2,3,1,4,5,4,9,3,1,6,1,8,1,2,1,8,9,5,8,2,8,5,7,5,4,9,2,4,5,6,8,3,7,9,3,1,8,35, },
	[39] = { 34,5,7,5,3,6,2,1,5,7,1,5,2,6,7,4,9,6,8,3,9,6,1,7,4,7,1,7,1,7,2,7,2,7,4,7,8,9,6,5,1,4,7,4,2,8,6,3,1,3,7,9,6,2,9,1,5,9,2,6,7,8,2,8,5,9,6,2,7,6,7,5,4,2,4,3,9,3,8,7,5,7,2,9,4,1,6,8,1,2,3,6,8,9,7,2,5,6,2,4,7,9,35, },
	[40] = { 34,9,2,1,8,5,7,6,9,6,3,9,3,8,5,3,8,5,4,7,8,2,8,6,2,9,4,3,5,4,3,4,6,9,5,1,5,7,4,2,3,6,8,9,7,9,7,4,9,4,5,3,7,4,6,2,4,7,1,3,9,4,3,7,4,1,7,3,9,5,4,2,8,3,6,5,8,7,4,9,8,9,6,5,3,2,9,3,9,5,1,7,1,5,1,8,3,8,1,5,3,8,35, },
	[41] = { 34,4,8,5,6,2,9,5,2,8,2,7,6,4,9,7,1,9,2,3,6,3,5,4,1,8,1,9,8,9,7,9,3,4,7,6,9,3,8,6,1,2,7,3,2,6,5,6,8,2,7,6,1,5,9,8,9,8,4,5,1,7,9,8,9,2,5,4,2,3,8,1,4,7,2,4,1,6,3,2,4,5,7,4,9,1,7,2,6,7,6,8,4,9,6,5,9,7,2,6,7,9,35, },
	[42] = { 34,5,7,9,4,7,4,1,7,5,6,8,3,2,8,4,5,3,6,5,2,4,7,3,2,9,7,5,1,5,6,8,5,8,9,4,5,4,7,9,8,3,9,1,5,4,1,7,1,4,5,4,2,6,2,6,3,2,9,7,6,2,1,3,4,8,1,9,5,6,4,7,5,9,6,7,3,7,4,5,8,2,9,3,6,4,9,4,9,3,1,7,1,7,2,3,6,1,9,3,8,2,35, },
	[43] = { 34,9,2,8,3,6,8,3,9,4,2,7,5,7,5,1,6,4,1,8,7,9,5,1,6,8,2,3,9,2,1,3,2,1,7,2,3,9,3,5,2,7,6,7,6,3,6,2,8,7,2,9,8,5,8,5,8,4,3,4,3,4,9,6,7,3,2,4,3,7,2,3,6,4,8,1,6,5,2,1,7,1,4,5,1,8,1,5,1,8,2,6,4,6,1,7,4,8,4,1,7,4,35, },
	[44] = { 34,3,4,5,1,4,1,2,8,6,5,9,8,4,8,7,8,5,9,4,3,4,7,2,9,5,1,7,4,3,5,6,5,8,3,8,5,7,6,4,9,1,2,1,5,1,9,5,4,5,3,6,1,2,6,3,6,7,5,6,8,5,1,8,2,5,7,8,6,5,4,1,9,7,2,5,3,9,3,5,8,6,7,6,9,6,3,2,9,3,7,3,5,3,4,5,9,3,9,6,5,9,35, },
	[45] = { 34,2,6,9,2,5,9,4,9,4,2,1,7,1,2,5,2,4,8,2,6,9,3,6,1,3,6,9,6,7,4,2,9,4,5,6,9,2,5,7,3,8,9,8,9,2,4,1,2,8,1,2,9,4,1,7,8,4,8,2,4,7,2,4,7,6,4,3,7,8,7,8,4,1,8,6,8,7,2,4,2,5,8,1,3,1,7,1,8,6,4,1,6,8,1,6,4,7,1,3,4,3,35, },
	[46] = { 34,5,4,5,4,3,2,8,7,5,9,6,9,8,3,4,3,1,7,1,8,2,4,8,9,8,7,2,4,2,8,3,8,1,9,1,7,3,8,4,2,7,3,2,1,3,8,7,3,7,9,5,7,5,6,3,5,2,3,6,1,8,9,6,1,3,9,1,9,4,6,1,6,7,2,5,4,3,1,9,1,4,9,4,8,4,8,6,2,3,5,9,2,7,3,8,5,3,5,8,7,9,35, },
	[47] = { 34,9,6,1,8,9,6,5,9,3,8,3,2,5,2,5,7,6,5,2,4,9,5,7,5,6,1,6,8,5,7,4,5,7,5,3,4,5,7,5,8,5,1,6,5,6,2,1,5,6,3,8,4,8,7,1,4,7,5,4,2,6,1,7,5,2,5,7,6,8,9,4,9,1,3,6,1,7,2,3,8,2,1,2,5,3,7,1,8,4,8,1,5,8,6,1,7,4,7,1,2,1,35, },
	[48] = { 34,3,7,2,5,4,7,1,8,7,9,7,9,7,3,1,4,9,4,9,1,2,8,9,3,8,3,2,1,3,6,8,2,3,4,6,9,3,9,6,4,9,4,2,9,3,8,4,3,9,7,5,3,6,4,2,8,2,6,7,3,5,8,3,6,4,3,1,4,5,3,7,5,4,9,2,5,4,1,6,9,6,3,7,9,6,8,3,7,9,6,7,2,7,4,3,6,8,5,3,4,6,35, },
	[49] = { 34,8,1,6,8,6,3,4,6,2,3,4,2,5,6,7,6,8,5,8,5,6,5,2,7,4,9,6,5,8,4,9,7,6,8,3,8,7,2,1,8,6,7,8,4,7,1,5,1,8,3,6,4,7,9,1,3,1,5,1,2,9,1,7,9,1,6,7,6,7,6,1,9,1,8,3,7,9,3,8,2,8,5,2,8,3,1,2,4,1,3,1,8,1,9,2,7,1,4,8,9,7,35, },
	[50] = { 34,3,9,3,2,4,5,1,7,4,8,6,8,3,9,8,2,4,2,9,2,1,8,3,6,2,5,3,1,3,5,8,1,4,9,6,5,4,6,7,3,4,2,5,6,2,8,6,3,9,4,1,5,8,6,2,9,2,6,8,6,4,2,3,2,5,4,5,4,8,2,3,4,3,7,2,1,2,6,4,9,1,4,7,5,9,7,3,7,8,2,9,7,4,3,6,8,2,7,1,3,6,35, },
	[51] = { 34,8,7,8,9,6,7,9,5,3,9,5,4,2,1,3,6,1,3,4,7,3,4,1,7,3,7,2,6,2,1,9,2,5,3,4,2,8,2,4,5,1,9,4,3,5,4,9,5,8,21,24,27,3,5,3,1,8,3,7,9,3,1,4,7,1,6,7,2,9,6,8,5,8,9,8,7,3,5,2,5,7,3,8,6,1,4,8,2,9,7,5,2,9,2,7,3,1,5,8,5,7,35, },
	[52] = { 34,5,9,1,5,4,5,1,6,2,6,7,3,8,4,8,9,8,2,1,6,9,7,3,5,8,1,5,1,3,4,3,8,1,9,6,3,9,6,9,6,8,7,1,2,7,6,3,1,6,25,19,23,6,8,2,5,7,9,2,6,8,5,2,5,8,2,4,1,4,3,4,1,4,5,1,5,9,4,9,3,2,5,7,4,9,5,1,6,4,2,6,3,1,3,6,9,2,3,4,6,8,35, },
	[53] = { 34,6,2,7,9,1,2,3,7,5,3,2,4,5,2,1,3,5,4,3,7,1,4,9,4,6,2,4,6,8,5,1,9,2,3,8,2,5,1,7,5,4,3,6,9,3,2,7,9,2,20,22,26,5,4,6,1,6,1,8,1,2,3,6,1,7,3,5,3,7,2,5,7,8,6,8,6,3,1,2,8,6,3,1,2,8,6,4,7,1,9,7,5,8,9,5,4,7,6,9,5,2,35, },
	[54] = { 34,4,5,8,6,7,4,8,4,1,8,1,8,7,9,6,8,9,7,8,4,9,8,7,3,5,3,7,5,3,6,4,5,6,4,7,9,3,6,2,1,8,7,4,1,5,4,6,8,6,7,4,6,7,8,7,8,9,5,2,4,9,8,5,4,5,9,1,9,4,1,6,1,9,5,9,4,5,4,3,1,7,4,7,9,3,5,2,8,4,5,2,3,6,3,6,3,2,8,4,6,3,35, },
	[55] = { 34,9,3,9,1,5,9,6,5,2,7,2,6,3,2,3,5,3,1,2,6,1,5,6,4,1,4,6,2,8,5,1,7,8,9,3,2,5,1,3,4,2,6,5,9,3,2,3,9,5,1,2,5,1,9,4,1,6,4,3,6,7,3,6,9,7,4,5,8,2,3,2,8,4,3,2,3,7,2,7,9,8,6,3,1,8,9,7,1,9,1,7,1,7,4,7,4,6,3,1,5,1,35, },
	[56] = { 34,2,6,5,3,7,8,2,9,4,1,3,5,8,5,9,7,4,6,7,8,2,7,2,9,7,3,8,9,3,7,8,3,6,5,1,4,7,2,9,8,1,3,2,1,6,8,5,8,3,6,4,7,6,8,3,2,8,1,7,4,1,5,7,8,6,3,9,1,9,6,4,3,9,8,7,4,9,6,8,4,5,4,5,9,7,1,4,8,5,2,4,5,6,9,2,3,9,2,4,9,6,35, },
	[57] = { 34,9,8,2,8,6,4,1,8,7,8,9,1,9,3,4,3,5,3,2,6,9,4,5,1,8,1,4,6,1,6,1,7,8,2,7,9,3,1,6,3,5,6,7,4,3,9,3,6,7,8,2,1,3,2,1,7,3,5,9,3,2,6,2,5,9,1,7,8,4,2,1,6,2,1,5,3,1,2,9,6,3,7,2,1,8,6,2,6,7,9,7,9,4,8,7,6,8,3,7,3,1,35, },
	[58] = { 34,7,3,6,1,7,8,6,4,6,2,7,5,2,5,8,9,6,9,8,5,1,7,6,7,9,3,9,2,3,2,8,2,6,9,5,8,5,7,5,9,4,2,1,2,1,4,8,2,3,4,5,7,6,4,6,5,6,4,6,7,9,8,9,8,6,5,3,1,5,8,3,9,5,6,8,2,8,3,7,2,8,5,8,6,5,9,5,1,3,2,5,6,1,2,5,4,5,6,4,8,5,35, },
	[59] = { 34,5,1,7,9,2,1,2,8,9,1,8,1,3,6,4,1,3,5,1,4,2,9,8,2,5,8,1,4,1,5,3,5,7,4,6,1,3,6,3,1,8,9,8,6,3,9,3,6,8,1,6,4,2,9,1,9,3,9,8,3,2,6,3,4,1,2,7,9,4,9,1,2,3,9,4,3,1,2,6,5,1,4,3,9,3,1,6,8,5,1,8,4,9,3,9,7,2,9,7,6,4,35, },
	[60] = { 34,2,6,5,1,4,8,6,4,5,4,3,9,2,9,2,8,6,9,8,7,1,6,3,1,7,6,2,5,6,8,9,8,3,8,9,5,2,7,5,9,2,5,7,2,7,4,5,2,3,2,7,8,1,3,7,8,1,6,2,1,7,1,7,8,5,3,8,6,2,5,7,8,1,8,5,9,5,4,9,4,6,9,8,1,5,2,3,7,6,4,3,5,8,2,8,4,6,4,8,3,8,35, },
	[61] = { 34,1,3,2,7,5,7,5,7,9,7,2,1,4,8,5,7,1,2,3,5,2,7,4,5,8,5,7,8,7,5,4,6,7,4,3,6,4,3,4,6,7,6,3,4,9,1,9,6,9,4,5,3,5,4,5,9,5,9,8,5,3,5,2,6,7,6,5,4,1,4,9,3,5,2,6,1,8,3,2,3,2,4,3,6,9,8,4,8,2,1,7,1,7,5,3,5,2,7,9,2,5,35, },
	[62] = { 34,6,8,5,6,2,9,1,8,3,6,4,9,2,3,6,8,9,7,8,1,8,3,1,2,6,4,2,9,3,8,9,3,9,2,8,2,1,9,2,8,9,5,7,2,5,2,3,4,5,8,7,2,6,2,8,6,8,4,2,4,8,6,7,5,2,9,1,6,2,3,6,1,9,4,8,3,4,6,5,7,6,5,9,5,1,7,1,5,7,9,2,5,2,6,1,7,9,1,3,6,4,35, },
	[63] = { 34,7,3,2,3,4,3,5,2,4,7,2,3,4,8,9,1,3,2,6,4,2,9,8,9,7,9,6,5,7,1,7,4,5,6,4,7,3,6,4,5,3,8,3,9,7,9,5,2,6,4,1,8,1,5,3,7,2,6,1,5,3,1,2,4,3,4,7,3,9,7,2,4,8,7,9,6,9,3,8,4,2,7,3,7,8,6,4,3,8,3,4,3,9,5,8,4,5,2,8,7,5,35, },
	[64] = { 34,5,9,5,9,5,2,7,8,9,6,8,9,7,1,7,8,5,7,1,9,7,1,5,1,4,5,4,2,3,4,3,9,7,2,9,2,4,1,9,1,7,4,2,8,6,4,1,7,9,3,2,6,2,6,2,8,5,3,8,6,9,4,9,6,9,1,5,2,5,6,5,7,6,4,5,8,4,1,6,7,5,4,5,9,3,5,8,7,4,1,6,1,6,1,7,1,9,7,9,4,1,35, },
	[65] = { 34,2,6,4,2,3,1,5,3,4,7,3,1,6,5,2,4,2,3,8,6,8,2,7,8,7,8,1,5,1,7,1,4,1,6,8,5,9,7,4,3,6,8,3,9,2,7,2,3,4,5,4,7,3,7,1,6,7,9,1,2,5,6,3,2,8,6,7,4,8,9,8,3,8,3,1,9,6,8,5,1,8,9,8,6,7,9,1,3,2,8,9,4,8,4,3,6,3,1,5,8,2,35, },
	[66] = { 34,1,5,8,9,5,7,9,8,5,9,2,7,2,8,9,8,5,9,2,9,1,5,3,6,5,6,9,4,2,5,3,5,3,7,2,1,4,5,2,9,7,1,6,5,3,4,9,1,8,1,8,5,2,4,3,9,3,6,5,4,3,7,1,7,3,4,3,2,1,5,1,9,7,2,8,5,7,4,6,2,4,1,4,3,4,6,8,5,7,1,5,7,6,9,1,4,2,6,9,6,4,35, },
	[67] = { 34,3,7,2,3,4,8,2,7,6,3,4,5,6,7,6,2,3,1,5,6,3,7,8,9,3,7,8,3,7,6,8,6,4,9,5,3,6,3,1,4,8,2,4,1,8,6,2,5,6,9,7,3,7,8,2,4,1,2,3,7,6,8,2,5,2,5,6,5,6,9,7,2,8,9,4,6,8,2,7,8,7,2,7,2,7,1,3,2,3,2,9,2,4,7,3,6,3,8,4,7,5,35, },
	[68] = { 34,6,5,9,5,1,7,3,8,5,7,6,8,2,9,5,7,4,7,4,8,4,6,4,6,5,2,9,6,4,1,7,1,8,2,4,1,5,8,5,6,9,7,8,9,5,4,9,1,7,1,5,9,5,6,9,3,6,4,6,8,3,4,1,9,6,8,9,7,2,8,6,1,7,3,2,9,4,5,1,2,4,8,6,3,4,2,9,8,4,1,4,5,9,1,2,1,4,1,2,9,4,35, },
	[69] = { 34,1,8,1,7,4,6,9,4,9,8,1,4,5,7,8,9,8,9,3,9,3,1,9,1,4,7,4,3,2,6,9,2,7,1,9,2,6,9,3,2,5,3,5,3,1,3,7,6,9,2,3,6,7,1,8,5,2,5,7,4,2,9,2,3,4,3,1,5,6,7,3,5,2,4,6,8,6,9,7,5,3,5,1,9,5,3,1,3,2,9,6,1,8,7,8,3,2,9,3,6,7,35, },
	[70] = { 34,9,3,2,6,9,7,3,7,2,3,9,3,6,2,6,3,6,7,2,4,8,5,3,8,2,1,2,5,7,1,8,6,9,5,4,5,7,5,4,6,1,9,8,6,4,2,9,5,4,1,8,2,4,2,6,7,4,9,8,9,3,5,8,7,2,8,9,3,2,4,6,4,6,3,5,2,1,2,3,6,8,6,4,2,7,8,5,7,5,4,2,4,9,1,2,1,6,8,1,4,2,35, },
	[71] = { 34,2,5,4,7,1,8,2,4,1,4,8,4,9,5,1,4,5,9,1,3,6,1,7,1,4,9,3,6,8,6,2,1,8,1,3,8,2,9,7,3,8,2,5,2,1,5,1,3,9,7,9,1,8,1,8,3,5,6,2,1,7,4,1,4,5,3,1,7,5,9,2,3,2,1,9,8,5,8,5,2,9,1,3,5,9,1,6,4,1,6,7,6,5,7,4,9,4,7,3,9,8,35, },
	[72] = { 34,1,6,9,3,5,9,7,6,2,6,5,3,1,6,8,7,3,7,2,5,8,2,4,6,7,2,4,1,5,9,8,7,9,4,6,9,4,1,5,9,4,7,6,4,6,7,4,6,4,3,5,3,4,3,6,1,4,7,4,6,3,8,2,3,7,6,5,3,8,6,8,6,9,6,7,4,3,2,7,4,8,2,4,1,6,2,7,5,3,2,5,4,3,2,6,5,1,9,2,5,3,35, },
	[73] = { 34,2,7,1,2,6,8,5,4,7,3,4,9,8,2,4,6,4,9,8,1,6,9,5,1,5,9,3,9,2,6,4,1,5,1,2,3,7,3,8,7,5,8,2,3,2,8,5,7,8,6,4,2,1,2,8,7,3,2,1,2,9,7,4,8,2,4,1,4,9,3,1,4,7,2,1,9,7,5,1,9,1,6,8,7,9,1,4,2,8,1,7,2,9,1,9,4,7,4,7,9,1,35, },
	[74] = { 34,3,9,8,5,9,1,9,1,5,8,2,3,5,1,5,7,5,6,2,4,5,3,8,2,4,7,5,8,1,9,8,2,9,6,7,4,9,6,9,1,2,7,9,7,9,7,6,2,9,3,1,5,8,6,5,9,4,5,6,4,5,2,9,7,6,8,9,2,1,7,6,9,8,9,7,6,3,4,6,2,4,2,5,3,6,7,6,1,3,2,6,8,6,5,7,8,5,9,5,8,2,35, },
	[75] = { 34,1,6,3,4,6,7,5,3,4,9,4,1,4,6,4,6,8,3,1,3,1,2,4,6,5,6,3,9,7,6,5,4,5,4,3,2,8,4,8,5,3,6,4,3,5,3,4,7,4,8,4,2,7,1,3,6,1,8,2,1,3,7,6,1,9,3,1,6,3,5,8,1,4,5,4,1,9,7,1,7,6,8,6,1,2,4,3,5,4,1,3,1,7,2,4,9,4,6,1,9,5,35, },
	[76] = { 34,9,8,5,1,8,1,4,8,1,2,8,3,9,8,5,1,7,5,7,6,4,8,5,3,9,4,2,6,2,1,3,1,6,7,6,1,7,9,1,6,9,5,2,7,6,1,8,2,1,3,1,8,6,2,7,9,2,6,5,9,8,4,9,5,2,7,8,7,2,6,3,9,6,9,3,6,4,3,4,2,9,3,4,8,9,7,8,7,3,6,8,9,3,1,6,8,3,5,8,6,8,35, },
	[77] = { 34,6,3,7,3,5,9,6,3,6,9,6,7,2,1,3,8,6,1,4,2,3,7,2,1,5,8,7,5,4,8,4,7,4,8,5,8,3,6,8,4,3,8,6,9,3,5,7,9,6,8,6,5,1,9,6,1,5,7,4,6,7,3,1,6,9,1,5,6,1,5,8,1,3,1,2,5,9,1,7,3,1,6,2,3,4,2,3,5,2,4,3,6,7,4,2,1,2,9,4,7,4,35, },
	[78] = { 34,8,9,1,9,4,8,4,9,5,3,1,3,5,8,4,7,5,7,6,5,1,6,3,4,7,4,2,9,6,5,6,3,9,3,2,7,1,4,3,2,5,2,5,4,6,2,8,3,5,3,7,4,6,8,5,8,9,3,1,3,2,5,2,8,2,4,9,3,9,2,7,6,8,5,7,4,8,5,9,8,5,7,9,1,7,1,4,8,6,1,9,4,2,6,5,7,3,8,3,2,1,35, },
	[79] = { 34,6,4,7,8,7,1,5,6,2,4,7,2,4,3,1,9,3,9,4,9,2,4,9,8,2,1,6,3,8,1,4,8,5,7,6,3,8,5,8,9,4,9,8,7,1,7,9,4,8,4,1,5,1,9,1,7,4,7,6,5,7,6,4,3,9,6,8,7,6,8,9,4,2,6,9,2,6,3,1,3,1,6,3,8,2,5,7,2,3,4,7,8,1,7,9,4,9,1,9,6,3,35, },
	[80] = { 34,5,9,3,2,3,4,3,7,8,5,3,1,8,6,7,5,7,5,8,7,6,7,5,7,4,8,9,5,2,9,2,9,2,4,2,1,4,6,3,5,8,5,2,3,6,5,3,6,2,7,9,8,7,3,5,9,1,5,4,2,1,5,8,2,7,4,3,1,4,2,5,3,5,7,5,3,4,5,9,5,7,5,9,6,9,3,9,4,1,8,9,3,2,3,2,7,5,2,5,8,5,35, },
	[81] = { 34,7,4,1,5,9,8,6,4,3,4,8,2,9,4,9,3,8,6,4,5,1,2,9,6,5,2,3,6,7,3,4,3,7,8,6,5,7,8,4,7,3,9,8,4,7,4,9,4,3,8,2,6,4,8,6,2,3,9,7,9,3,4,1,5,6,5,7,6,8,9,4,2,4,9,1,7,9,2,8,2,9,1,4,5,1,7,2,6,5,7,2,4,5,1,9,3,6,3,6,9,3,35, },
	[82] = { 34,5,3,9,4,1,3,2,1,6,7,1,3,6,2,1,7,1,2,9,2,3,6,3,8,1,4,9,2,1,6,1,6,9,5,7,4,3,5,2,9,6,1,7,9,5,6,2,6,7,9,7,3,5,1,4,9,6,1,5,4,8,7,9,4,2,9,1,3,7,3,6,3,8,5,2,3,5,6,7,1,5,6,2,7,4,9,4,8,1,4,5,1,8,6,5,8,5,9,5,7,8,35, },
	[83] = { 34,1,7,6,7,6,7,5,4,3,9,5,7,8,5,6,3,6,5,4,1,4,2,9,5,6,8,6,5,4,3,5,7,8,1,3,8,7,9,3,8,7,2,6,4,2,7,4,3,8,3,5,4,6,8,3,1,5,8,3,9,2,1,3,7,5,4,8,2,1,9,8,2,6,3,7,4,7,8,2,3,2,1,3,1,2,3,2,6,9,3,7,4,3,7,1,4,3,1,2,4,1,35, },
	[84] = { 34,5,4,3,4,2,1,2,1,8,4,1,9,2,3,2,5,9,7,3,7,5,7,4,3,4,5,2,9,8,9,6,1,9,5,7,5,3,6,5,2,1,5,8,3,9,5,2,1,7,6,9,3,5,1,5,9,2,4,6,4,7,4,8,6,9,1,9,6,5,7,6,4,9,1,6,1,5,4,9,7,6,8,2,6,7,5,4,5,2,5,2,9,5,2,6,2,6,9,6,8,3,35, },
	[85] = { 34,1,9,6,9,5,9,6,9,7,5,6,7,1,7,4,6,8,1,4,9,3,6,5,2,6,9,1,5,7,3,4,8,2,1,2,1,7,4,8,4,9,4,2,5,4,7,8,6,9,5,7,6,9,2,6,8,7,9,7,3,9,1,2,7,2,6,5,4,1,9,3,8,3,8,2,3,7,6,1,4,1,4,1,9,8,3,6,3,8,7,1,4,1,7,4,8,7,5,3,4,9,35, },
	[86] = { 34,7,5,7,4,1,8,2,1,8,9,8,9,8,5,9,7,4,5,3,7,2,7,8,3,4,8,7,8,9,8,7,5,9,6,5,9,3,2,7,3,6,7,3,6,3,5,4,3,4,8,4,5,7,5,3,5,3,5,1,2,4,5,4,1,8,9,3,2,3,4,1,7,1,7,6,4,5,8,7,8,7,8,7,5,1,7,4,9,2,3,5,6,3,8,1,5,1,4,9,2,7,35, },
	[87] = { 34,2,3,6,5,9,3,7,5,4,6,1,4,2,7,2,5,3,1,6,5,3,4,2,5,9,6,1,5,2,1,2,4,7,2,8,6,5,6,9,1,9,8,9,7,1,6,8,2,5,2,7,2,3,2,1,9,2,7,3,7,9,7,9,2,3,7,1,7,6,9,5,3,2,5,2,1,6,3,4,5,2,4,1,2,3,6,2,5,4,7,2,1,2,6,4,8,9,8,3,1,9,35, },
	[88] = { 34,4,1,7,1,4,6,8,9,8,5,7,6,1,4,3,6,8,2,8,1,9,5,6,3,7,4,3,9,6,4,5,3,9,3,9,1,9,4,8,2,4,6,3,6,5,9,5,1,8,1,6,9,8,4,6,5,4,1,9,6,4,5,8,5,6,9,6,4,8,7,2,4,8,3,9,8,9,2,7,8,1,8,5,7,5,7,9,7,8,3,6,3,5,9,3,2,1,2,5,6,3,35, },
	[89] = { 34,3,2,6,5,9,7,4,6,3,2,9,3,7,2,1,2,9,7,9,5,4,2,1,4,5,6,8,2,3,2,7,2,8,7,6,4,6,7,1,7,9,8,2,9,1,8,4,9,5,3,8,1,2,3,2,1,2,7,8,3,7,3,2,4,7,2,5,2,5,3,1,3,6,5,1,4,6,8,6,4,2,4,2,8,6,8,1,5,2,5,8,4,6,1,4,7,3,7,8,2,5,35, },
	[90] = { 34,7,8,1,7,4,5,9,2,4,1,6,8,6,3,7,3,8,3,1,6,9,6,9,7,8,4,7,6,4,8,9,3,4,5,3,7,1,2,3,4,2,4,7,8,6,3,6,1,8,2,6,4,6,4,8,4,6,9,1,2,1,5,9,8,6,9,3,6,9,6,9,8,1,2,9,2,3,1,3,1,3,9,1,4,5,3,9,3,8,3,9,7,8,7,3,6,5,1,6,1,8,35, },
	[91] = { 34,9,5,9,2,6,1,8,6,9,2,3,7,9,4,6,4,5,9,4,8,4,3,2,5,2,3,5,2,7,6,7,5,6,9,6,8,3,6,9,1,9,1,5,1,4,7,2,7,5,1,3,7,2,3,1,7,2,5,4,7,4,2,4,7,3,2,5,8,7,4,2,5,7,5,7,5,8,6,5,4,6,7,8,7,9,7,1,5,7,6,5,4,2,1,2,9,3,9,3,4,3,35, },
	[92] = { 34,4,1,6,5,9,7,4,5,8,4,9,6,8,5,2,7,8,1,6,7,6,1,9,8,6,7,4,1,3,1,4,1,4,2,7,2,1,4,3,7,3,8,4,3,2,9,5,6,3,4,5,4,5,8,4,5,6,8,9,5,6,3,6,1,8,7,3,2,1,6,7,4,9,3,9,1,2,4,1,2,9,4,6,1,3,5,2,9,4,3,9,3,6,7,4,6,1,6,1,7,2,35, },
	[93] = { 34,5,7,8,4,1,3,9,7,9,3,2,5,9,3,1,6,9,4,3,4,5,2,4,2,4,8,6,5,9,5,8,3,6,9,1,8,7,5,1,9,6,5,7,5,6,4,7,9,2,8,6,9,3,2,3,1,9,7,6,2,4,5,7,2,6,1,8,6,7,4,5,6,1,2,8,3,9,5,8,5,8,2,8,4,6,9,8,5,8,1,8,1,2,9,1,8,4,8,4,5,8,35, },
	[94] = { 34,2,6,2,3,9,8,1,4,8,5,1,8,2,6,4,5,7,5,7,2,1,9,7,1,5,3,9,1,6,2,4,9,8,3,6,4,1,8,7,4,8,2,1,9,3,2,5,8,7,1,5,7,4,7,5,8,6,3,1,8,9,2,6,5,9,4,3,2,3,9,7,9,5,6,7,1,7,4,1,3,7,5,1,3,7,5,2,9,3,6,7,4,7,3,7,9,7,1,2,6,4,35, },
	[95] = { 34,1,4,5,6,4,6,5,9,2,6,2,3,7,1,9,3,4,2,8,3,6,8,3,6,2,7,4,3,8,1,3,6,4,9,8,3,9,2,6,1,7,3,5,4,1,8,3,6,5,6,3,8,1,2,1,2,1,5,2,4,1,4,8,4,2,8,7,6,4,8,6,2,4,2,8,5,3,5,2,4,2,9,7,8,4,6,1,4,7,9,5,2,9,6,5,6,8,6,9,8,2,35, },
	[96] = { 34,2,9,3,7,1,7,1,8,5,8,5,8,4,6,2,5,1,5,7,1,2,4,1,5,9,6,9,2,7,4,9,5,1,5,4,2,8,4,5,4,9,2,7,3,2,9,1,7,3,4,1,6,7,5,4,9,8,6,1,6,7,2,3,9,1,6,9,3,5,7,4,1,3,9,3,7,1,7,6,7,1,5,6,2,1,3,5,9,5,1,6,4,3,2,9,1,4,5,3,4,3,35, },
	[97] = { 34,3,7,1,9,5,3,9,7,2,3,4,3,7,3,7,8,2,3,4,5,7,3,2,4,7,1,7,8,6,3,1,3,2,8,7,3,7,9,2,7,8,6,9,4,7,5,8,2,5,7,8,2,3,2,1,7,4,2,9,3,1,9,1,2,8,4,7,1,4,6,2,6,4,5,1,5,6,4,9,3,9,7,4,7,8,4,8,2,8,3,5,9,6,4,5,7,9,8,2,1,5,35, },
	[98] = { 34,6,2,8,3,2,8,6,4,5,9,8,5,4,9,5,1,5,6,1,3,9,8,5,8,6,9,4,1,2,5,8,7,9,6,1,6,5,6,4,6,5,7,1,3,8,6,7,6,3,4,1,4,6,4,3,8,5,7,6,8,7,3,4,3,7,3,6,2,5,3,1,8,9,2,3,2,3,5,7,8,6,1,8,2,1,9,5,4,7,6,1,7,3,1,6,8,4,7,5,8,2,35, },
	[99] = { 34,4,9,4,9,5,9,5,8,1,7,2,3,2,3,4,6,2,9,2,8,2,7,3,4,2,3,7,3,4,1,6,1,8,2,3,2,4,8,2,7,9,2,8,2,4,5,4,1,8,6,2,7,5,2,6,7,2,3,2,1,4,1,6,2,8,1,5,1,4,8,6,4,3,5,7,5,9,6,1,2,5,9,7,9,7,6,1,8,2,9,4,9,6,5,4,3,6,2,4,6,7,35, },
	[100] = { 34,5,2,1,7,6,3,6,4,9,3,5,1,7,6,2,5,3,4,7,1,4,8,5,7,1,4,9,1,7,8,3,7,4,6,9,5,9,1,5,4,5,3,5,3,7,3,6,9,2,4,3,4,1,9,4,8,1,7,6,9,2,7,8,9,3,2,8,3,6,2,3,2,9,1,6,2,3,7,5,7,6,8,3,4,1,5,7,6,4,7,3,2,8,2,1,7,4,7,5,9,5,35, },
	[101] = { 34,9,6,9,5,2,8,7,8,6,2,6,4,2,9,3,9,6,8,9,8,6,9,6,3,5,7,2,3,2,6,5,9,2,8,3,8,2,4,9,6,7,2,8,6,1,9,8,7,1,8,5,6,5,8,5,6,5,8,4,1,5,1,5,6,7,6,4,7,4,1,9,1,7,2,4,8,5,9,1,8,4,1,7,6,9,6,9,2,1,9,8,9,3,7,8,2,5,9,8,3,6,35, },
	[102] = { 34,8,7,2,1,3,1,9,3,9,5,8,7,1,8,2,4,3,4,1,3,1,4,1,7,4,8,1,5,8,4,1,8,4,1,4,1,5,8,1,4,5,9,7,5,3,7,6,5,4,9,3,9,1,4,3,1,9,6,5,2,6,4,8,1,3,1,3,8,3,7,6,3,4,6,9,1,7,4,5,7,3,6,8,3,2,8,3,5,4,6,7,4,1,5,4,7,3,7,4,2,7,35, },
	[103] = { 31,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,33, },
}
return worldMapLayer_mapArray