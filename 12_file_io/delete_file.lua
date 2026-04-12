-- os.remove is used to delete files
local success, err = os.remove("letter.txt")

if success then
    print("File deleted successfully.")
else
    print("Error deleting file: " .. err)
end
