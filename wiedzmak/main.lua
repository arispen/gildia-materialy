require("wiedzmak/player")
require("wiedzmak/ghost")
require("wiedzmak/potion")

tileSize = 32
map = { size = 512 }
animationSpeed = 10
timer = 0

function love.load()
  love.window.setMode(map.size, map.size)
  love.graphics.setDefaultFilter("nearest")
  map.image = love.graphics.newImage("wiedzmak/map.png")
  player.load()
  ghost.load()
  potion.load()
end

function love.update(dt)
  timer = timer + dt
  player.swordRotation = player.swordRotation + dt * animationSpeed
  potion.update()
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
  if ghost.life > 0 then
    love.graphics.draw(ghost.image, ghost.x, ghost.y, 0, 2, 2)
  end
  if player.swordRotation < 1 then
    love.graphics.draw(player.sword, player.x + tileSize, player.y, player.swordRotation, 2, 2)
  end
  potion.draw()
end