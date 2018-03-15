--[[
    Lua Co-Routines (threadding): allow us to execute several tasks at once
    https://www.youtube.com/watch?v=iMacxZQMPXs&t=2206s
    http://lua-users.org/wiki/CoroutinesTutorial
]]

-- create a coroutine 
co = coroutine.create( 
    function()
        -- print out the loop increments & coroutine status
        for i = 1, 10, 1 do
            print(i)
            print(coroutine.status( co )) -- STATUS

            -- stop coroutine
            if i == 5 then
                coroutine.yield() 
            end
        end 
    end
)

print(coroutine.status( co )) -- STATUS
coroutine.resume( co )
print(coroutine.status( co )) -- STATUS