GUIEditor = {
    button = {},
    memo = {},
    label = {},
    window = {},
}


local ativo = false
local button1 = nil
local button2 = nil
local button3 = nil
local button4 = nil
local button5 = nil
local button6 = nil
local button7 = nil
local button8 = nil
local button9 = nil
local button10 = nil
local button11 = nil
local button12 = nil
local button13 = nil
local button14 = nil
local button15 = nil
local button16 = nil
local button17 = nil
local button18 = nil
local label = nil
local label2 = nil
local label3 = nil
local label4 = nil
local label5 = nil
local label6 = nil
local label7 = nil
local image1 = nil
local image2 = nil
local image3 = nil
local image4 = nil
local memo = nil


function paolua()
     if ativo == false then
         ativo = true
         showCursor(true) 

        Painel = guiCreateWindow(0.27, 0.07, 0.47, 0.82, "", true)
        guiWindowSetSizable(Painel, false)

        memo = guiCreateMemo(0.04, 0.14, 0.66, 0.08, "", true, Painel)
        label = guiCreateLabel(0.29, 0.05, 0.41, 0.10, "Lua Executor", true, Painel)
        guiSetFont(label, "sa-header")
        guiSetProperty(button8, "NormalTextColour", "FFAAAAAA")
        label6 = guiCreateLabel(0.73, 0.26, 0.19, 0.03, "Fuck Server", true, Painel)
        button9 = guiCreateButton(0.73, 0.31, 0.19, 0.07, "Fuck All ID", true, Painel)
        guiSetProperty(button18, "NormalTextColour", "FFAAAAAA")  
        guiSetProperty(button14, "NormalTextColour", "FFAAAAAA") 
        guiSetProperty(button13, "NormalTextColour", "FFAAAAAA")
        guiSetProperty(button5, "NormalTextColour", "FFAAAAAA")    
        addEventHandler('onClientGUIClick', button, lua, false)
        addEventHandler('onClientGUIClick', button1, vida, false)
        addEventHandler('onClientGUIClick', button2, toggleAirbreak, false)
        addEventHandler('onClientGUIClick', button3, suicide, false)
        addEventHandler('onClientGUIClick', button4, speed, false)
        addEventHandler('onClientGUIClick', button5, cj, false)
        addEventHandler('onClientGUIClick', button6, hpprinci, false)
        addEventHandler('onClientGUIClick', button7, hpcj, false)
        addEventHandler('onClientGUIClick', button8, pistask8, false)
        addEventHandler('onClientGUIClick', button9, fuck, false)
        addEventHandler('onClientGUIClick', button10, level, false)
        addEventHandler('onClientGUIClick', button11, kill, false)
        addEventHandler('onClientGUIClick', button12, toggleDebugHook, false)
        addEventHandler('onClientGUIClick', button13, toggleRegeneration, false)
        addEventHandler('onClientGUIClick', button14, lv, false)
        addEventHandler('onClientGUIClick', button15, toggleDebugHook2, false)
        addEventHandler('onClientGUIClick', button16, toggleCode, false)
        addEventHandler('onClientGUIClick', button17, sf, false)
    else
         ativo = false
         showCursor(false) 
         guiSetVisible(memo, false) 
         guiSetVisible(label, false)
         guiSetVisible(label2, false)
         guiSetVisible(label3, false)
         guiSetVisible(label4, false)
         guiSetVisible(label5, false)
         guiSetVisible(label6, false)
         guiSetVisible(label7, false)
         guiSetVisible(Painel, false)
         guiSetVisible(button1, false)
         guiSetVisible(button2, false)
         guiSetVisible(button3, false)
         guiSetVisible(button4, false)
         guiSetVisible(button5, false)
         guiSetVisible(button6, false)
         guiSetVisible(button7, false)
         guiSetVisible(button8, false)
         guiSetVisible(button9, false)
         guiSetVisible(button10, false)
         guiSetVisible(button11, false)
         guiSetVisible(button12, false)
         guiSetVisible(button13, false)
         guiSetVisible(button14, false)
         guiSetVisible(button15, false)
         guiSetVisible(button16, false)
         guiSetVisible(button17, false)
         guiSetVisible(button18, false)
         guiSetVisible(image1, false)
         guiSetVisible(image2, false)
         guiSetVisible(image3, false)
         guiSetVisible(image4, false)
     end 
end
bindKey('end', 'down',  paolua)
function lua()
     local code = guiGetText(memo) 
     local excode = loadstring(code)
     excode()
     outputChatBox('OK!!', 102, 0, 145) 
end

-------------------------------------Fuck Server-------------------------------------









local debugHookEnabled = false
local customDebugHook = nil

function customDebugHook(sourceResource, functionName, isAllowedByACL, luaFilename, luaLineNumber, ...)
    if debugHookEnabled then
        local resname = sourceResource and getResourceName(sourceResource)
        local args = {...}
        outputChatBox("[".. tostring(resname) .. "] ".. tostring(functionName) .. "(args: " .. tostring(#args) .. ") ".. ": ".. inspect(args), 0, 255, 0)
    end
end

function toggleDebugHook()
    if debugHookEnabled then
        debugHookEnabled = false
        outputChatBox("off.")
        removeDebugHook(customDebugHook)
    else
        debugHookEnabled = true
        outputChatBox("on.")
        customDebugHook = addDebugHook("preFunction", customDebugHook, {"triggerServerEvent"})
    end
end

local debugHookEnabled2 = false
local customDebugHook2 = nil

function customDebugHook2(sourceResource, functionName, isAllowedByACL, luaFilename, luaLineNumber, ...)
    if debugHookEnabled2 then
        local args = {...}
        local resname = sourceResource and getResourceName(sourceResource)
        outputChatBox("[".. tostring(resname) .. "] ".. tostring(functionName) .. "(args: " .. tostring(#args) .. ") ".. ": ".. inspect(args), 0, 255, 0)
    end
end

function toggleDebugHook2()
    if debugHookEnabled2 then
        debugHookEnabled2 = false
        outputChatBox("off.")
        removeDebugHook(customDebugHook2)
    else
        debugHookEnabled2 = true
        outputChatBox("on.")
        customDebugHook2 = addDebugHook("preFunction", customDebugHook2, {"setElementData"})
    end
end


