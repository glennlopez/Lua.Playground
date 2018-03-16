--[[
    Lua Co-Routines (threadding): allow us to execute several tasks at once
    https://www.youtube.com/watch?v=iMacxZQMPXs&t=2206s
    http://lua-users.org/wiki/CoroutinesTutorial
]]

-- coroutine 1
thread_1 = coroutine.create( 
    function()
        -- print out the loop increments & coroutine status
        for i = 1, 10, 1 do

            print("Coroutine 1: ",coroutine.status( thread_1 ))
            print(i)

            -- stop coroutine at 5
            if i == 5 then
                coroutine.yield()   -- YIELDS CO-ROUTINE at i = 5 (data stays in memory)
            end
        end 
    end
)

-- coroutine 2
thread_2 = coroutine.create(
    function()
        for i = 101, 110, 1 do

            print("Coroutine 2: ", coroutine.status( thread_2 ))
            print(i)

        end
    end
)



print("Coroutine 1: ", coroutine.status( thread_1 ))
print("Coroutine 2: ", coroutine.status( thread_2 ))
print("\n")

coroutine.resume( thread_1 )              -- START CO-ROUTINE 1 from 1 to 5

print("\n")
print("Coroutine 1: ", coroutine.status( thread_1 ))
print("Coroutine 2: ", coroutine.status( thread_2 ))
print("\n")

coroutine.resume(thread_2)               -- START CO-ROUTINE 2 from 101, to 110
coroutine.resume(thread_1)                -- RESUMES CO-ROUTINE from 6 to 10 (as per coroutine 1 for loop)

print("\n")
print("Coroutine 1: ", coroutine.status( thread_1 ))
print("Coroutine 2: ", coroutine.status( thread_2 ))
