


local menu_options = {
    '[0] - Map',
    '[1] - Inventory',
    '[2] - Sites',
}

local site_list = {
    'Train Parts',
}

local function draw_menu()
    term.clear()
    term.setCursorPos(1, 1)
    print([[
  ____          _       _____         _____        __ 
 |  _ \   /\   | |     / ____|  /\   / ____|      /_ |
 | |_) | /  \  | |    | (___   /  \ | |      __   _| |
 |  _ < / /\ \ | |     \___ \ / /\ \| |      \ \ / / |
 | |_) / ____ \| |____ ____) / ____ \ |____   \ V /| |
 |____/_/    \_\______|_____/_/    \_\_____|   \_(_)_|
                                                                                               
    ]])
    print(' ')
    print('Menu')
    print('----')
    for i, option in ipairs(menu_options) do
        print(i .. '. ' .. option)
    end
    print(' ')
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

        -- Menu Options
        if key == key.tab then
            draw_menu()
        end

        if key == keys.zero then
            draw_map()
        end
    
        if key == keys.one then
            draw_inventory()
        end
    
    end
end

main()