-- "r" mode: read
local file = io.open("letter.txt", "r")

if file then
    local content = file:read("*a") -- Read the entire file
    print("--- File Content Start ---")
    print(content)
    print("--- File Content End ---")
    file:close()
else
    print("Error: File not found!")
end
