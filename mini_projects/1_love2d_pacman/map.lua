local M = {}

M.TILE_SIZE = 32
-- 1: Wall, 0: Dot, 2: Empty
M.grid = {
    { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
    { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1 },
    { 1, 0, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 0, 1 },
    { 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1 },
    { 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1 },
    { 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 },
    { 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1 },
    { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
}

function M.isWalkable(x, y)
    local tx, ty = math.floor(x), math.floor(y)
    if M.grid[ty] and M.grid[ty][tx] ~= 1 then
        return true
    end
    return false
end

function M.draw()
    for y, row in ipairs(M.grid) do
        for x, tile in ipairs(row) do
            if tile == 1 then
                love.graphics.setColor(0.2, 0.2, 0.8) -- Blue walls
                love.graphics.rectangle("fill", (x - 1) * M.TILE_SIZE, (y - 1) * M.TILE_SIZE, M.TILE_SIZE - 2,
                    M.TILE_SIZE - 2)
            elseif tile == 0 then
                love.graphics.setColor(1, 1, 1) -- White dots
                love.graphics.circle("fill", (x - 0.5) * M.TILE_SIZE, (y - 0.5) * M.TILE_SIZE, 4)
            end
        end
    end
end

return M
