--[[
    Returning multiple variables in a Lua function:
    https://www.youtube.com/watch?v=iMacxZQMPXs&t=1765s
]]
-- Returning multiple values
function splitString(usrString)
    local stringTable = {}
    local i = 1

    -- store everything except spaces
    for word in string.gmatch(usrString, "[^%s]+") do
        stringTable[i] = word
        i = i + 1
    end

    -- returning multiple values in a function
    return stringTable, i
end

-- using the function to take in multiple returned values
splitStrTable, numOfStr = splitString("This is a test")

-- display results
for j = 1, numOfStr - 1 do
    print(string.format("%d: %s", j, splitStrTable[j]))
end
