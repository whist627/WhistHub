--[[
    DO NOT COPY THIS CODE!!
    PROPERTY AND OWNED BY HELLO HUB (whis369) on Discord.
]]

local games = {
    -- Slap Battles
    [6403373529] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/whis369/HelloHub/main/Scripts/Slap-Battles.lua', true))()",
    -- Slap Battles (No Oneshot)
    [9015014224] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/whis369/HelloHub/main/Scripts/No-Oneshot.lua', true))()",
    -- Slap Battles (Killstreak Only)
    [11520107397] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/whis369/HelloHub/main/Scripts/Killstreak-Only.lua', true))()",
    -- Slap Royale
    [9431156611] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/whis369/HelloHub/main/Scripts/Slap-Royale.lua', true))()",
    -- Eternal Bob
    [13833961666] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/whis369/HelloHub/main/Scripts/Eternal-Bob.lua', true))()"
}

if games[game.PlaceId] ~= nil then
    loadstring(games[tonumber(game.PlaceId)])()
else
    game.Players.LocalPlayer:Kick("Game Not Supported! :(")
end
