


local menu_options = {
    '[0] - Map',
    '[1] - Inventory',
    '[2] - Sites',
}

local site_list = {
    '[0] - Train Parts',
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

local function draw_train_parts()
    
    local modem = peripheral.find('modem')


    modem.open(1)
    local event, side, channel, replyChannel, message, distance
    while true do
        term.clear()
        term.setCursorPos(1, 1)
        local event, key = os.pullEvent('key')
        if key == keys.tab then
            draw_menu()
            break
        end

        event, side, channel, replyChannel, message, distance = os.pullEvent('modem_message')

        print('----- Train Parts -----')
        print(' ')
        print('Message Recieved')
        print('Message: ' .. message)
        print(' ')
        print('Press Tab to return to the menu..')
    end

 
end

local function draw_sites()
    print('----- Sites -----')
    for i, site in ipairs(site_list) do
        print(site)
    end

    print('Press Tab to return to the menu..')

    while true do
        local event, key = os.pullEvent('key')
        if key == keys.tab then
            draw_menu()
            break
        end

        if key == keys.zero then
            draw_train_parts()
        end
    end

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

        if key == keys.two then
            draw_sites()
        end
    
    end
end

main()