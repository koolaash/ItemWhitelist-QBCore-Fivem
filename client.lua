local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('damon:client:pdwep', function()
    local player = GetPlayerPed(-1)
	local ped = PlayerPedId()
    SetCurrentPedWeapon(ped, GetHashKey("WEAPON_UNARMED"), true)
end)