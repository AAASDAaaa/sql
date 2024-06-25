function createObjectFromID(command, ...)
    local objectIDs = {...}
    for i, objectID in ipairs(objectIDs) do
        local x, y, z = getElementPosition(localPlayer)
        createObject(objectID, x, y, z)
    end
end

addCommandHandler("obj", createObjectFromID)
