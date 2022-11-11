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
end

function love.keypressed(key, scancode, isrepeat)
  player.move(key, player, map, tileSize)
  ghost.move()
end


function love.draw()
  love.graphics.draw(map.image, 0, 0, 0, 2, 2)
  love.graphics.draw(player.image, player.x, player.y, 0, 2, 2)
  love.graphics.draw(ghost.image, ghost.x, ghost.y, 0, 2, 2)
end