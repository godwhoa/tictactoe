logic = require ("logic")
require ("draw")
love.window.setMode(100 * 3, 100 * 3)
love.window.setTitle("tic-tac-toe")

win ={false,""}
-- x: 1 o: 2 unset: 0
state = {
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0}
}
isX = true
function placeTile(xpos, ypos, tile)
  x = math.floor(xpos / 100) + 1
  y = math.floor(ypos / 100) + 1

  x = math.max(1, math.min(x, 3))
  y = math.max(1, math.min(y, 3))
  --fixes overwriting
  if state[y][x] == 0 then
    state[y][x] = tile
  end
end

function testall(y,x)
  for i=1,4 do
    if logic[i](y,x) then
      return true
    end
  end
  return false
end

function love.load()
  xsprite = love.graphics.newImage("assets/x.png")
  osprite = love.graphics.newImage("assets/o.png")
  font = love.graphics.newFont("assets/font.ttf", 50)
end

function love.update(dt)
end

function love.mousepressed(x, y, key)
  if key == 'l' then
    if isX then
      placeTile(x, y, 1)
      isX = false
    else
      placeTile(x, y, 2)
      isX = true
    end
  end
end

function love.draw()
  love.graphics.setBackgroundColor(13,8,7)
  if win[0] then
    show_winner()
  else
    show_game()
  end
end

