
**ITEMS WHITELIST**
-----

- This script lets you whitelist some items usage to a particular job only


**Installation**
---
- Installation is very easy and simple
- Drag and drop to `[qb]` folder or ensure it in `server.cfg`

```lua
  pdwep(src, itemInfo)
```
    
- Copy the code given above and head to `qb-inventory>server>main.lua`
- Search for `RegisterNetEvent('inventory:server:UseItemSlot', function(slot)` & `RegisterNetEvent('inventory:server:UseItem', function(slot)`
- Then paste the copied line in that code like in the code given below

```lua
 RegisterNetEvent('inventory:server:UseItemSlot', function(slot)
	local src = source
	local itemData = GetItemBySlot(src, slot)
	if not itemData then return end
	local itemInfo = QBCore.Shared.Items[itemData.name]
	if itemData.type == "weapon" then
		TriggerClientEvent("inventory:client:UseWeapon", src, itemData, itemData.info.quality and itemData.info.quality > 0)
		TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "use")
		pdwep(src, itemInfo)
	elseif itemData.useable then
		UseItem(itemData.name, src, itemData)
		TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "use")
		pdwep(src, itemInfo)
	end
end)

RegisterNetEvent('inventory:server:UseItem', function(inventory, item)
	local src = source
	if inventory ~= "player" and inventory ~= "hotbar" then return end
	local itemData = GetItemBySlot(src, item.slot)
	if not itemData then return end
	local itemInfo = QBCore.Shared.Items[itemData.name]
	if itemData.type == "weapon" then
		TriggerClientEvent("inventory:client:UseWeapon", src, itemData, itemData.info.quality and itemData.info.quality > 0)
		TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "use")
		pdwep(src, itemInfo)
	else
		UseItem(itemData.name, src, itemData)
		TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "use")
		pdwep(src, itemInfo)
	end
end)
```

- You need to add that line in both events else people will be able to exploit it
- For support join my [Discord](https://discord.gg/S7SXz7E8St)

**DEPENDENCIES**
-----

- QBCore - https://github.com/qbcore-framework
- QB-Inventory - https://github.com/qbcore-framework/qb-inventory
## Authors

- [@koolaash](https://github.com/koolaash)