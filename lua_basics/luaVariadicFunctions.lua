--[[
    Lua Variadic Functions:
    https://www.youtube.com/watch?v=iMacxZQMPXs&t=1993s

    Recieve an uknown number of parameters in a function
]]

-- passing an unknown number of paramiters
function getSumMore(...)
    local sum = 0

    -- loop through argument count
    for key, value in pairs{...} do
        sum = sum + value
    end
    return sum
end

-- function can take an IMPLICIT ammount of args
print("Total sum:" ,getSumMore(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,116,177,288,299,300))
print("Total sum:" ,getSumMore(1,2,3,4,5,6))
print("Total sum:" ,getSumMore(11))
print("Total sum:" ,getSumMore())