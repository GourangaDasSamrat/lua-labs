local finalists = { "Sabalenka", "Rybakina" }

-- 1. table.insert(table, [pos], value)
table.insert(finalists, "Gauff")      -- Adds at the end
table.insert(finalists, 1, "Swiatek") -- Adds at index 1

-- 2. table.remove(table, [pos])
table.remove(finalists, 2) -- Removes "Sabalenka" (who was at 2 after insert)

-- 3. table.sort(table)
table.sort(finalists) -- Sorts alphabetically

-- Printing sorted list
for i, v in ipairs(finalists) do
    print(i, v)
end
