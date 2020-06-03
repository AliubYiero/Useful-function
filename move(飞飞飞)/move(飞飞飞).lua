--[[
1.move("飞飞飞")
2.以字体为中心，向四周随机选取坐标移动
3.每输入一个"飞"，随机选取的最大范围就会增加100
4.fly_text需要输入字符串，即需要加""
--]]
function move(fly_text)
	if fly_text ~= string then																									--debug输出
	_G.aegisub.debug.out(5, "Running text template '%s'\n", fly_text)
	end
	local text = string.match(fly_text,"[飞]+")																					--检索"飞"并输出到text
	local num = _G.unicode.len(text)																							--检索有多少个"飞"并输出数值到num
	return string.format("\\move(%d,%d,%d,%d)",line.x,line.y,line.x+math.random(100*num),line.y+math.random(100*num))			--输出
end

