local player = "Aryna" -- File scope

do
    local player = "Sabalenka"        -- Block scope
    print("Inside block: " .. player) -- Sabalenka
end

print("Outside block: " .. player) -- Aryna
