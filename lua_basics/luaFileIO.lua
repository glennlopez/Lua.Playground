--[[
    Lua File I/O:
    https://www.youtube.com/watch?v=iMacxZQMPXs&t=2410s
    https://www.tutorialspoint.com/lua/lua_file_io.htm

    Note:
        - Folders have to exist; Lua will not create them for you
]]


-- creates a file pointer: test_file
test_file = io.open("luaFileIO/append.lua", "a")

-- set output to file pointer
io.output(test_file)
io.write(" -- End of the test.lua file\n")

-- another method of doing the same as above
test_file:write("-- appended using pointer:write(\"...\")\n")
io.close(test_file)

