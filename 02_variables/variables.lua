-- 1. Global variable declaration
globalVar = "I am Global"

function scopeTest()
    -- 2. Local variable declaration (limited to this function)
    local localVar = "I am Local"

    print(globalVar) -- Output: I am Global
    print(localVar)  -- Output: I am Local
end

scopeTest()

print(globalVar) -- Output: I am Global
print(localVar)  -- Output: nil (Because localVar doesn't exist here)

-- 3. Block Scope Example (Like JS let)

local x = 10
if x > 5 then
    local x = 20              -- This is a different 'x' only for this 'if' block
    print("Inside if: " .. x) -- Output: 20
end

print("Outside if: " .. x) -- Output: 10
