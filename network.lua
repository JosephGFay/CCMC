local modem = peripheral.find('modem')

local function recieve_data(port)

    modem.open(port)
    while true do
        local event, side, channel, replyChannel, message, distance = os.pullEvent('modem_message')
        print('Message Recieved')
        print('Message: ' .. message)
    end
end
