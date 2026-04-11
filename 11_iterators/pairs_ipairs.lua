local players = { "Sabalenka", "Rybakina" }
players[5] = "Gauff" -- Gap at index 3 and 4

print("--- Using ipairs ---")
for i, v in ipairs(players) do
    print(i, v) -- Stops after index 2 because index 3 is nil
end

print("--- Using pairs ---")
for k, v in pairs(players) do
    print(k, v) -- Prints everything including index 5
end
