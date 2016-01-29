function ldag(y,x)
  pos_state = state[y][x]
  for i=1,3 do
    if state[i][i] ~= pos_state or state[i][i] == 0 then
      return false
    end
  end
  return true
end

function rdag(y,x)
  pos_state = state[y][x]
  x = 3
  for y=1,3 do
    if state[y][x] ~= pos_state or state[y][x] == 0 then
      return false
    end
    x = x-1
  end
  return true
end

function hori(y,x)
  pos_type = state[y][x]
  for i=1,3 do
    if state[y][i] ~= pos_type or state[y][i] == 0 then
      return false
    end
  end
  return true
end

function vert(y,x)
  pos_type = state[y][x]
  for i=1,3 do
    if state[i][x] ~= pos_type or state[i][x] == 0 then
      return false
    end
  end
  return true
end
return {
  ldag,
  rdag,
  hori,
  vert
}
