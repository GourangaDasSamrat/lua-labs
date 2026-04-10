-- Passing an anonymous function as an argument
local function executeTask(taskName, taskFunction)
    print("Executing: " .. taskName)
    taskFunction() -- Calling the anonymous function
end

executeTask("Match Celebration", function()
    -- This is an anonymous function
    print("Aryna Sabalenka is doing her signature celebration!")
end)

-- Using with tables (like JS callbacks)
local event = {
    onWin = function(player)
        print(player .. " has won the trophy!")
    end
}

event.onWin("Rybakina")
