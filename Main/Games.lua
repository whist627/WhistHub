local games = {
    -- Slap Battles
    [6403373529] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/LyricArc72030/HelloHub/main/Scripts/Slap-Battles.lua', true))()",
    -- Slap Battles (No Oneshot)
    [9015014224] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/LyricArc72030/HelloHub/main/Scripts/Slap-Battles.lua', true))()",
    -- Slap Battles (Killstreak Only)
    [11520107397] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/LyricArc72030/HelloHub/main/Scripts/Slap-Battles.lua', true))()"
}

if games[game.PlaceId] ~= nil then
    loadstring(games[tonumber(game.PlaceId)])()
else
    game.Players.LocalPlayer:Kick("Game Not Supported! :(")
end
