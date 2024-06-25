function removeAllObjects()
    local objects = getElementsByType("object")
    for i, object in ipairs(objects) do
        destroyElement(object)
    end
end

addCommandHandler("revobj", removeAllObjects)
