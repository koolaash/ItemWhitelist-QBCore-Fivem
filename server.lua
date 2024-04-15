function pdweapon(src, itemData)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local gun = itemData.name
    local ped = GetPlayerPed(src)

    if not Player then return end
    for i, weapon in pairs(Config.PoliceWeapon) do
        if weapon == gun then
            if Player.PlayerData.job.name == "police" then else
                TriggerClientEvent('damon:client:pdwep', src)
                TriggerClientEvent("progressbar:client:cancel", src) -- damon edit dont change only change if using different progressbar
                TriggerClientEvent('QBCore:Notify', src, 'This is Police Item!!!', 'error')
            end
        end
    end
end

-- PASTE THE ABOVE CODE ANYWHERE IN qb-inventory>server>main.lua