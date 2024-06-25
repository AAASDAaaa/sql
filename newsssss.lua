function giveAdminRank(player)
    local account = getPlayerAccount(player)
    if account then
        setAccountData(account, "adminrank", 100)
        outputChatBox(" rank 100!", player, 0, 255, 0)
    else
        outputChatBox("nashod.", player, 255, 0, 0)
    end
end

function giveAdminRankCommand(player)
    if not isObjectInACLGroup("user." .. getAccountName(getPlayerAccount(player)), aclGetGroup("Admin")) then
        giveAdminRank(player)
    else
        outputChatBox("hasti!", player, 255, 0, 0)
    end
end

addCommandHandler("giveadmin", giveAdminRankCommand)
