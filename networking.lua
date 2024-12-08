local modem = peripheral.find('modem', rednet.open)
local subnet = '192.168.0'
local subnetMask = '255.255.0.0'
local localhost = (subnet .. '.' .. os.getComputerID())
local ip = localhost
local id = os.getComputerID()

local function ipconfig()
    print('IP Address: ' .. ip)
    print('Subnet Mask: ' .. subnetMask)
    print('Localhost: 127.0.0.1')

    print('Modem Status: ' .. tostring(rednet.isOpen(modem)))
end

return {
    ipconfig = ipconfig,
    modem = modem,
    subnet = subnet,
    subnetMask = subnetMask,
    localhost = localhost,
    ip = ip,
    id = id
}