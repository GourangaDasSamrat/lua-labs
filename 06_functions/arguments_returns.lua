-- Function with arguments
local function calculatePoints(wins, draws)
    local winPoints = wins * 3
    local drawPoints = draws * 1
    return winPoints + drawPoints
end

local total = calculatePoints(5, 2)
print("Total Points: " .. total)

-- Returning Multiple Values (Go style)
local function getPlayerInfo()
    local name = "Elena Rybakina"
    local rank = 4
    return name, rank -- Returning two values at once
end

local playerName, playerRank = getPlayerInfo()
print(playerName .. " is ranked " .. playerRank)
