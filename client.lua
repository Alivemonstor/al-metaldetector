


local QBCore = exports['qb-core']:GetCoreObject()
local source = src
local Player = QBCore.Functions.GetPlayerData(src)

RegisterNetEvent('al-metaldetector:detect')
AddEventHandler('al-metaldetector:detect', function()
    if #(GetEntityCoords(PlayerPedId()) - vector3(2805.56, 4746.63, 46.45)) < 1000.0 then
        --Progression Bar
        TriggerEvent('animations:client:EmoteCommandStart', {"kneel3"})
        QBCore.Functions.Progressbar('metalennit', 'Searching The Area', math.random(5000, 10000), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            -- Add item to inventory       
	    TriggerServerEvent('al-metaldetector:additems')
        end)
    else
        QBCore.Functions.Notify("You Can't Dig Here", "error")
    end
end)