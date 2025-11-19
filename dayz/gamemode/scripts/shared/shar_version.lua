local VERSION_URLS = {
    "https://raw.githubusercontent.com/youremeh/gmodz-public/refs/heads/main/version.txt"
}

local versionPrefixColor = Color(233, 30, 99)
local versionPrefix = "[GMod-Z] "
local white = color_white or Color(255, 255, 255)

local function getGamemodeFolder()
    local gm = GM or GAMEMODE
    if gm and gm.FolderName then
        return gm.FolderName
    end

    local active = engine.ActiveGamemode and engine.ActiveGamemode()
    if active and active ~= "" then
        return active
    end

    return "dayz"
end

local function readLocalVersion()
    local folder = getGamemodeFolder()
    local searchPaths = {
        string.format("gamemodes/%s/version.txt", folder),
        string.format("%s/version.txt", folder),
        "version.txt",
    }

    for _, path in ipairs(searchPaths) do
        local contents = file.Read(path, "GAME")
        if contents and contents ~= "" then
            local trimmed = string.Trim(contents)
            if trimmed ~= "" then
                return trimmed
            end
        end
    end

    return "unknown"
end

local function logVersionMessage(message)
    MsgC(versionPrefixColor, versionPrefix, white, message .. "\n")
end

local localVersion = readLocalVersion()
local gm = GM or GAMEMODE
if gm then
    gm.Version = localVersion
else
    GAMEMODE = GAMEMODE or {}
    GAMEMODE.Version = localVersion
end

local function warnIfOutdated(remoteVersion)
    local current = (GM or GAMEMODE or {}).Version or localVersion
    if remoteVersion ~= "" and current ~= "unknown" and current ~= remoteVersion then
        logVersionMessage(string.format("Your gamemode is outdated! Installed %s, latest %s.", current, remoteVersion))
    end
end

local function fetchFromIndex(index)
    local url = VERSION_URLS[index]
    if not url then return end

    http.Fetch(
        url,
        function(body)
            local latest = string.Trim(body or "")
            if latest ~= "" then
                warnIfOutdated(latest)
            elseif VERSION_URLS[index + 1] then
                fetchFromIndex(index + 1)
            end
        end,
        function()
            fetchFromIndex(index + 1)
        end
    )
end

local function fetchLatestVersion()
    fetchFromIndex(1)
end

if SERVER then
    hook.Add("Initialize", "DayZVersionCheck", fetchLatestVersion)
else
    hook.Add("InitPostEntity", "DayZVersionCheck", fetchLatestVersion)
end
