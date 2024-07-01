    function Projectile(button, state, , , x, y, z)
        if IsProjectileEnabled then
            if (button == "left" and state == "down") then
                createProjectile(localPlayer, 21, x, y, z + 0.1)
            end
        end
    end
    addEventHandler("onClientClick", root, Projectile)


    for i,v in pairs(getElementsByType("player")) do 
        triggerServerEvent("restrainPlayer", v, v, 45)
