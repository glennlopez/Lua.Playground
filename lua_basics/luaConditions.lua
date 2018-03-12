--[[
    Conditions in Lua:
    https://www.youtube.com/watch?v=iMacxZQMPXs&t=653s
]]

age = 8

-- Relational Operators: >, <, >=, <=, ==, ~=
if age < 16 then
    local localVar = 10 -- local to if statement
    io.write("Age is less than 16\n")
    if localVar ~= 16 then
        io.write("Age is not 16\n")
    end
elseif age >= 16 then
    io.write("16 or over\n")
else
    io.write("Else condition triggered.\n")
end

-- Logical Operators: and, or, not
if (age < 14) or (age == 14) then
    io.write("14 or below \n")
end

if (age < 10) and (age > 5) then
    io.write("Age between 5 and 10\n")
end

-- typecasting in lua
io.write(tostring(not true), "\n") --convert to string

ten = "10" five = "5" -- convert to number
io.write("ten + five: ",tonumber(ten) + tonumber(five),"\n")

-- printf(); print(string.format()) in lua 
print(string.format("%s",tostring(not false)))


