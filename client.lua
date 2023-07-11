RegisterNetEvent('damon:client:pdwep', function()
	local ped = PlayerPedId()
    SetCurrentPedWeapon(ped, GetHashKey("WEAPON_UNARMED"), true)
end)

-- PASTE THE ABOVE CODE ANYWHERE IN qb-inventory>client>main.lua