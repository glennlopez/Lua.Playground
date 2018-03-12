--[[
    For loops in Lua:
    https://www.youtube.com/watch?v=iMacxZQMPXs&t=1320s
]]

-- normal for loop
for i = 1, 10 do    -- is implicitly incremented by 1
    io.write(i," ")
end
io.write("\n")

-- ???
for i = 1, 10, 1 do -- is explicitly incremented by 1
    io.write(i)
end
io.write("\n")

-- for key, value in pairs
Table = {}
Table[1] = "This is a test"
Table[2] = "Hello there"
Table[3] = "One 2 ..."
