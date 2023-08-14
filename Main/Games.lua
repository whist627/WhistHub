local games = {
    -- Slap Battles (Killstreak Only)
    [11520107397] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/LyricArc72030/HelloHub/main/Scripts/Slap-Battles.lua', true))()",
    -- Slap Battles
    [6403373529] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/LyricArc72030/HelloHub/main/Scripts/Slap-Battles.lua', true))()",
    -- Slap Battles (No Oneshot)
    [9015014224] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/LyricArc72030/HelloHub/main/Scripts/Slap-Battles.lua', true))()"
}

if not games[game.GameId] ~= nil then
    loadstring(games[game.GameId])()
else
    game.Players.LocalPlayer:Kick("Game Not Supported!")
end
