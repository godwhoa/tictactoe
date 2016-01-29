function show_game()
  for y=1,3 do
    for x=1,3 do
      tile = state[y][x]
      love.graphics.setColor(236,229,228)
      love.graphics.rectangle("line", (x-1)*100, (y-1)*100, 100, 100)

      if tile == 1 then
        love.graphics.draw(xsprite, ((x-1)*100)+50, ((y-1)*100)+50,
          0,1,1,
        xsprite:getWidth()/2,xsprite:getHeight()/2)
      elseif tile == 2 then
        love.graphics.draw(osprite, ((x-1)*100)+50, ((y-1)*100)+50,
          0,1,1,
        osprite:getWidth()/2,osprite:getHeight()/2)
      end
      if testall(y,x) then
        win[0] = true
        if tile == 1 then
          win[2] = "X"
        elseif tile == 2 then
          win[2] = "O"
        end
      end
    end
  end
end

function show_winner()
  love.graphics.setFont(font)
  if win[2] == "O" then
  	love.graphics.setColor(33, 150, 243)
  else
  	love.graphics.setColor(224,0,50)
  end
  love.graphics.printf(win[2].." wins!",0, 110, 300,"center")
end