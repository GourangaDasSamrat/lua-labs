local map = require("map")
local P = {}

function P.reset()
    return {
        aryna = { x = 2, y = 2, speed = 5, score = 0 },
        rybakina = { x = 13, y = 6, speed = 2.5 }
    }
end

function P.update(chars, dt)
    -- Aryna movement
    local nextX, nextY = chars.aryna.x, chars.aryna.y
    if love.keyboard.isDown("right") then
        nextX = nextX + chars.aryna.speed * dt
    elseif love.keyboard.isDown("left") then
        nextX = nextX - chars.aryna.speed * dt
    elseif love.keyboard.isDown("up") then
        nextY = nextY - chars.aryna.speed * dt
    elseif love.keyboard.isDown("down") then
        nextY = nextY + chars.aryna.speed * dt
    end

    if map.isWalkable(nextX, nextY) then
        chars.aryna.x, chars.aryna.y = nextX, nextY
    end

    -- Dot collection logic
    local tx, ty = math.floor(chars.aryna.x + 0.5), math.floor(chars.aryna.y + 0.5)
    if map.grid[ty] and map.grid[ty][tx] == 0 then
        map.grid[ty][tx] = 2
        chars.aryna.score = chars.aryna.score + 10
    end

    -- Rybakina AI logic (chase)
    if chars.rybakina.x < chars.aryna.x then
        chars.rybakina.x = chars.rybakina.x + chars.rybakina.speed * dt
    else
        chars.rybakina.x = chars.rybakina.x - chars.rybakina.speed * dt
    end

    if chars.rybakina.y < chars.aryna.y then
        chars.rybakina.y = chars.rybakina.y + chars.rybakina.speed * dt
    else
        chars.rybakina.y = chars.rybakina.y - chars.rybakina.speed * dt
    end
end

return P
