ghost = {}

ghost.load = function ()
  ghost.x = tileSize * 2
  ghost.y = tileSize * 2
  ghost.image = love.graphics.newImage("wiedzmak/ghost.png")
end

ghost.move = function ()
  if ghost.x > player.x then
    ghost.x = ghost.x - tileSize
  else
    ghost.x = ghost.x + tileSize
  end

  if ghost.y > player.y then
    ghost.y = ghost.y - tileSize
  else
    ghost.y = ghost.y + tileSize
  end
end