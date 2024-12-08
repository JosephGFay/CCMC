-- Written by Balsac

local bridge = peripheral.find('meBridge')
local monitor = peripheral.find('monitor')
monitor.setTextScale(0.5)
monitor.setBackgroundColor(colors.black)
monitor.setCursorPos(1,1)
monitor.clear()
term.clear()
term.redirect(monitor)

function drawBar(startX, startY, count,total)

    local full = monitor.getSize()
    local max = (full-1)
    local filled math.floor((count/total)*max)

    term.setCursorPos(startX, startY)
    -- drawBox(startX, startY, endX, endY [, colour])
    paintutils.drawBox(startX, startY, max, startY+2, colors.gray)

    paintutils.drawLine(startX+1, startY+1, filled, startY+1, colors.lime)
    print(count)
end

