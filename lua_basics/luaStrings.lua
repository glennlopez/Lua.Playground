--[[
    Strings in Lua:
    https://www.youtube.com/watch?v=iMacxZQMPXs&t=995s
]]

quote = "If you get stuck, many helpful people are ready to help you at the helping forums. Be warned, however, that it sometimes gets too helpful. If you want to help someone, make sure they need help first"

-- print entire string
print(quote) 

-- print quote length; string.len()
io.write("quote length: ", string.len(quote), "\n")
io.write("quote length: ", #quote, "\n")

-- string substitution; string.gsub()
io.write("Replace \"help\" with \"hurt\":\n", string.gsub(quote, "help", "hurt"),"\n")

-- find the first index of a word; string.find()
io.write("Index of help: ", string.find(quote, "help"), " characters in\n")

-- change lower/uppercase; string.upper()
io.write("Uppercase: \n", string.upper(quote), "\n")
io.write("Lowercase: \n", string.lower(quote), "\n")