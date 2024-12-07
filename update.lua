local urls = {
    main = 'https://raw.githubusercontent.com/JosephGFay/CCMC/refs/heads/main/main.lua',
}

for _, url in pairs(urls) do
    local success, err = pcall(function()
        shell.run('rom/programs/http/wget.lua', url, _ .. '.lua')
    end)
    
    if success then
        print('Update Successful')
    end
end

