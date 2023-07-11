function pdwep(src, itemData)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	local gun = itemData.name
    local ped = GetPlayerPed(src)

    if not Player then return end
    for i, weapon in pairs(Config.PoliceItems) do
        if weapon == gun then
            if Player.PlayerData.job.name == Config.jobName then else
                TriggerClientEvent('damon:client:pdwep', src)
		        TriggerClientEvent("progressbar:client:cancel", src) -- add your progressbar cancel event here
                TriggerClientEvent('QBCore:Notify', src, 'This is Police Item!!!', 'error') -- chnage to qbcore functions if this dosent work
            end
        end
    end
end

-- PASTE THE ABOVE CODE ANYWHERE IN qb-inventory>server>main.lua