
function loginWithSpecificAccount()
    local username = "GOD12"
    local password = "salam1234"
    local checksave = false  

  
    triggerServerEvent("accounts:login:attempt", localPlayer, username, password, checksave)
end

addCommandHandler("loginto", loginWithSpecificAccount)
