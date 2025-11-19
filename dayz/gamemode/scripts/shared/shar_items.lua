local items = {
    {
        Name = "Baseball Bat",
        Description = "Sturdy wooden club for cracking skulls when ammunition runs dry.",
        Model = "models/weapons/w_basebat.mdl",
        Weight = 2,
        LootType = "Basic",
        Price = 50,
        Credits = 1,
        SpawnChance = 10,
        SpawnOffset = Vector(0, 0, 0),
        Weapon = "weapon_bat_dayz",
        CanBeSold = true,
    },

    {
        Name = "Airdrop Grenade",
        Description = "Signal grenade that summons a helicopter to drop a random supply crate at its landing zone.",
        Model = "models/weapons/w_eq_fraggrenade_thrown.mdl",
        LootType = "Weapon",
        Weight = 0.8,
        SpawnChance = 1,
        Credits = 10,
        useFunc = function(ply, item)
            if not ply:IsValid() then return true end
            GAMEMODE.UseAirDrop(ply)
            return true
        end
    },

    {
        Name = "Crowbar",
        Description = "Weighted steel pry bar that doubles as a brutal melee weapon.",
        Model = "models/weapons/w_crowbar.mdl",
        Weight = 5,
        LootType = "Basic",
        Price = 50,
        Credits = 20,
        SpawnChance = 25,
        SpawnOffset = Vector(0, 0, 0),
        Weapon = "weapon_crowbar_dayz",
        CanBeSold = true,
    },

    {
        Name = "Soda Can",
        Description = "Sugary canned drink that provides a quick boost to thirst.",
        Model = "models/props_junk/PopCan01a.mdl",
        Weight = 0.03,
        LootType = "Basic",
        Price = 5,
        CanBeSold = true,
        Credits = 1,
        SpawnChance = 60,
        SpawnOffset = Vector(0, 0, 6),
        useFunc = function(ply, item)
            ply:Drink(15)
        end
    },

    {
        Name = "Can'o'beans",
        Description = "Hearty canned beans that ease hunger when you're on the move.",
        Model = "models/props_junk/garbage_metalcan001a.mdl",
        Weight = 1,
        Price = 7,
        Credits = 1,
        LootType = "Basic",
        CanBeSold = true,
        SpawnChance = 45,
        SpawnOffset = Vector(0, 0, 6),
        useFunc = function(ply, item)
            ply:Eat(12)
        end
    },

    {
        Name = "Beer",
        Description = "Foamy brew that cools you off with a light thirst refill.",
        Model = "models/props_junk/garbage_glassbottle001a.mdl",
        Weight = 0.78,
        LootType = "Basic",
        Price = 20,
        CanBeSold = true,
        Credits = 1,
        SpawnChance = 60,
        SpawnOffset = Vector(0, 0, 9),
        useFunc = function(ply, item)
            ply:Drink(13)
        end
    },

    {
        Name = "Old Milk",
        Description = "Questionable carton that barely hydrates but might be your last resort.",
        Model = "models/props_junk/garbage_milkcarton002a.mdl",
        Weight = 0.06,
        LootType = "Basic",
        Price = 5,
        Credits = 1,
        CanBeSold = true,
        SpawnChance = 40,
        SpawnOffset = Vector(0, 0, 8),
        useFunc = function(ply, item)
            ply:Drink(8)
        end
    },

    {
        Name = "Stale Take-away",
        Description = "Cold leftovers that fill a small portion of your hunger.",
        Model = "models/props_junk/garbage_takeoutcarton001a.mdl",
        Weight = 1,
        LootType = "Basic",
        Price = 8,
        CanBeSold = true,
        SpawnChance = 90,
        SpawnOffset = Vector(0, 0, 15),
        useFunc = function(ply, item)
            ply:Eat(8)
        end
    },

    {
        Name = "Water Melon",
        Description = "Massive melon that refreshes both hunger and thirst at once.",
        Model = "models/props_junk/watermelon01.mdl",
        Weight = 5,
        Price = 10,
        CanBeSold = true,
        Credits = 1,
        LootType = "Basic",
        SpawnChance = 55,
        SpawnOffset = Vector(0, 0, 7),
        useFunc = function(ply, item)
            ply:Eat(10)
            ply:Drink(12)
        end
    },

    {
        Name = "Bunch'o'Bananas",
        Description = "Bundle of bananas that restores a generous chunk of hunger.",
        Model = "models/props/cs_italy/bananna_bunch.mdl",
        Weight = 1,
        LootType = "Basic",
        Price = 6,
        CanBeSold = true,
        Credits = 1,
        SpawnChance = 57,
        SpawnOffset = Vector(0, 0, 2),
        useFunc = function(ply, item)
            ply:Eat(15)
        end
    },

    {
        Name = "Orange",
        Description = "Fresh citrus snack for a light hunger top-off.",
        Model = "models/props/cs_italy/orange.mdl",
        Weight = 0.30,
        LootType = "Basic",
        CanBeSold = true,
        Price = 4,
        Credits = 1,
        SpawnChance = 65,
        SpawnOffset = Vector(0, 0, 3),
        useFunc = function(ply, item)
            ply:Eat(9)
        end
    },

    {
        Name = "Fish",
        Description = "Fresh catch that provides a decent meal without cooking.",
        Model = "models/props/cs_militia/fishriver01.mdl",
        Weight = 2,
        LootType = "Basic",
        Price = 5,
        CanBeSold = true,
        SpawnChance = 20,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        useFunc = function(ply, item)
            ply:Eat(10)
        end
    },

    {
        Name = "Painkillers",
        Description = "Instant pain relief that restores a quick burst of health.",
        Model = "models/w_models/weapons/w_eq_painpills.mdl",
        Weight = 0.08,
        LootType = "Basic",
        Credits = 1,
        Price = 25,
        CanBeSold = true,
        SpawnChance = 40,
        SpawnOffset = Vector(0, 0, 0),
        useFunc = function(ply, item)
            ply:Heal(15, true)
        end
    },

    {
        Name = "Bandages",
        Description = "Sterile wraps that stop bleeding and heal moderate wounds.",
        Model = "models/w_models/weapons/w_eq_medkit.mdl",
        Weight = 0.5,
        LootType = "Basic",
        Price = 50,
        CanBeSold = true,
        Price = 80,
        SpawnChance = 30,
        SpawnOffset = Vector(0, 0, 0),
        useFunc = function(ply, item)
            ply:Heal(35, false)
        end
    },

    {
        Name = "Flashlight",
        Description = "Handheld flashlight for lighting dark rooms, caves, or tunnels.",
        Model = "models/raviool/flashlight.mdl",
        Weight = 0.32,
        Price = 10,
        CanBeSold = true,
        CamOffset = 0.25,
        SpawnChance = -1,
        SpawnOffset = Vector(0, 0, 0),
        SpawnAngle = Angle(0, 0, 0),
        LootType = "Weapon",
    },

    {
        Name = "Cheetah",
        Description = "Perk that doubles sprint distance and stamina regeneration.",
        Model = "models/props_junk/shoe001a.mdl",
        Weight = 0,
        Credits = 2,
        LootType = "Perk",
        CamOffset = 0.4,
        SpawnChance = 0,
        SpawnOffset = Vector(0, 0, 3.5),
        useFunc = function(ply, item)
            ply:GivePerk(1)
        end
    },

    {
        Name = "Strong Back",
        Description = "Perk that permanently doubles your carry weight capacity.",
        Model = "models/Fallout 3/Campish_Pack.mdl",
        Weight = 0,
        Credits = 5,
        LootType = "Perk",
        CamOffset = 1.8,
        SpawnChance = 0,
        SpawnOffset = Vector(0, 0, 3.5),
        useFunc = function(ply, item)
            ply:GivePerk(2)
        end
    },

    {
        Name = "Fresh Man's Luck",
        Description = "Perk that gives a chance to spawn with extra loot items.",
        Model = "models/items/item_item_crate.mdl",
        Weight = 0,
        Credits = 3,
        CamOffset = 0.2,
        LootType = "Perk",
        SpawnChance = 2,
        SpawnOffset = Vector(0, 0, 3.5),
        useFunc = function(ply, item)
            ply:GivePerk(3)
        end
    },

    {
        Name = "Extra Items",
        Description = "Perk that guarantees twice the normal loot when you spawn.",
        Model = "models/items/item_item_crate.mdl",
        Weight = 0,
        Credits = 5,
        CamOffset = 0.8,
        LootType = "Perk",
        SpawnChance = 0,
        SpawnOffset = Vector(0, 0, 3.5),
        useFunc = function(ply, item)
            ply:GivePerk(4)
        end
    },

    {
        Name = "Zombie Slayer",
        Description = "Perk that lets you deal fifty percent more damage to zombies.",
        Model = "models/zombie/zm_classic_01.mdl",
        Weight = 0,
        Credits = 1,
        LootType = "Perk",
        CamOffset = 3,
        SpawnChance = 0,
        SpawnOffset = Vector(0, 0, 3.5),
        useFunc = function(ply, item)
            ply:GivePerk(5)
        end
    },

    {
        Name = "Ghillie Suit",
        Description = "Full-body camouflage suit that helps you disappear in foliage.",
        Model = "models/props/cs_militia/footlocker01_closed.mdl",
        Weight = 3,
        Price = 200,
        CanBeSold = true,
        SpawnChance = 10,
        SpawnOffset = Vector(0, 0, 10),
        CamOffset = 1.5,
        SpawnAngle = Angle(0, 0, 0),
        LootType = "Weapon",
        useFunc = function(ply, item)
            ply:setCharModel(99, ply.clothes, ply.gender)
        end
    },

    {
        Name = "Binoculars",
        Description = "High powered optics for scouting enemies from afar.",
        Model = "models/weapons/W_binoculars.mdl",
        Weight = 3,
        LootType = "Weapon",
        CanBeSold = true,
        Price = 25,
        CamOffset = 0.5,
        SpawnChance = 0,
        SpawnOffset = Vector(0, 0, 0),
        Weapon = "weapon_binoculars_1",
    },

    {
        Name = "Jerry can",
        Description = "Heavy fuel can that refills a vehicle by up to forty percent.",
        Model = "models/props_junk/gascan001a.mdl",
        Price = 50,
        Weight = 10,
        CanBeSold = true,
        LootType = "Basic",
        SpawnChance = 0,
        SpawnOffset = Vector(0, 0, 14),
        useFunc = function(ply, item)
            if SERVER then
                local tr = ply:GetEyeTrace()
                if (tr.Entity and tr.Entity:IsValid() and tr.Entity:IsVehicle()) then
                    if (tr.Entity:GetNWInt("fuel") < 100) then
                        if (tr.Entity:GetNWInt("fuel") + 40 <= 100) then
                            tr.Entity:SetNWInt("fuel", tr.Entity:GetNWInt("fuel") + 40)
                            ply:ChatPrint("Refueled for 40% of its tank capacity")
                        else
                            tr.Entity:SetNWInt("fuel", 100)
                            ply:ChatPrint("The fuel tank is now full")
                        end
                        ply:EmitSound("ambient/water/water_spray1.wav", 100, 100)
                    else
                        ply:ChatPrint("The fuel tank is already full")
                        return true
                    end
                else
                    ply:ChatPrint("You are not facing a vehicle")
                    return true
                end
            end
        end
    },

    {
        Name = "Large Backpack",
        Description = "Massive pack that doubles your inventory capacity and does not stack.",
        Model = "models/Fallout 3/Campish_Pack.mdl",
        Weight = 0,
        LootType = "Basic",
        CanBeSold = true,
        Price = 750,
        CamOffset = 2,
        SpawnChance = 0,
        SpawnOffset = Vector(0, 0, 5),
        SpawnAngle = Angle(0, 90, 0),
    },

    {
        Name = "Repair Wrench",
        Description = "Mechanic's wrench used to repair vehicles, even better with repair skills.",
        Model = "models/props_c17/tools_wrench01a.mdl",
        Price = 25,
        Weight = 1,
        CanBeSold = true,
        LootType = "Basic",
        CamOffset = 0.5,
        SpawnChance = 0,
        SpawnOffset = Vector(0, 0, 2),
        useFunc = function(ply, item)
            if SERVER then
                local tr = ply:GetEyeTrace()
                if not ply:HasSkill(13) then ply:ChatPrint("You do not have the skill to use this item") return true end
                local repairAmount = 20
                if ply:HasSkill(14) then
                    repairAmount = 40
                end
                if (tr.Entity and tr.Entity:IsValid() and tr.Entity:IsVehicle()) then
                    if (tr.Entity:Health() < 100) then
                        if (tr.Entity:Health() + repairAmount <= 100) then
                            tr.Entity:SetHealth(tr.Entity:Health() + repairAmount)
                            ply:ChatPrint("Repaired the vehicle for "..repairAmount.."% of its armor")
                        else
                            tr.Entity:SetHealth(100)
                            ply:ChatPrint("The vehicle is now fully repaired")
                        end
                        ply:EmitSound("physics/metal/metal_barrel_impact_hard1.wav", 100, 100)
                    else
                        ply:ChatPrint("The vehicle is already fully repaired")
                        return true
                    end
                else
                    ply:ChatPrint("You are not facing a vehicle")
                    return true
                end
            end
        end
    },

    {
        Name = "Water Bottle",
        Description = "Clean bottled water that restores a large amount of thirst.",
        Model = "models/props/cs_office/water_bottle.mdl",
        Weight = 0.02,
        CanBeSold = true,
        LootType = "Basic",
        Price = 10,
        SpawnChance = 90,
        SpawnOffset = Vector(0, 0, 3.5),
        useFunc = function(ply, item)
            ply:Drink(35)
        end
    },

    {
        Name = "Market Table",
        Description = "Deployable market stall; place it and press F3 to sell your items.",
        Model = "models/props/cs_italy/it_mkt_table1.mdl",
        Weight = 0,
        LootType = "Shop",
        CamOffset = 3,
        Price = 100,
        SpawnChance = 0,
        SpawnOffset = Vector(0, 0, 0),
        --Placeable = true,
        NoGlow = true,
        Shopstall = true,
        Health = 75,
    },

    {
        Name = "Small Wood Barricade",
        Description = "Short wooden wall that offers medium cover but low durability.",
        Model = "models/props_wasteland/wood_fence02a.mdl",
        Weight = 1,
        LootType = "Barricade",
        CamOffset = 3.2,
        Price = 125,
        Credits = 1,
        SpawnChance = 0,
        SpawnOffset = Vector(0, 0, 60),
        --Placeable = true,
        NoGlow = true,
        Barricade = true,
        Health = 75,
    },

    {
        Name = "Large Wood Barricade",
        Description = "Wide wooden fence that blocks more sightlines yet remains fragile.",
        Model = "models/props_wasteland/wood_fence01a.mdl",
        Weight = 1,
        LootType = "Barricade",
        CamOffset = 4,
        Price = 150,
        Credits = 1,
        SpawnChance = 0,
        SpawnOffset = Vector(0, 0, 60),
        --Placeable = true,
        NoGlow = true,
        Barricade = true,
        Health = 100,
    },

    {
        Name = "Small Ladder",
        Description = "Portable ladder section for reaching modest heights.",
        Model = "models/props_c17/metalladder001.mdl",
        Weight = 2,
        LootType = "Barricade",
        CamOffset = 6,
        Price = 100,
        SpawnChance = 0,
        SpawnOffset = Vector(0, 0, 0),
        --Placeable = true,
        NoGlow = true,
        Barricade = true,
        Health = 100,
        PlaceFunction = function(ply, ent, ItemID)
            local ladder = ents.Create("func_useableladder")
            ladder:SetPos(ent:GetPos() + ent:GetAngles():Forward() * -25)
            ladder:SetAngles(ent:GetAngles())
            ladder:SetKeyValue("point0", tostring(ladder:GetPos()))
            ladder:SetKeyValue("point1", tostring(ladder:GetPos() + Vector(0, 0, 128)))
            ladder:Spawn()
            ladder:SetParent(ent)
        end
    },

    {
        Name = "Wood Ladder",
        Description = "Tall ladder that creates a long climbable path.",
        Model = "models/props/CS_militia/ladderwood.mdl",
        Weight = 4,
        LootType = "Barricade",
        CamOffset = 12,
        Price = 200,
        SpawnChance = 0,
        SpawnOffset = Vector(0, 0, 0),
        --Placeable = true,
        NoGlow = true,
        Barricade = true,
        Health = 100,
        PlaceFunction = function(ply, ent, ItemID)
            local ladder = ents.Create("func_useableladder")
            ladder:SetPos(ent:GetPos() + ent:GetAngles():Forward() * -25)
            ladder:SetAngles(ent:GetAngles())
            ladder:SetKeyValue("point0", tostring(ladder:GetPos()))
            ladder:SetKeyValue("point1", tostring(ladder:GetPos() + Vector(0, 0, 256)))
            ladder:Spawn()
            ladder:SetParent(ent)
        end
    },

    {
        Name = "Metal Fence",
        Description = "Heavy fence panel that absorbs plenty of punishment.",
        Model = "models/props_c17/fence01a.mdl",
        Weight = 1,
        LootType = "Barricade",
        CamOffset = 3.6,
        Price = 10,
        SpawnChance = 0,
        SpawnOffset = Vector(0, 0, 55),
        --Placeable = true,
        NoGlow = true,
        Barricade = true,
        Health = 200,
    },

    {
        Name = "Wooden Crate",
        Description = "Stackable crate for improvised cover or elevation.",
        Model = "models/props/de_nuke/crate_extrasmall.mdl",
        Weight = 1,
        LootType = "Barricade",
        CamOffset = 2.5,
        Price = 100,
        SpawnChance = 0,
        SpawnOffset = Vector(0, 0, 0),
        --Placeable = true,
        NoGlow = true,
        Barricade = true,
        Health = 125,
    },

    {
        Name = "Market Table",
        Description = "Deployable market stall; place it and press F3 to sell your items.",
        Model = "models/props/CS_militia/table_shed.mdl",
        Weight = 1,
        LootType = "Shop",
        CamOffset = 3,
        Price = 100,
        SpawnChance = 0,
        SpawnOffset = Vector(0, 0, 0),
        --Placeable = true,
        NoGlow = true,
        Shopstall = true,
        Health = 75,
    },

    {
        Name = "Plant Pot",
        Description = "Sturdy planter used to grow crops from seeds.",
        Model = "models/props_c17/pottery09a.mdl",
        Weight = 1,
        LootType = "Shop",
        CamOffset = 1,
        Price = 75,
        SpawnChance = 0,
        SpawnOffset = Vector(0, 0, 0),
        --Placeable = true,
        NoGlow = true,
        Pot = true,
        Health = 120,
    },

    {
        Name = "30x Rifle Ammo",
        Description = "Box of thirty rifle rounds for assault weapons.",
        Model = "models/Items/BoxMRounds.mdl",
        Weight = 2.5,
        CanBeSold = true,
        Price = 60,
        SpawnChance = 80,
        SpawnOffset = Vector(0, 0, 5),
        LootType = "Weapon",
        ClipSize = 1,
        AmmoType = "ar2",
        useFunc = function (ply, Amount, AmmoType)
            ply:GiveAmmo(30, "ar2")
        end
    },

    {
        Name = "30x SMG Ammo",
        Description = "Box of thirty submachine gun rounds.",
        Model = "models/Items/BoxSRounds.mdl",
        Weight = 2.5,
        CanBeSold = true,
        Price = 50,
        SpawnChance = 80,
        SpawnOffset = Vector(0, 0, 5),
        LootType = "Weapon",
        ClipSize = 1,
        AmmoType = "smg1",
        useFunc = function (ply, Amount, AmmoType)
            ply:GiveAmmo(30, "smg1")
        end
    },

    {
        Name = "5x Sniper Ammo",
        Description = "Pack of five precision sniper rounds.",
        Model = "models/Items/combine_rifle_cartridge01.mdl",
        Weight = 2.9,
        CanBeSold = true,
        Price = 125,
        SpawnChance = 80,
        SpawnOffset = Vector(0, 0, 5),
        LootType = "Weapon",
        ClipSize = 1,
        AmmoType = "SniperRound",
        useFunc = function (ply, Amount, AmmoType)
            ply:GiveAmmo(5, "SniperRound")
        end
    },

    {
        Name = "20x Pistol Ammo",
        Description = "Box of twenty handgun rounds.",
        Model = "models/Items/357ammo.mdl",
        Weight = 1.8,
        CanBeSold = true,
        Price = 50,
        SpawnChance = 80,
        SpawnOffset = Vector(0, 0, 5),
        LootType = "Weapon",
        ClipSize = 1,
        AmmoType = "pistol",
        useFunc = function (ply, Amount, AmmoType)
            ply:GiveAmmo(20, "Pistol")
        end
    },

    {
        Name = "10x Shotgun Shells",
        Description = "Box of ten shotgun shells.",
        Model = "models/Items/BoxBuckshot.mdl",
        Weight = 2.7,
        CanBeSold = true,
        Price = 65,
        SpawnChance = 80,
        SpawnOffset = Vector(0, 0, 5),
        LootType = "Weapon",
        ClipSize = 1,
        AmmoType = "buckshot",
        useFunc = function (ply, Amount, AmmoType)
            ply:GiveAmmo(10, "buckshot")
        end
    },

    {
        Name = "Wood",
        Description = "Bundle of lumber used in a wide range of crafting recipes.",
        Model = "models/Gibs/wood_gib01d.mdl",
        Weight = 1.5,
        CanBeSold = true,
        Price = 50,
        SpawnChance = 5,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        LootType = "Basic",
    },

    {
        Name = "Scrap Metal",
        Description = "Assorted metal scraps for advanced crafting and barricades.",
        Model = "models/props_c17/TrapPropeller_Lever.mdl",
        Weight = 1.0,
        CanBeSold = true,
        Price = 75,
        SpawnChance = 5,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        LootType = "Basic",
    },

    {
        Name = "Gun Powder",
        Description = "Powder charge required for crafting any ammunition.",
        Model = "models/props_junk/metal_paintcan001a.mdl",
        Weight = 0.5,
        CanBeSold = true,
        Price = 100,
        SpawnChance = 5,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        LootType = "Basic",
    },

    {
        Name = "Weapon Part A",
        Description = "Standard weapon components needed to assemble most firearms.",
        Model = "models/weapons/w_eq_eholster_elite.mdl",
        Weight = 1.8,
        CanBeSold = true,
        Price = 250,
        SpawnChance = 5,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        LootType = "Basic",
    },

    {
        Name = "Weapon Part B",
        Description = "High end weapon parts required for top tier guns.",
        Model = "models/weapons/w_defuser.mdl",
        LootType = "Basic",
        Weight = 1.6,
        CanBeSold = true,
        Price = 300,
        SpawnChance = 5,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
    },

    {
        Name = "Mystery Box",
        Description = "Consumable loot crate that spits out random items if you can carry them.",
        Model = "models/items/item_item_crate.mdl",
        Weight = 2,
        LootType = "Basic",
        CanBeSold = true,
        CamOffset = 2,
        Credits = 5,
        SpawnChance = 0,
        SpawnOffset = Vector(0,0,5),
        SpawnAngle = Angle(0,90,0),
        useFunc = function(ply,item)
            local lootTable = {1,2,3,14,21,24,28,29,30,31,32,33,36,37,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64}
            local giveItem = table.Random(lootTable)
            local amount = math.random(1,2)
            local weightLimit = ply:getWeightLimit()
            if (ply.WeightCur + (DayZItems[giveItem].Weight * amount) > weightLimit) then
                ply:PBroadcast(Color(255, 50, 50), "[DayZ] ", Color(255, 255, 255), "You would have got ", Color(50, 255, 50), amount, Color(255, 255, 255), 'x ', Color(50, 255, 50), DayZItems[giveItem].Name, Color(255, 255, 255), ' but you are overweight')
                return true
            end
            ply:PBroadcast(Color(255, 50, 50), "[DayZ] ", Color(255, 255, 255), "You unboxed ", Color(50, 255, 50), amount, Color(255, 255, 255), 'x ', Color(50, 255, 50), DayZItems[giveItem].Name)
            ply:GiveItem(giveItem, amount)
        end
    },

    {
        Name = "AK-47",
        Description = "Durable 7.62 assault rifle with high damage and strong recoil.",
        Model = "models/weapons/w_rif_ak47.mdl",
        Weight = 6.83,
        CanBeSold = true,
        Price = 2700,
        SpawnChance = 45,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        LootType = "Weapon",
        Gun = true,
        Weapon = "lite_ak47",
    },

    {
        Name = "AUG",
        Description = "Bullpup assault rifle with an integrated scope and stable recoil.",
        Model = "models/weapons/w_rif_aug.mdl",
        Weight = 13.22,
        CanBeSold = true,
        Price = 3150,
        SpawnChance = 45,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        LootType = "Weapon",
        Gun = true,
        Weapon = "lite_aug",
    },

    {
        Name = "AWP",
        Description = "Massive bolt action sniper rifle that deals devastating damage.",
        Model = "models/weapons/w_snip_awp.mdl",
        Weight = 13.22,
        CanBeSold = true,
        Price = 5000,
        SpawnChance = 2,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        LootType = "Weapon",
        Gun = true,
        Weapon = "lite_awp",
    },

    {
        Name = "Deagle",
        Description = "Heavy caliber semi automatic pistol with tremendous stopping power.",
        Model = "models/weapons/w_pist_deagle.mdl",
        Weight = 4.5,
        CanBeSold = true,
        Price = 700,
        SpawnChance = 2,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        LootType = "Weapon",
        Gun = true,
        Weapon = "lite_deagle",
    },

    {
        Name = "Dual Berettas",
        Description = "Pair of Berettas for spraying pistol rounds quickly.",
        Model = "models/weapons/w_pist_elite.mdl",
        Weight = 2.13,
        CanBeSold = true,
        Price = 1500,
        SpawnChance = 45,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        LootType = "Weapon",
        Gun = true,
        Weapon = "lite_dualberettas",
    },

    {
        Name = "Famas",
        Description = "Burst friendly assault rifle that chews through rifle ammo.",
        Model = "models/weapons/w_rif_famas.mdl",
        Weight = 7.95,
        CanBeSold = true,
        Price = 2250,
        SpawnChance = 45,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        LootType = "Weapon",
        Gun = true,
        Weapon = "lite_famas",
    },

    {
        Name = "FiveSeven",
        Description = "Lightweight pistol firing armor piercing 5.7mm rounds.",
        Model = "models/weapons/w_pist_fiveseven.mdl",
        Weight = 1.60,
        CanBeSold = true,
        Price = 500,
        SpawnChance = 45,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        LootType = "Weapon",
        Gun = true,
        Weapon = "lite_fiveseven",
    },

    {
        Name = "G3SG1",
        Description = "Automatic designated marksman rifle for sustained sniper fire.",
        Model = "models/weapons/w_snip_g3sg1.mdl",
        Weight = 9.70,
        CanBeSold = true,
        Price = 5000,
        SpawnChance = 45,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        LootType = "Weapon",
        Gun = true,
        Weapon = "lite_g3sg1",
    },

    {
        Name = "Galil",
        Description = "Rugged 5.56 rifle with dependable accuracy in any weather.",
        Model = "models/weapons/w_rif_galil.mdl",
        Weight = 9.59,
        CanBeSold = true,
        Price = 2000,
        SpawnChance = 45,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        LootType = "Weapon",
        Gun = true,
        Weapon = "lite_galil",
    },

    {
        Name = "Glock",
        Description = "Reliable 9mm sidearm with a high capacity magazine.",
        Model = "models/weapons/w_pist_glock18.mdl",
        Weight = 0.71,
        CanBeSold = true,
        Price = 200,
        SpawnChance = 45,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        LootType = "Weapon",
        Gun = true,
        Weapon = "lite_glock",
    },

    {
        Name = "M3 Super 90",
        Description = "Pump action shotgun built for devastating close quarters hits.",
        Model = "models/weapons/w_shot_m3super90.mdl",
        Weight = 7.20,
        CanBeSold = true,
        Price = 1200,
        SpawnChance = 30,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        LootType = "Weapon",
        Gun = true,
        Weapon = "lite_m3",
    },

    {
        Name = "M4A1",
        Description = "Versatile 5.56 rifle with controllable recoil for any engagement.",
        Model = "models/weapons/w_rif_m4a1.mdl",
        Weight = 7.46,
        CanBeSold = true,
        Price = 3100,
        SpawnChance = 45,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        LootType = "Weapon",
        Gun = true,
        Weapon = "lite_m4a1",
    },

    {
        Name = "M249",
        Description = "Belt fed light machine gun that lays down continuous rifle fire.",
        Model = "models/weapons/w_mach_m249para.mdl",
        Weight = 17,
        CanBeSold = true,
        Price = 5200,
        SpawnChance = 45,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        LootType = "Weapon",
        Gun = true,
        Weapon = "lite_m249",
    },

    {
        Name = "Mac-10",
        Description = "Compact SMG that dumps bullets at extreme close range.",
        Model = "models/weapons/w_smg_mac10.mdl",
        Weight = 6.26,
        CanBeSold = true,
        Price = 1050,
        SpawnChance = 45,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        LootType = "Weapon",
        Gun = true,
        Weapon = "lite_mac10",
    },

    {
        Name = "MP5",
        Description = "Accurate SMG favored for tight spaces and controlled bursts.",
        Model = "models/weapons/w_smg_mp5.mdl",
        Weight = 5.59,
        CanBeSold = true,
        Price = 1500,
        SpawnChance = 45,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        LootType = "Weapon",
        Gun = true,
        Weapon = "lite_mp5",
    },

    {
        Name = "P90",
        Description = "Personal defense weapon with a massive magazine and high rate of fire.",
        Model = "models/weapons/w_smg_p90.mdl",
        Weight = 5.51,
        CanBeSold = true,
        Price = 2350,
        SpawnChance = 45,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        LootType = "Weapon",
        Gun = true,
        Weapon = "lite_p90",
    },

    {
        Name = "P228",
        Description = "Compact duty pistol that's easy to handle as a backup.",
        Model = "models/weapons/w_pist_p228.mdl",
        Weight = 1.81,
        CanBeSold = true,
        Price = 300,
        SpawnChance = 45,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        LootType = "Weapon",
        Gun = true,
        Weapon = "lite_p228",
    },

    {
        Name = "Scout",
        Description = "Light bolt action sniper rifle with fast handling and mobility.",
        Model = "models/weapons/w_snip_scout.mdl",
        Weight = 14.48,
        CanBeSold = true,
        Price = 1700,
        SpawnChance = 45,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        LootType = "Weapon",
        Gun = true,
        Weapon = "lite_scout",
    },

    {
        Name = "SG550",
        Description = "Fully automatic sniper platform with a built in optic.",
        Model = "models/weapons/w_snip_sg550.mdl",
        Weight = 3.72,
        CanBeSold = true,
        Price = 5000,
        SpawnChance = 45,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        LootType = "Weapon",
        Gun = true,
        Weapon = "lite_sg550",
    },

    {
        Name = "SG552",
        Description = "Carbine version of the SG that excels at mid range fights.",
        Model = "models/weapons/w_rif_sg552.mdl",
        Weight = 8.92,
        CanBeSold = true,
        Price = 2750,
        SpawnChance = 45,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        LootType = "Weapon",
        Gun = true,
        Weapon = "lite_sg552",
    },

    {
        Name = "TMP",
        Description = "Tiny machine pistol with a blistering rate of fire.",
        Model = "models/weapons/w_smg_tmp.mdl",
        Weight = 2.91,
        CanBeSold = true,
        Price = 1250,
        SpawnChance = 45,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        LootType = "Weapon",
        Gun = true,
        Weapon = "lite_tmp",
    },

    {
        Name = "UMP-45",
        Description = "Hard hitting .45 caliber SMG that's easy to control.",
        Model = "models/weapons/w_smg_ump45.mdl",
        Weight = 4.63,
        CanBeSold = true,
        Price = 1200,
        SpawnChance = 45,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        LootType = "Weapon",
        Gun = true,
        Weapon = "lite_ump",
    },

    {
        Name = "USP-45",
        Description = "Precision .45 handgun that stays accurate shot after shot.",
        Model = "models/weapons/w_pist_usp.mdl",
        Weight = 1.65,
        CanBeSold = true,
        Price = 200,
        SpawnChance = 45,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        LootType = "Weapon",
        Gun = true,
        Weapon = "lite_usp",
    },

    {
        Name = "XM1014",
        Description = "Semi automatic combat shotgun for rapid follow up blasts.",
        Model = "models/weapons/w_shot_xm1014.mdl",
        Weight = 8.42,
        CanBeSold = true,
        Price = 2000,
        SpawnChance = 45,
        SpawnOffset = Vector(0, 0, 1),
        SpawnAngle = Angle(0, 0, 90),
        LootType = "Weapon",
        Gun = true,
        Weapon = "lite_xm1014",
    },
}

DayZItems = {}
for id, item in ipairs(items) do
    item.ID = id
    DayZItems[id] = item
end

-- Expose the raw list so other scripts (such as tooling or diagnostics)
-- can introspect the source definitions without re-parsing this file.
DayZItemDefinitions = items
