local QBCore = exports['qb-core']:GetCoreObject()
local source = src
local Player = QBCore.Functions.GetPlayerData(src)

RegisterNetEvent('al-metaldetector:detect')
AddEventHandler('al-metaldetector:detect', function()
    if #(GetEntityCoords(PlayerPedId()) - Config.DetectionArea) < 1000.0 then
        TriggerEvent('animations:client:EmoteCommandStart', {"kneel3"})
        QBCore.Functions.Progressbar('metalennit', 'Searching The Area', math.random(5000, 10000), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function()  
	    TriggerServerEvent('al-metaldetector:additems')
        end)
    else
        QBCore.Functions.Notify("You Can't Dig Here", "error")
    end
end)