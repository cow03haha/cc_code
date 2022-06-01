local LL = 0
local boolFlag = true
local boolDown
local boolDig

while boolFlag do
    boolDig = turtle.digDown()
    boolDown = turtle.down()
    boolFlag = boolDig or boolDown
    if boolDown then
        LL = LL + 1
    end
end

-- move up
while LL > 0 do
    turtle.up()
    LL = LL - 1
end
