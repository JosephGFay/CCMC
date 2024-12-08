term.setTextColor(colors.lime)

local menu_options = {
    '[0] - Factory: On',
    '[1] - Factory: Off',
}

local status = not redstone.getOutput('left')

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
  ___   _   ___    ___ _   ___ _____ ___  ___ 
 / __| /_\ / __|__| __/_\ / __|_   _/ _ \/ __|
 \__ \/ _ \ (_|___| _/ _ \ (__  | || (_) \__ \
 |___/_/ \_\___|  |_/_/ \_\___| |_(_)___/|___/
                                                                                                                                                                   
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