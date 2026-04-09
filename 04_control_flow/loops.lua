-- 1. Numeric For Loop: (start, stop, step)
print("Numeric Loop:")
for i = 1, 3 do
    print("Match count: " .. i)
end

-- 2. While Loop
local count = 1
while count <= 2 do
    print("Set won: " .. count)
    count = count + 1
end

-- 3. Repeat Until (Similar to do-while, but logic is inverted)
local points = 0
repeat
    points = points + 15
until points >= 40
print("Game Point: " .. points)
