function DZ_GiveCredits(admin, cmd, args)
    local player = Player(args[1])
    local amount = math.floor(tonumber(args[2]))
    if admin:IsDayZSuperAdmin() or (admin:IsDayZAdmin() and player == admin) then
        admin:PBroadcast(Color(255, 50, 50), '[DayZ] ', Color(255, 255, 255), 'You\'ve given '..player:Nick()..' '..amount..' credits')
        player:PBroadcast(Color(255, 50, 50), '[DayZ] ', Color(255, 255, 255), 'You\'ve been given '..amount..' credits by '..admin:Nick())
        player:GiveCredits(amount)
        saveMoney(player)
    else
        admin:PBroadcast(Color(255, 50, 50), '[DayZ] ', Color(255, 255, 255), 'You don\'t have access to this command.')
    end
end
concommand.Add('dz_GiveCredits', DZ_GiveCredits)

function DZ_ResetMoney(admin, cmd, args)
    local player = Player(args[1])
    if admin:IsDayZSuperAdmin() or (admin:IsDayZAdmin() and player == admin) then
        admin:PBroadcast(Color(255, 50, 50), '[DayZ] ', Color(255, 255, 255), 'You\'ve reset '..player:Nick()..'\'s money')
        player:GiveTakeMoney(-player.Money)
        player:PBroadcast(Color(255, 50, 50), '[DayZ] ', Color(255, 255, 255), 'Your money has been reset by '..admin:Nick())
        saveMoney(player)
    else
        admin:PBroadcast(Color(255, 50, 50), '[DayZ] ', Color(255, 255, 255), 'You don\'t have access to this command.')
    end
end
concommand.Add('dz_ResetMoney', DZ_ResetMoney)

function DZ_GiveXP(admin, cmd, args)
    local player = Player(args[1])
    local amount = math.floor(tonumber(args[2]))
    if admin:IsDayZSuperAdmin() or (admin:IsDayZAdmin() and player == admin) then
        admin:PBroadcast(Color(255, 50, 50), '[DayZ] ', Color(255, 255, 255), 'You\'ve set the XP of '..player:Nick()..' to '..amount)
        player:GiveXP(amount)
        player:PBroadcast(Color(255, 50, 50), '[DayZ] ', Color(255, 255, 255), 'You\'ve received '..amount..' XP from '..admin:Nick())
        saveMoney(player)
    else
        admin:PBroadcast(Color(255, 50, 50), '[DayZ] ', Color(255, 255, 255), 'You don\'t have access to this command.')
    end
end
concommand.Add('dz_GiveXP', DZ_GiveXP)

function DZ_AddMoney(admin, cmd, args)
    local player = Player(args[1])
    local amount = math.floor(tonumber(args[2]))
    if admin:IsDayZSuperAdmin() or (admin:IsDayZAdmin() and player == admin) then
        admin:PBroadcast(Color(255, 50, 50), '[DayZ] ', Color(255, 255, 255), 'You\'ve given $'..amount..' to '..player:Nick())
        player:GiveTakeMoney(amount)
        player:PBroadcast(Color(255, 50, 50), '[DayZ] ', Color(255, 255, 255), 'You\'ve been given $'..amount..' by '..admin:Nick())
        saveMoney(player)
    else
        admin:PBroadcast(Color(255, 50, 50), '[DayZ] ', Color(255, 255, 255), 'You don\'t have access to this command.')
    end
end
concommand.Add('dz_AddMoney', DZ_AddMoney)

function SetRank(ply, SteamID, rank)
    local SteamID = tostring(SteamID)
    local rank = tonumber(rank)
    if not SteamID then print("No Steam ID entered") return end
    if not rank then ply:Tip("No rank entered") return end
    if not PlayerRank[rank] then print("Invalid Rank") return end
    if ply:IsValid() and not ply:IsDayZSuperAdmin() then
        ply:ChatPrint("You cannot use this command.")
        return
    end
    if (not ply:IsValid() or ply:IsDayZSuperAdmin()) then
        for _, ent in pairs(player.GetAll()) do
            if (ent:SteamID() == SteamID) then
                ent:SetNWInt("plevel", rank)
                ent:GiveCredits(PlayerRank[rank].CreditGain)
                if (ply and ply:IsValid()) then ply:ChatPrint('You set the rank of '..ent:Nick()..' to '..PlayerRank[rank].Name) end
                return
            end
        end
        local pStats = sql.QueryRow("SELECT * FROM DayZ_stats WHERE unique_id = '"..SteamID.."'")
        if (pStats) then
            local credits = tonumber(pStats.credits)
            credits = credits + PlayerRank[rank].CreditGain
            sql.Query("UPDATE DayZ_stats SET plevel = "..rank..", credits = "..credits.." WHERE unique_id = '"..SteamID.."'")
            if (ply and ply:IsValid()) then ply:ChatPrint('You set the rank of '..SteamID..' to '..PlayerRank[rank].Name) end
            return
        else
            if (ply and ply:IsValid()) then ply:ChatPrint('SteamID: '..SteamID..' was not found.') end
            return
        end
    end
end
concommand.Add('setrank', function(ply, cmd, args) SetRank(ply, args[1], args[2]) end)

concommand.Add('geteyepos', function(ply)
    local tr = ply:GetEyeTrace()
    print('Vector('..math.Round(tr.HitPos.x, 2)..', '..math.Round(tr.HitPos.y, 2)..', '..math.Round(tr.HitPos.z, 2)..'),')
end)