require("wiedzmak/player")
require("wiedzmak/ghost")

tileSize = 32
map = { size = 512 }

function love.load()
  love.window.setMode(map.size, map.size)
  love.graphics.setDefaultFilter("nearest")
  map.image = love.graphics.newImage("wiedzmak/map.png")
  player.load()
  ghost.load()
end

function love.update(dt)
  local swordSpeed = 3
  player.swordRotation = player.swordRotation + dt * swordSpeed
end

function love.keypressed(key, scancode, isrepeat)
  if key == "space" then
    player.attack()
  else
    player.move(key)
    ghost.move()
  end
end


function love.draw()
  love.graphics.draw(map.image, 0, 0, 0, 2, 2)
  love.graphics.draw(player.image, player.x, player.y, 0, 2, 2)
  love.graphics.draw(ghost.image, ghost.x, ghost.y, 0, 2, 2)
  if player.swordRotation < 1 then
    love.graphics.draw(player.sword, player.x + tileSize, player.y, player.swordRotation, 2, 2)
  end
end