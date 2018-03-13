--[[
    For loops in Lua:
    https://www.youtube.com/watch?v=iMacxZQMPXs&t=1320s
]]

-- normal for loop; is implicitly incremented by 1
for i = 1, 10 do
    io.write(i," ")
end
io.write("\n")

-- normal for loop; is explicitly incremented by 1
for i = 1, 10, 1 do 
    io.write(i)
end
io.write("\n")

-- for (key, value in pairs)
Table = {}
Table[1] = "First in the list"
Table[2] = "This is the second"
Table[3] = "and the third"
Table[4] = "This is the forth"
Table[5] = "Five on the list"
Table[6] = "Six"

Table2 = {
    "First on list", "Second on list", "Third on list"
}

-- "key" is [n]; "value" is element in the table
for key, value in pairs(Table) do
    print(key, value)

    --[[
    if (key < 5) and (key > 2) then
        print(value)
    end
    ]]

    --[[
    if key == 2 then
        print(value)
    end
    ]]
end

-- "key" is [n]; "value" is element in the table
for key, value in pairs(Table2) do
    --print(k, v)
    if key ~= 2 then
        print(value)
    end
end