local playerStats = {
    name = "Aryna Sabalenka",
    country = "Belarus",
    age = 25,
    isActive = true
}

-- Accessing values (both ways work)
print(playerStats.name)       -- Output: Aryna Sabalenka
print(playerStats["country"]) -- Output: Belarus

-- Looping through a dictionary (using pairs)
for key, value in pairs(playerStats) do
    print(key .. ": " .. tostring(value))
end
