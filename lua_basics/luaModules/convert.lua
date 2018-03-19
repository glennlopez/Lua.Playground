--[[
    Convert Module:
        converts feet to cm
        filename must be the same as table name
]]

local convert = {}
    function convert.ftToCm(feet)
        return feet + 30.48
    end
return convert