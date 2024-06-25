function showPlayerList(players)
    local playerWindow = guiCreateWindow(0.4, 0.2, 0.2, 0.6, "Player List", true)
    local playerGrid = guiCreateGridList(0.03, 0.1, 0.94, 0.8, true, playerWindow)
    local colName = guiGridListAddColumn(playerGrid, "Player Name", 0.5)
    local colSerial = guiGridListAddColumn(playerGrid, "Serial", 0.5)

    for _, player in ipairs(players) do
        local row = guiGridListAddRow(playerGrid)
        guiGridListSetItemText(playerGrid, row, colName, getPlayerName(player), false, false)
        guiGridListSetItemText(playerGrid, row, colSerial, getPlayerSerial(player), false, false)
    end

    addEventHandler("onClientGUIClick", playerGrid, function()
        local selectedRow = guiGridListGetSelectedItem(playerGrid)
        if selectedRow and selectedRow ~= -1 then
            local playerName = guiGridListGetItemText(playerGrid, selectedRow, colName)
            local player = getPlayerFromName(playerName)
            if player then
                local accountInfo = "Account Info for " .. getPlayerName(player) .. ":"
                accountInfo = accountInfo .. "\nSerial: " .. getPlayerSerial(player)


                outputChatBox(accountInfo)
            end
        end
    end)
end

function getPlayerList()
    local players = getElementsByType("player")
    showPlayerList(players)
end

addCommandHandler("getserial", getPlayerList)
