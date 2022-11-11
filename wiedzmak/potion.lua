potion = {}

potion.load = function()
  potion.live = false
  potion.image = love.graphics.newImage("wiedzmak/potion.png")
  potion.value = 1
  potion.x = 0
  potion.y = 0
end

potion.update = function(dt)
  local spawnChance = 50
  if timer % spawnChance < 1 and potion.live == false then
    local randomX = love.math.random(1, 10) * tileSize
    local randomY = love.math.random(1, 10) * tileSize
    potion.x = randomX
    potion.y = randomY
    potion.live = true
  end
end

potion.draw = function()
  if potion.live then
    love.graphics.draw(potion.image, potion.x, potion.y, 0, 2, 2)
  end
end