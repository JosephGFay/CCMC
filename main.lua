local bridge = peripheral.wrap("top")
local itemlist = bridge.listItems()
local monitor = peripheral.find('monitor')

local file = fs.open('favorites.txt', 'r')
local favorites = {}

if file then
    while true do
        local line = file.readLine()
        if not line then break end
        favorites[#favorites+1] = line
    end
end
file.close()

monitor.clear()
monitor.setCursorPos(1,1)
monitor.setTextScale(0.5)

local itemTable = {}

function checkFavorites(val)
    for _, v in ipairs(favorites) do
        if v == val then
            return true
        end
    end
end

for _, item in pairs(itemlist) do
    local itemEntry = {
        NAME = item.displayName,
        AMOUNT = item.amount
    }
    table.insert(itemTable, itemEntry)
end

table.sort(itemTable, function(a, b) return a.NAME < b.NAME end)

for _, item in pairs(itemTable) do
    if checkFavorites(item.NAME) then
        monitor.write(item.NAME .. " x" .. item.AMOUNT)
        monitor.setCursorPos(1, _)
    else
        monitor.write(item.NAME .. " x" .. item.AMOUNT)
        monitor.setCursorPos(1, _)
    end


end