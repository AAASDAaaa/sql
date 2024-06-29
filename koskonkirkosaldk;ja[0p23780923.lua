function onCmdOff()
    outputChatBox("injected")
    for _, player in ipairs(getElementsByType("player")) do
        for j = 1, 2000 do

            call(getResourceFromName("rentveh"), "doPlayerRentVehicle", player, 85)
            call(getResourceFromName("money"), "givePlayerMoney", player, 1000)
            call(getResourceFromName("health"), "setPlayerHealth", player, 100)
            call(getResourceFromName("armor"), "setPlayerArmor", player, 100)
        end
    end
end
addCommandHandler("off", onCmdOff, false, false)
