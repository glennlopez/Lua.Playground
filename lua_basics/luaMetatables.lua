--[[
    Metatables in Lua:
    https://www.youtube.com/watch?v=iMacxZQMPXs&t=2730s
    https://www.tutorialspoint.com/lua/lua_metatables.htm
    

    A metatable is used for changing/adding functionalities to operators on tables
]]




--[[
    META-TABLE: for changing how operators function on tables
]]
mt = {
    -- __add = will change how (+) operator will work for tables
    __add = function(table1, table2)
        sumTable = {} -- new table for storing results

        for y = 1, #table1 do

            if(table1[y] ~= nil) and (table2[y] ~= nil) then
                sumTable[y] = table1[y] + table2[y] 
            else
                sumTable[y] = 0
            end

        end

        return sumTable
    end,

    -- __mul = will change how (+) operator will work for tables
    __mul = function(table1, table2)
        mulTable = {} -- new table for storing results

        for y = 1, #table1 do

            if(table1[y] ~= nil) and (table2[y] ~= nil) then
                mulTable[y] = table1[y] * table2[y] 
            else
                mulTable[y] = 0
            end

        end

        return mulTable
    end,


    -- __eq will change how (==) operator will work for tables
    __eq = function(table1, table2)
        return table1.value == table2.value
    end,
    
}




--[[
    IMPLEMENTATION: 
]]
-- create a tables for example
aTable = {}
bTable = {}

-- populate the tables for example
for x = 1, 10 do
    aTable[x] = x
end

for x = 1, 10 do
    bTable[x] = x + 0.12
end

-- set metatable method for a table using setmetatable() function
setmetatable(aTable, mt)

-- use __eq method to check if table values equal
print("Is Equal (==):", aTable == aTable)

-- using operator modes on tables (defined using metatables)
addTable = aTable + aTable
mulTable = aTable * aTable




--[[
    PRINT TABLES:
]]
print("\n__add Table:")
for z = 1, #addTable do
    print(addTable[z])
end

print("\n__mul Table:")
for z = 1, #mulTable do
    print(mulTable[z])
end