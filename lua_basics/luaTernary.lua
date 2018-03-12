--[[
    Ternary Operator in Lua:
    https://www.youtube.com/watch?v=iMacxZQMPXs&t=920s
]]
age = 11
--canVote = age > 18 ? true : false
  canVote = age > 18 and true or false

io.write("Can vote: ",tostring(canVote),"\n")