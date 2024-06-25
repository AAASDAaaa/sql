local isDebugHookEnabled = false

function toggleDebugHook()
    isDebugHookEnabled = not isDebugHookEnabled
    if isDebugHookEnabled then
        addDebugHook("preFunction", function(sourceResource, functionName, isAllowedByACL, luaFilename, luaLineNumber, ...)
            local args = {...}
            outputChatBox("Debug Hook Enabled - Args: " .. inspect(args))
        end, {"triggerServerEvent"})
        outputChatBox("Debug Hook Enabled")
    else
        removeDebugHook("preFunction")
        outputChatBox("Debug Hook Disabled")
    end
end

addCommandHandler("geta", toggleDebugHook)
