


local menu_options = {
    '[0] - Map',
    '[1] - Inventory',
}

local function draw_menu()
    term.clear()
    term.setCursorPos(1, 1)
    print('Menu')
    print('----')
    for i, option in ipairs(menu_options) do
        print(i .. '. ' .. option)
    end
    print(' ')
    print('[DEBUG]: Cursor Position: ' .. term.getCursorPos())
end



function main()
    draw_menu()
    while true do
        local event, key = os.pullEvent('key')
        if key == keys.q then
            break
        end

        
        if key == keys[0] then
            print('Map')
        else if key == keys[1] then
            print('Inventory')
        end
        end
    end
end

main()