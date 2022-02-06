local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("metaldetector", function(src, item)
    TriggerClientEvent("al-metaldetector:detect", src)
end)

RegisterServerEvent('al-metaldetector:additems')
AddEventHandler('al-metaldetector:additems', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local Chance = math.random(1, 100)
    local Tier = GetTier(Chance)
    local Item = ItemPicker(Tier)
    local Amount = GetAmount(Tier)
    Player.Functions.AddItem(Item, Amount)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items[Item], "add")
    TriggerClientEvent('QBCore:Notify', src, "You found some ".. Item .."!", "success")
end)

function GetTier(Chance)
    local Tier = nil
    if Chance <= 90 then
        Tier = 'Tier1'
    elseif Chance <= 99 then
        Tier = 'Tier2'
    else
        Tier = 'Tier3'
    end
    return Tier
end

function ItemPicker(Tier)
    return Config.MetalLoot[Tier][math.random(1, #Config.MetalLoot[Tier])]
end

function GetAmount(Tier)
    local Amount = nil
    if Tier == 'Tier1' then
        Amount = math.random(1, 10)
    elseif Tier == 'Tier2' then 
        Amount = math.random(1, 3)
    else
        Amount = 1
    end
    return Amount
end
