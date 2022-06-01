local LL = 0
local boolFlag = true
local boolDown
local boolDig

-- dig down
while boolFlag do
    boolDig = turtle.digDown()
    boolDown = turtle.down()
    boolFlag = boolDig or boolDown
    if boolDown then
        LL = LL + 1
    end
end

-- move up
while LL > 0 do --全形的"＞"要改為半形字才能執行，
    --因註解中不能放角括弧，
    --所以才用全形表示
    turtle.up()
    LL = LL - 1
end
