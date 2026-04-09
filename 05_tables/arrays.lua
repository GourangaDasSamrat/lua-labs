-- Array indexing starts at 1
local players = { "Sabalenka", "Rybakina", "Gauff" }

print(players[1]) -- Output: Sabalenka
print(players[2]) -- Output: Rybakina

-- Length of array
print("Total players: " .. #players)

-- Looping through an array (using ipairs)
for index, value in ipairs(players) do
    print(index .. ": " .. value)
end
