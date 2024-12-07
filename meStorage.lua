-- Written by Balsac

local bridge = peripheral.find('meBridge')


function drawBar()
    term.setCursorPos(1, 1)
    -- drawBox(startX, startY, endX, endY [, colour])
    paintutils.drawBox(3, 3, 38, 5, colors.gray)
end