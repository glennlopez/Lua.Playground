--[[
    Modules in Lua:
    https://www.youtube.com/watch?v=iMacxZQMPXs&t=2612s
    https://www.tutorialspoint.com/lua/lua_modules.htm

    Module is like a library that can be loaded using 
    require and has a single global name containing a table.
]]

-- Folder: luaModules
convertModule = require("luaModules/convert")
print(string.format("%.3f cm", convertModule.ftToCm(12)))