RegisterCommand('setloadout', function(source, args)
    local player = GetPlayerPed(-1)
    if args[1] == 'leo' then
        GiveWeaponToPed(player, GetHashKey("weapon_carbinerifle"), 200, false, false) 
        GiveWeaponToPed(player, GetHashKey("weapon_stungun"), 30, false, false) 
        GiveWeaponToPed(player, GetHashKey("weapon_flashlight"), 1, false, false) 
        GiveWeaponToPed(player, GetHashKey("weapon_combatpistol"), 200, false, false) 
        GiveWeaponComponentToPed(player, GetHashKey("weapon_carbinerifle"), GetHashKey('COMPONENT_AT_AR_FLSH'))
        GiveWeaponComponentToPed(player, GetHashKey("weapon_combatpistol"), GetHashKey('COMPONENT_AT_PI_FLSH'))
        notify("~b~Weapons: ~c~Leo Loadout Equipped")
    elseif args[1] == 'civ' then
        GiveWeaponToPed(player, GetHashKey("weapon_knife"), 1, false, false) 
        GiveWeaponToPed(player, GetHashKey("weapon_combatpistol"), 200, false, false)
        GiveWeaponComponentToPed(player, GetHashKey("weapon_combatpistol"), GetHashKey('COMPONENT_AT_PI_FLSH'))
        notify("~b~Weapons: ~c~Civilian Loadout Equipped")
    elseif args[1] == 'fire' then 
        GiveWeaponToPed(player, GetHashKey("weapon_fireextinguisher"), 200, false, false)
        GiveWeaponToPed(player, GetHashKey("weapon_battleaxe"), 200, false, false)
        GiveWeaponToPed(player, GetHashKey("weapon_stungun"), 200, false, false)
        notify("~b~Weapons: ~c~Fire Loadout Equipped")
    elseif args[1] == 'swat' then
        GiveWeaponToPed(player, GetHashKey("weapon_carbinerifle"), 200, false, false)
        GiveWeaponToPed(player, GetHashKey("weapon_heavysniper"), 200, false, false)
        GiveWeaponToPed(player, GetHashKey("weapon_bzgas"), 200, false, false)
        GiveWeaponToPed(player, GetHashKey("weapon_smokegrenade"), 200, false, false)
        GiveWeaponToPed(player, GetHashKey("weapon_combatpistol"), 200, false, false)
        GiveWeaponToPed(player, GetHashKey("weapon_pumpshotgun"), 200, false, false)
        GiveWeaponToPed(player, GetHashKey("weapon_battleaxe"), 200, false, false)
        GiveWeaponComponentToPed(player, GetHashKey("weapon_carbinerifle"), GetHashKey('COMPONENT_AT_AR_FLSH'))
        GiveWeaponComponentToPed(player, GetHashKey("weapon_combatpistol"), GetHashKey('COMPONENT_AT_PI_FLSH'))
        notify("~b~Weapons: ~c~Swat Loadout Equipped")
    else
        notify('~b~Weapons: ~r~You did not enter a valid loadout type. ~c~(types: leo, civ, fire, swat')
    end
end)

function notify(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end

