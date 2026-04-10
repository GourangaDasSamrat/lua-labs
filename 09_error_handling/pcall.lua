local function dangerousFunction(name)
    if not name then error("Name is missing!") end
    return "Hello " .. name
end

-- pcall returns status (true/false) and result/error message
local status, result = pcall(dangerousFunction, nil)

if status then
    print("Success: " .. result)
else
    print("Caught error: " .. result) -- Output: Caught error: Name is missing!
end
