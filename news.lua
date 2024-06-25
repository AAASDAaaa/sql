local resourceMenu = nil

function showResourceMenu(command, ...)
    local resourceNames = { ... }
    
    if #resourceNames == 0 then
        outputChatBox("bezan: /showres [resource1] [resource2] ...", 255, 0, 0)
        return
    end

    if resourceMenu then
        destroyElement(resourceMenu)
    end

    resourceMenu = guiCreateWindow(0.3, 0.3, 0.4, 0.4, "Resource Codes", true)
    local resourceMemo = guiCreateMemo(0, 0.1, 1, 0.8, "", true, resourceMenu)
    local closeButton = guiCreateButton(0.4, 0.9, 0.2, 0.1, "Close", true, resourceMenu)

    for i, resourceName in ipairs(resourceNames) do
        local resource = getResourceFromName(resourceName)
        if resource then
            local resourceRoot = getResourceRootElement(resource)
            if resourceRoot then
                local resourceScripts = getResources()
                for i, script in ipairs(resourceScripts) do
                    if getResourceName(script) == resourceName then
                        local resourceMeta = xmlLoadFile(":" .. getResourceName(script) .. "/meta.xml")
                        if resourceMeta then
                            local scriptFiles = xmlNodeGetChildren(resourceMeta)
                            for _, file in ipairs(scriptFiles) do
                                local fileName = xmlNodeGetAttribute(file, "src")
                                local scriptFile = fileOpen(":" .. getResourceName(script) .. "/" .. fileName)
                                if scriptFile then
                                    local scriptContent = fileRead(scriptFile, fileGetSize(scriptFile))
                                    fileClose(scriptFile)
                                    guiSetText(resourceMemo, guiGetText(resourceMemo) .. "File: " .. fileName .. " Content: " .. scriptContent .. "\n")
                                end
                            end
                            xmlUnloadFile(resourceMeta)
                        end
                    end
                end
            end
        end
    end

    addEventHandler("onClientGUIClick", closeButton, function()
        destroyElement(resourceMenu)
    end, false)
end

addCommandHandler("showres", showResourceMenu)
