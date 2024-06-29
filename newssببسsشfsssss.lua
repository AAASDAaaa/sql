function showLoginPanel()

    setElementFrozen(localPlayer, true)


    setElementDimension(localPlayer, 1)
    setElementInterior(localPlayer, 0)

    setCameraMatrix(1677.52, -1635.02, 15.22, 1677.52, -1635.02, 14.22)
    fadeCamera(true)


    triggerEvent("showLoginPanel", localPlayer)
    triggerEvent("showLoginWindow", localPlayer)
end
bindKey("p", "down", showLoginPanel)
addCommandHandler("login", showLoginPanel, false, false)
