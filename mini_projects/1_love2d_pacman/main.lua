local map = require("map")
local playerMod = require("player")

local chars
local gameState = "play" -- "play" or "gameover"

-- Function to start/restart the game
local function initGame()
    chars = playerMod.reset()
    gameState = "play"
    -- Resetting dots in the map
    for y, row in ipairs(map.grid) do
        for x, tile in ipairs(row) do
            if tile == 2 then map.grid[y][x] = 0 end
        end
    end
end

function love.load()
    love.window.setMode(#map.grid[1] * map.TILE_SIZE, #map.grid * map.TILE_SIZE)
    initGame()
end

function love.update(dt)
    if gameState == "play" then
        playerMod.update(chars, dt)

        -- Check collision between Aryna and Rybakina
        local dist = math.sqrt((chars.aryna.x - chars.rybakina.x) ^ 2 + (chars.aryna.y - chars.rybakina.y) ^ 2)
        if dist < 0.8 then
            gameState = "gameover"
        end
    else
        -- Restart logic: press 'R' to play again
        if love.keyboard.isDown("r") then
            initGame()
        end
    end
end

function love.draw()
    map.draw()

    -- Draw characters
    love.graphics.setColor(1, 1, 0) -- Aryna (Yellow)
    love.graphics.circle("fill", (chars.aryna.x - 0.5) * map.TILE_SIZE, (chars.aryna.y - 0.5) * map.TILE_SIZE, 12)

    love.graphics.setColor(1, 0, 0) -- Rybakina (Red)
    love.graphics.rectangle("fill", (chars.rybakina.x - 0.8) * map.TILE_SIZE, (chars.rybakina.y - 0.8) * map.TILE_SIZE,
    20, 20)

    -- UI and Messages
    love.graphics.setColor(1, 1, 1)
    love.graphics.print("Score: " .. chars.aryna.score, 10, 5)

    if gameState == "gameover" then
        love.graphics.printf("GAME OVER!\nPress 'R' to Restart", 0, 100, love.graphics.getWidth(), "center")
    end
end
