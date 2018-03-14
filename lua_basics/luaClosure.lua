--[[
    Closures in Lua:
    https://www.youtube.com/watch?v=iMacxZQMPXs&t=2067s
    A function that can access local variables of an enclosing variable
    
        This also illustrates how functions in lua are just variables,
        which means anywhere a variable can be assined, functions can be assigned
]]

-- variables that are functions
greet = function(x) return io.write("Hello, ",x, "!\n") end -- functions in lua are variables
doubleIt = function(x) return x * 2 end
cubeIt = function(x) return math.pow(x, 3) end
binaryMax = function(x) return math.pow(2, x) end

-- results
greet("Glenn")
io.write("Double: ", doubleIt(4),"\n")
io.write("Cubed: ", cubeIt(4),"\n")
io.write("Binary max: ", binaryMax(4),"\n")

-- CLOSURES: aka, a nested function
function outerFunc()
    local i = 0         --> this var gets 'poped' when function is done
    return function()   --> Inner function takes presidence
        i = i + 1       --> this var gets 'poped' when program quits
        return i        -- as a result getI remembers the previous result
    end
end

getI = outerFunc()  --> notice getI is NOW a function
print(getI())       --> starts off as 0 + 1; returns 1
print(getI())       --> "local i = 0" has no effect, remembers i = 1 so i + i returns 2
print(getI())       --> i + 1; since i = 2, i + 1 = 3; returns 3

