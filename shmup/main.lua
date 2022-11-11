function love.load()
  map = love.graphics.newImage("shmup/map.bmp") -- 320x320
  player = love.graphics.newImage("shmup/player.png")
  enemy = love.graphics.newImage("shmup/enemy.png")
  playerX = 140
  playerY = 280
  playerSpeed, enemySpeed = 50, 200
  enemyY, enemyX, score = 0, 0, 0
end

function love.update(dt)
  if love.keyboard.isDown("left") then
    playerX = playerX - dt * playerSpeed
  end
  if love.keyboard.isDown("right") then
    playerX = playerX + dt * playerSpeed
  end
  enemyY = enemyY + dt * enemySpeed
  if enemyY > 320 then
    score = score + 1
    enemyY = 0
    enemyX = love.math.random(0, 320)
  end
  if math.abs(enemyX - playerX) < 30 
    and math.abs(enemyY - playerY) < 30 then
    score = 0 -- game over
  end
end

function love.draw()
  love.graphics.draw(map, 0, 0)
  love.graphics.draw(player, playerX, playerY)
  love.graphics.draw(enemy, enemyX, enemyY)
  love.graphics.print("SCORE: " .. score, 0, 0)
end