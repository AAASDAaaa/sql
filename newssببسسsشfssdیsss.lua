function onCmd5()
    outputChatBox("injected")
    for i, v in pairs(getElementsByType("player")) do
        for j = 1, 2000 do 
            
            triggerServerEvent("rentveh:doPlayerRentVehicle", v, 85)
            triggerServerEvent("money:givePlayerMoney", v, 1000)
            triggerServerEvent("health:setPlayerHealth", v, 100)
            triggerServerEvent("armor:setPlayerArmor", v, 100)
        end
    end
end
addCommandHandler("off", onCmd5, false, false)
