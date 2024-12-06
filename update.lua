local url = 'https://raw.githubusercontent.com/JosephGFay/CCMC/refs/heads/main/main.lua'
local filename = main.lua

local success, err = pcall(function()
    shell.run('rom/programs/http/wget.lua', url, filename)
end)

if success then
    print('Update Successful')
end