require("wiedzmak/player")

function love.load()
  tileSize = 32
  map = { size = 512 }
  
  love.window.setMode(map.size, map.size)
  love.graphics.setDefaultFilter("nearest")
  map.image = love.graphics.newImage("wiedzmak/map.png")
  
  player = { x = tileSize * 4, y = tileSize * 3} 
  player.image = love.graphics.newImage("wiedzmak/wiedzmak.png")
end

function love.update(dt)

end

function love.keypressed(key, scancode, isrepeat)
  movePlayer(key, player, map, tileSize)
end


function love.draw()
  love.graphics.draw(map.image, 0, 0, 0, 2, 2)
  love.graphics.draw(player.image, player.x, player.y, 0, 2, 2)
end