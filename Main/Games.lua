--[[
    DO NOT COPY THIS CODE!!
    PROPERTY AND OWNED BY WHISTHUB (whis369) on Discord.
]]

local games = {}

if games[game.PlaceId] ~= nil then
    loadstring(games[tonumber(game.PlaceId)])()
else
    game.Players.LocalPlayer:Kick("Game Not Supported! :(")
end
