io.write("Table Size (default = 5): ")
tableSize = io.read()
if tableSize == '' or tableSize == ' ' or tableSize == nil then
    tableSize = 5   -- sets default size if no size is defined by user
end

--[[
    Tables in Lua:
    https://www.youtube.com/watch?v=iMacxZQMPXs&t=1421s

    Note: Tables are like arrays, touples, dictionaries in other languages
]]


-- initialize a tables in lua
aTable = {}
bTable = {}

-- defining a value of a table in lua
aTable[6] = "pre-defined value"


-- adding keys and values to a table
for i = 1, tableSize do
    if i ~= 2 then -- skips key/element 2
        aTable[i] = "..loop defined" -- populate key (element index)
    end
    bTable[i] = i
end

-- insert "user" in table value using for loop
for i, value in pairs(aTable) do
    if i == 3 or i == 4 then
        io.write("Key ",i, ": ")
        uInput = io.read()
        aTable[i] = uInput
    end
end



-- modifying the last key value
aTable[#aTable] = "modified value"

-- adding a key value to table
table.insert(aTable, #aTable + 1, "inserted value")

-- removing a key value to table
table.remove(bTable, 1)
table.remove(bTable, math.floor(#bTable / 2)) -- #bTable/2 gives float if 10/2
table.remove(bTable, #bTable)

-- print aTable
for key, value in pairs(aTable) do
    print(key, value)
end
print("\n") --newline

-- print missing "array" in the table
print("aTable[2]: ", aTable[2])
print("\n") -- newline

-- print bTable with seperator
print("bTable{}: ",table.concat(bTable, ", ")) -- notice: no loop needed
