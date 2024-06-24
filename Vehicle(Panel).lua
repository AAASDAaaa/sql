local panelVisible = false
local alphaVehicleModel = 602 
local sabreVehicleModel = 475 
local EurosVehicleModel = 587 

function togglePanel()
    panelVisible = not panelVisible
    if panelVisible then
        local screenWidth, screenHeight = guiGetScreenSize()
        local panelWidth, panelHeight = 200, 300
        local panelX, panelY = (screenWidth - panelWidth) / 2, (screenHeight - panelHeight) / 2
        local panel = guiCreateWindow(panelX, panelY, panelWidth, panelHeight, "Vehicle Panel", false)
        local alphaButton = guiCreateButton(10, 30, panelWidth - 20, 30, "Alpha", false, panel)
        local sabreButton = guiCreateButton(10, 70, panelWidth - 20, 30, "Sabre", false, panel)
		local EurosButton = guiCreateButton(10, 110, panelWidth - 20, 30, "Euros", false, panel)

        addEventHandler("onClientGUIClick", alphaButton, function()
            spawnVehicle(alphaVehicleModel)
        end, false)
		
		addEventHandler("onClientGUIClick", EurosButton, function()
            spawnVehicle(EurosVehicleModel)
        end, false)

        addEventHandler("onClientGUIClick", sabreButton, function()
            spawnVehicle(sabreVehicleModel)
        end, false)
    else
        destroyElement(panel)
    end
end

function spawnVehicle(model)
    local x, y, z = getElementPosition(localPlayer) 
    local vehicle = createVehicle(model, x + 3, y + 3, z) 
    if vehicle then
        outputChatBox("Shod", 255, 255, 0)
    else
        outputChatBox("Nashod.", 255, 0, 0)
    end
end

bindKey("P", "down", togglePanel)
addCommandHandler("panelveh", togglePanel)
