local games = loadstring(game:HttpGet("https://raw.githubusercontent.com/skeletalz/PinkX/main/games.lua"))()
local ingame = false
for i,gam in pairs(games) do
  if game.PlaceId == gam.ID then
     ingame = true
     loadstring(game:HttpGet("https://raw.githubusercontent.com/skeletalz/PinkX/main/games/"..gam.Script))()
 else
     ingame = false
  end
end
if ingame == false then
 error("HEY! YOUR NOT IN A SUPPORTED GAME!")
end
