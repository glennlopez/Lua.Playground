--[[
    Multi-Dimentional Table/Arrays in Lua
    https://youtu.be/iMacxZQMPXs?t=26m32s
]]

-- create and populate a multi-dimentional table
multiTable = {}
for i = 1, 9 do
    multiTable[i] = {}
    for j = 1, 9 do
        multiTable[i][j] = tostring(i) .. "," .. tostring(j)
    end
end

-- accessing 2d table
io.write("MultiTable[3][6]: ", multiTable[3][6], "\n\n")

-- modifying 2d table
multiTable[1][1] = "BEG"
multiTable[math.ceil(#multiTable/2)][math.ceil(#multiTable/2)] = "MID"
multiTable[#multiTable][#multiTable] = "END"

-- print table contents
for i, value in pairs(multiTable) do
    for j, value in pairs(multiTable) do
        io.write("[", multiTable[i][j], "]")
    end
    io.write("\n")
end
print("\n")