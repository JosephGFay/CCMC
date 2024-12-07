


local menu_options = {
    'Map',
    'Inventory',
}

local function draw_menu()
    term.clear()
    term.setCursorPos(1, 1)
    print('Menu')
    print('----')
    for i, option in ipairs(menu_options) do
        print(i .. '. ' .. option)
    end
end

function main()
    draw_menu()
    while true do
        local event, key = os.pullEvent('key')
        if key == keys.q then
            break
        end
    end
end