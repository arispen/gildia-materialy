
function movePlayer(key, player, map, tileSize)
  if key == "right" then
    if player.x + tileSize < map.size - tileSize * 3 then
      player.x = player.x + tileSize
    end
  elseif key == "left" then
    if player.x - tileSize > tileSize * 2 then
      player.x = player.x - tileSize
    end
  elseif key == "up" then
    if player.y - tileSize > tileSize * 2 then
      player.y = player.y - tileSize
    end
  elseif key == "down" then
    if player.y + tileSize < map.size - tileSize * 3 then
      player.y = player.y + tileSize
    end
	end
end