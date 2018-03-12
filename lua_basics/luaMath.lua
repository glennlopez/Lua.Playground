--[[
    Math Functions in Lua:
    https://www.youtube.com/watch?v=iMacxZQMPXs&t=418s
]]

-- common math operators
io.write("5 + 3 = ", 5+3, "\n")
io.write("5 - 3 = ", 5-3, "\n")
io.write("5 * 3 = ", 5*3, "\n")
io.write("5 / 3 = ", 5/3, "\n")
io.write("5 % 3 = ", 5%3, "\n")
io.write("5.2 % 3 = ", 5%3, "\n")

-- rounding operators
io.write("math.floor(2.345): ", math.floor(2.345),"\n")
io.write("math.ceil(2.345): ", math.ceil(2.345),"\n")

-- greater than, lessthan operator
io.write("math.max(2, 3): ", math.max(2, 3),"\n")
io.write("math.min(2, 3): ", math.min(2, 3),"\n")

-- power operators
io.write("math.pow(8, 2): ", math.pow(8, 2),"\n")
io.write("math.sqrt(64): ", math.sqrt(64),"\n")

-- random number generator
math.randomseed(os.time()) -- seeds RNG with OS epic time
io.write("math.random(): ", math.random(), "\n")
io.write("math.random(10): ", math.random(10), "\n")
io.write("math.random(5, 100): ", math.random(5, 100), "\n")

-- formatting strings
print(string.format("Pi = %.10f", math.pi))
print(string.format("Pi = %.2f", math.pi))