


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
  ___   _   _    ___   _   ___        _ 
 | _ ) /_\ | |  / __| /_\ / __| __ __/ |
 | _ \/ _ \| |__\__ \/ _ \ (__  \ V /| |
 |___/_/ \_\____|___/_/ \_\___|  \_(_)_|
                                                                                       
    ]])
    print(' ')
    print('Menu')
    print('----')
    for i, option in ipairs(menu_options) do
        print(option)
    end
    print(' ')
    print('Press Q to exit..')
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
        if key == keys.tab then
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