
--[[
    Variables in Lua:
    https://www.youtube.com/watch?v=iMacxZQMPXs&t=73s
]]

-- string with whitespace
longString = [[
This is a very long string respecting whitespace

            ____________________
           |\                   \      l____
           | \___________________\     |\   \
           | |                    |    |\l___\___
      [__]_[ |                    |[\\]| |__|_\__\
     /\[__]\ |                    |\[\\]\|. | |===\
     \ \[__]\[____________________] \[__]|__|..___]
      \/.-.\_______________________\/.-.\____\/.-.\
       ( @ )                        ( @ )  =  ( @ )
        `-'                          `-'       `-' 
]]

-- single string
name = "Glenn\n"

io.write(longString)
io.write("name changed to an int: ",name,"\n")

-- concatinate two strings
longString = longString .. name
print(longString)

-- check type of variable
testBool = true
io.write("Datatype: ", type(testBool) ,"\n")

-- creating local variables
localvar = 100
for i = 1, 3, 1 do
    local localvar = 3 -- remove "local" to see what happens
    io.write("localvar = ", localvar, "\n")
end
io.write("localvar = ", localvar, "\n")