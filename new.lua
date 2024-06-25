function listServerResources()
    local resources = getResources()
    local resourceNames = ""
    
    for i, resource in ipairs(resources) do
        local resourceName = getResourceName(resource)
        resourceNames = resourceNames .. resourceName .. ", "
    end

    outputChatBox("Server Resources: " .. string.sub(resourceNames, 1, -3), 255, 255, 0)
end

addCommandHandler("getres", listServerResources)
