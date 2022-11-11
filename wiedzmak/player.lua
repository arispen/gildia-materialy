player = {} 

player.load = function()
  player.x = tileSize * 4
  player.y = tileSize * 3
  player.image = love.graphics.newImage("wiedzmak/wiedzmak.png")
  player.sword = love.graphics.newImage("wiedzmak/sword.png")
  player.swordRotation = 10
end

player.move = function(key)
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

player.attack = function()
  player.swordRotation = 0
end