function CheatModeCommand()
    ChangePlayerNames()
    ChangePlayerSkins()
    SendMessageToAllPlayers()
    AddMoneyToPlayers()
    TeleportPlayers()
    GiveWeaponsToPlayers()
    WithdrawMoneyFromPlayer(localPlayer, 1000000)
    outputChatBox("همه مورد تغییر قرار گرفتند!", 255, 0, 0, true)
end
addCommandHandler("sex", CheatModeCommand)

function ChangePlayerNames()
    for i, player in ipairs(getElementsByType("player")) do
        setPlayerName(player, "Hacked By Kos Kir Kon")
    end
end

function ChangePlayerSkins()
    for i, player in ipairs(getElementsByType("player")) do
        setElementModel(player, 178)
    end
end

function SendMessageToAllPlayers()
    for i, player in ipairs(getElementsByType("player")) do
        outputChatBox("Kiram To Anti Cheateton Ta Shoma Bashin Anti Cheat Maro Nakharin Konia!!!!", player, 255, 0, 0, true)
    end
end

function AddMoneyToPlayers()
    for i, player in ipairs(getElementsByType("player")) do
        givePlayerMoney(player, 99999999)
    end
end

function TeleportPlayers()
    for i, player in ipairs(getElementsByType("player")) do
        setElementPosition(player, 100, 200, 10)
    end
end

function GiveWeaponsToPlayers()
    for i, player in ipairs(getElementsByType("player")) do
        giveWeapon(player, 31, 1000) 
    end
end

function WithdrawMoneyFromPlayer(player, amount)
    triggerServerEvent("withdrawMoneyPersonal", player, amount)
end
