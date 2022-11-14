player = {} 

player.load = function()
  player.x = tileSize * 4
  player.y = tileSize * 3
  player.image = love.graphics.newImage("wiedzmak/wiedzmak.png")
  player.sword = love.graphics.newImage("wiedzmak/sword.png")
  player.swordRotation = 10
  player.damage = 1
  player.health = 3
  player.attackSound = love.audio.newSource("wiedzmak/attackSound.ogg", "static")
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
  if math.abs(player.x - potion.x) < tileSize and
    math.abs(player.y - potion.y) < tileSize then
    if potion.live then
      player.health = player.health + potion.value
    end
    potion.live = false
  end
end

player.attack = function()
  player.swordRotation = 0
  if math.abs(player.x - ghost.x) < tileSize or
    math.abs(player.y - ghost.y) < tileSize then
    ghost.health = ghost.health - player.damage
  end
  love.audio.play(player.attackSound)
end