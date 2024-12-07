local urls = {
    main = 'https://raw.githubusercontent.com/JosephGFay/CCMC/refs/heads/main/main.lua',
}

local files = {
    main = 'main.lua',
}

local function delete_old_files()
    for _, file in pairs(files) do
        if fs.exists(file) then
            fs.delete(file)
        end
    end
end


local function download_files()
    for _, url in pairs(urls) do
        local success, err = pcall(function()
            shell.run('rom/programs/http/wget.lua', url, _ .. '.lua')
        end)
        
        if success then
            print('Update Successful')
        end
    end
end
local function main()
    download_files()
    delete_old_files()
end
    
main()
