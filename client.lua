RegisterNetEvent('damon:client:pdwep', function()
	local ped = PlayerPedId()
    TriggerClientEvent("progressbar:client:cancel", src)
    SetCurrentPedWeapon(ped, GetHashKey("WEAPON_UNARMED"), true)
end)

-- PASTE THE ABOVE CODE ANYWHERE IN qb-inventory>client>main.lua