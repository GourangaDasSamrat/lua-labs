local sabalenkaStats = { points = 1000 }
local rybakinaStats = { points = 800 }

local mt = {
    -- __add is a metamethod for '+' operator
    __add = function(t1, t2)
        return t1.points + t2.points
    end
}

setmetatable(sabalenkaStats, mt)
setmetatable(rybakinaStats, mt)

-- Now we can "add" two tables!
local totalPoints = sabalenkaStats + rybakinaStats
print("Combined Points: " .. totalPoints) -- 1800
