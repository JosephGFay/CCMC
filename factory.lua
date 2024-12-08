term.setTextColor(colors.lime)

local menu_options = {
    '[0] - Factory: On',
    '[1] - Factory: Off',
}

local status

local function factoryOn()
    redstone.setOutput('left', false)
    status = true
end

local function factoryOff()
    redstone.setOutput('left', true)
    status = false
end

local function getFactoryStatus()
    return 'Factory Status: ' .. ((status) and 'Online' or 'Offline')
end


local function draw_menu()
    term.clear()
    term.setCursorPos(1, 1)
    print([[
  ___   _   ___    ___ _   ___ _____ ___  _____   __
 / __| /_\ / __|__| __/_\ / __|_   _/ _ \| _ \ \ / /
 \__ \/ _ \ (_|___| _/ _ \ (__  | || (_) |   /\ V / 
 |___/_/ \_\___|  |_/_/ \_\___| |_| \___/|_|_\ |_|  
                                                                                                                               
    ]])
    print(' ')
    print('Menu')
    print('----')
    for i, option in ipairs(menu_options) do
        print(option)
    end
    print(' ')
    print(getFactoryStatus())
    print('Press Q to exit..')
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
            factoryOn()
        end
    
        if key == keys.one then
            factoryOff()
        end
    
    end
end

main()