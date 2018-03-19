--[[
    Lua File I/O:
    https://www.youtube.com/watch?v=iMacxZQMPXs&t=2410s
    https://www.tutorialspoint.com/lua/lua_file_io.htm

    Note:
        - Folders have to exist; Lua will not create them for you automatically 

    Sequence:
        1) Create a file pointer
        2) Set file pointer direction (input or output)
        3) Read, Write, or Append to the file pointer
        4) Close the file pointer
]]


-- creates a file pointer: append_file, write_file
append_file = io.open("luaFileIO/append.txt", "a+")
write_file = io.open("luaFileIO/write.txt", "w+")

--[[
    APPENDING TEXT TO FILES
]]
-- set the file pointer direction to output
io.output(append_file)

-- write to the file pointer
io.write("-- End of the append.txt file\n")

-- another method of doing the same as above
append_file:write("-- appended using pointer:write(\"...\")\n")

-- set the file pointer
append_file:seek("set", 11)

-- read everything in the file pointer
print(append_file:read("*a")) -- will not work if file mode is not + (a+, w+, r+)

-- close file pointer
append_file:close() -- io.close(append_file) --> also works


--[[
    WRITING TEXT TO FILES
]]
-- manipulate this file pointer
io.output(write_file)

write_file:write("First\n")
write_file:write("Second\n")
write_file:write("Last\n")

-- set the file pointer cursor to the start to read
write_file:seek("set", 0)
print(write_file:read("*a"))
write_file:close()
