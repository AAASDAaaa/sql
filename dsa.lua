function addNotification(msg,color)
	if not (msg) then
		return
	end
    msg2 = nil
    if color then
        infobox.color = color
    else
        infobox.color = {255,8,99}
    end
	local messageWidth = math.max(dxGetTextWidth(msg, 0.85, "default-bold"), dxGetTextWidth("", 0.85, "default-bold")) + 20
	local tileWidth = messageWidth
	infobox.tileWidth = tileWidth
	infobox.tileHeight = math.max(dxGetFontHeight(0.85, "default-bold") * 1 + 10, respc(40))
	infobox.tilePosX = (screenX - tileWidth) / 2
	
	infobox.moveDownTick = getTickCount()
	infobox.moveUpTick = infobox.moveDownTick + 1000 + ((msg and utfLen(msg) or 0)) * 125
	infobox.state = true
	infobox.message = {msg}
end

addEventHandler("onClientRender", getRootElement(),
	function ()
		if not infobox or not infobox.state then
			return
		end
		
		local tickCount = getTickCount()
		local x = infobox.tilePosX
		local y = -infobox.tileHeight
		local alpha = 0
		
		if tickCount >= infobox.moveDownTick and tickCount <= infobox.moveUpTick then
			alpha, y = interpolateBetween(0, -infobox.tileHeight, 0, 1, 50, 0, (tickCount - infobox.moveDownTick) / 500, "OutQuad")
		elseif tickCount >= infobox.moveUpTick then
			local progress = (tickCount - infobox.moveUpTick) / 500
			alpha, y = interpolateBetween(1, 50, 0, 0, -infobox.tileHeight, 0, progress, "OutQuad")
		
			if progress > 1 then
				infobox.state = false
			end
		end
		
		dxDrawRectangle(x, y, infobox.tileWidth, infobox.tileHeight, tocolor(50, 50, 50, 200 * alpha), true)
		dxDrawRectangle(x + 2, y + 2, infobox.tileWidth - 4, infobox.tileHeight - 4, tocolor(25, 25, 25, 175 * alpha), true)

		local progress = (tickCount - infobox.moveDownTick) / (infobox.moveUpTick - infobox.moveDownTick)

		if progress <= 1 then
			dxDrawRectangle(x, y + infobox.tileHeight - 2, infobox.tileWidth * (1 - progress), 2, tocolor(infobox.color[1], infobox.color[2], infobox.color[3], 255 * alpha), true)
		end
		dxDrawText(infobox.message[1], x, y, x + infobox.tileWidth, y + infobox.tileHeight, tocolor(255, 255, 255, alpha * 255), 0.85, "default-bold", "center", "center", true, false, true)
	end, true, "low-999999999"
)
addNotification("Test KOS.",{255,0,0})
