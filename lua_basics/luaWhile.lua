--[[
    Looping in Lua
    https://www.youtube.com/watch?v=iMacxZQMPXs&t=1151s
]]


-- while statements
num1 = 0
num2 = 0

while num1 <= 10 do -- can do without bracket
    num1 = num1 + 1
end

while (num2 <= 10) do -- or with brackets
    num2 = num2 + 1
    if num2 == 5 then
        break
    end
end

io.write("num1: ", num1, "\n")
io.write("num2: ", num2, "\n")


-- do while statements
repeat 
    io.write("Enter your guess: ")
    guess = io.read()
until tonumber(guess) == 10 -- inputs are always strings; convert it to number



--[[
    Notes:
        - Lua has no "continue" statements
        - Lua has no "switch" case
]]