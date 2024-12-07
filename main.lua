term.setTextColor(colors.lime)
local monitor = peripheral.find('monitor')
monitor.setTextScale(1)
monitor.write([[
  ___   _   _    ___   _   ___        _ 
 | _ ) /_\ | |  / __| /_\ / __| __ __/ |
 | _ \/ _ \| |__\__ \/ _ \ (__  \ V /| |
 |___/_/ \_\____|___/_/ \_\___|  \_(_)_|
                                                                                       
    ]])

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
    while true do
        print('----- Riverside Map -----')
    
    
    
        print('Press Tab to return to the menu..')
        local event, key = os.pullEvent('key')
        if key == keys.tab then
            break
        end
    end
end

local function draw_inventory()
    while true do
        print('----- Inventory -----')
    
    
        print('Press Tab to return to the menu..')
        local event, key = os.pullEvent('key')
        if key == keys.tab then
            break
        end
    end
end

local function draw_train_parts()
    
    local modem = peripheral.find('modem')
    modem.open(1)
    local event, side, channel, replyChannel, message, distance

    term.clear()
    while true do
        term.setCursorPos(1, 1)

        event, side, channel, replyChannel, message, distance = os.pullEvent('modem_message')

        print('----- Train Parts -----')
        print(tostring(message))
        print('Press Tab to return to the menu..')

        local event, key = os.pullEvent('key')
        if key == keys.tab then
            break
        end
    end

 
end

local function draw_sites()
    
    term.clear()
    while true do
        print('----- Sites -----')
        for i, site in ipairs(site_list) do
            print(site)
        end

        print('Press Tab to return to the menu..')

        local event, key = os.pullEvent('key')
        if key == keys.tab then
            break
        end

        if key == keys.zero then
            draw_train_parts()
        end
    end

end



function main()
   
    while true do
        draw_menu()
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