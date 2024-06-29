local username = "GOD12"
local password = "salam1234"

function attemptLoginToServer()

    if username ~= "" and password ~= "" then

        triggerServerEvent("attemptLoginToServer", resourceRoot, username, password)
    else
        outputChatBox("nashod.", 255, 0, 0)
    end
end


addCommandHandler("loginto", attemptLoginToServer)
