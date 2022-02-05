local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('al-metaldetector:detect')
AddEventHandler('al-metaldetector:detect', function()
    if #(GetEntityCoords(PlayerPedId()) - Config.DetectionArea) < 1000.0 then
        TriggerEvent('animations:client:EmoteCommandStart', {"kneel3"})
        QBCore.Functions.Progressbar('InZone', 'Searching the area...', math.random(5000, 10000), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function()  
	    TriggerServerEvent('al-metaldetector:additems')
        end)
    else
        TriggerEvent('animations:client:EmoteCommandStart', {"kneel3"})
        QBCore.Functions.Progressbar('OutZone', 'Searching the area...', math.random(5000, 10000), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function()  
        QBCore.Functions.Notify("You found nothing, maybe try somewhere else.", "error")
        end)
    end
end)