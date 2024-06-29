function showLoginPanel()
    outputChatBox("ok") 


    setElementFrozen(localPlayer, true)
    outputChatBox("Player frozen")

    setElementDimension(localPlayer, 1)
    setElementInterior(localPlayer, 0)
    outputChatBox("OK")


    setCameraMatrix(1677.52, -1635.02, 15.22, 1677.52, -1635.02, 14.22)
    fadeCamera(true)
    outputChatBox("Camera set")

    triggerEvent("accounts:login:showLoginWindow", localPlayer)
    outputChatBox("OK")
end

bindKey("q", "down", showLoginPanel)
addCommandHandler("login", showLoginPanel, false, false)
