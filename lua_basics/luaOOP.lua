--[[
    Object Oriented Programming in Lua:
    https://www.youtube.com/watch?v=iMacxZQMPXs&t=3060s
    https://www.tutorialspoint.com/lua/lua_object_oriented.htm

    - Class:
        Composed of multiple datatype variables 
        grouped into one new datatype variable

    - Objects:
        A variable that uses grouped datatypes called classes

    - Inheritance:
]]

-- CREATING A CLASS

-- 1) create a table (Meta class) with defaults
Animal = {
    height = 0,
    weight = 0,
    name = "No Name",
    sound = "No Sound"
}

-- 2) create a function to initialize the table
function Animal:new(height, weight, name, sound)
    
    setmetatable({}, Animal)
    self.height = height
    self.weight = weight
    self.name = name
    self.sound = sound
    
    return self
end

-- print out information about animal object
function Animal:presentData()
    animalStr = string.format("%s weights %.1f lbs, and is %.1f inches tall and says %s",
    self.name, self.weight, self.height, self.sound)
    
    return animalStr
end

-- using "Animal" class to create an object called "spot"
spot = Animal:new(6.3, 300, "Spot", "Arf! Arf!")
noname = Animal:new(1, 3, "...", "...")

-- call the function to print 
print(spot:presentData())
print(noname:presentData()) --> Notice Inheritance dont work in output

-- accessing object data
io.write("The dog is ", spot.height, " tall.\n")
io.write("The dog is ", noname.height, " tall.\n") --> Notice Inheritance doesnt work



-- 3) Making Inheritance work in lua

--[[
   Note: noname = Animal:new(1, 3, "...", "...") will not be inherited.
   A new function encapsulation is required for this to work
]]

Cat = Animal:new() --> Cat Inherits Animal metatable in step 1

function Cat:new(height, weight, name, sound) --> function call changes
    
    setmetatable({}, Cat) --> Metatable changes
    self.height = height
    self.weight = weight
    self.name = name
    self.sound = sound
    
    return self
end

function Cat:presentData() --> function call name change
    animalStr = string.format("%s weights %.1f lbs, and is %.1f inches tall and says %s",
    self.name, self.weight, self.height, self.sound)
    
    return animalStr
end

realCat = Cat:new(99, 5000, "Felix", "Meow..")
io.write("Name: ", realCat.name, "\n")
print(realCat:presentData())