function love.load()
  tileSize = 32
  map = { size = 512 }
  
  love.window.setMode(map.size, map.size)
  love.graphics.setDefaultFilter("nearest")
  map.image = love.graphics.newImage("map.png")
  
  wiedzmak = { x = 0, y = 0} 
  wiedzmak.image = love.graphics.newImage("wiedzmak.png")
end

function love.update(dt)

end

function love.keypressed(key, scancode, isrepeat)
	if key == "right" then
    if wiedzmak.x + tileSize < map.size - tileSize * 3 then
      wiedzmak.x = wiedzmak.x + tileSize
    end
	elseif key == "left" then
		if wiedzmak.x - tileSize > tileSize * 3 then
      wiedzmak.x = wiedzmak.x - tileSize
    end
  elseif key == "up" then
		if wiedzmak.y - tileSize > tileSize * 3 then
      wiedzmak.y = wiedzmak.y - tileSize
    end
  elseif key == "down" then
		if wiedzmak.y + tileSize < map.size + tileSize * 3 then
      wiedzmak.y = wiedzmak.y + tileSize
    end
	end
end


function love.draw()
  love.graphics.draw(map.image, 0, 0, 0, 2, 2)
  love.graphics.draw(wiedzmak.image, wiedzmak.x, wiedzmak.y, 0, 2, 2)
end