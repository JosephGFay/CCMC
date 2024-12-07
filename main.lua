


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

local function draw_map()
    print('----- Riverside Map -----')



    print('Press Tab to return to the menu..')
end

local function draw_inventory()
    print('----- Inventory -----')


    print('Press Tab to return to the menu..')
end

function main()
    draw_menu()
    while true do
        local event, key = os.pullEvent('key')
        if key == keys.q then
            break
        end

        if key == key.tab then
            draw_menu()
        end

        if key == keys.m then
            draw_map()
        else if key == keys.i then
            draw_inventory()
        end
        end
    end
end

main()