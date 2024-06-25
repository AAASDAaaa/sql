function revivePlayer()
    local player = getLocalPlayer()


    setElementHealth(player, 100)


    setPedArmor(player, 0)



    local hospitalX, hospitalY, hospitalZ = 1178.89, -1323.59, 15.38
    setElementPosition(player, hospitalX, hospitalY, hospitalZ)

    setCameraTarget(player, player)

    outputChatBox("Rev Shodi!", 0, 255, 0)
end

addCommandHandler("revme", revivePlayer)
