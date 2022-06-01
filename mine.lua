local downCount = 0
local forwardCount = 0
local y = 66

function fish()
    turtle.dig()
    turtle.forward()
    turtle.digUp()
    forwardCount = forwardCount + 1
end

function checkFuel()
    return turtle.getFuelLevel() >= LL
end

function fallback()
    while forwardCount > 0 do
        turtle.back()
        forwardCount = forwardCount - 1
    end

    while downCount > 0 do
        turtle.up()
        downCount = downCount - 1
    end
end

while y > 12 do
    turtle.digDown()
    turtle.down()
    downCount = downCount + 1
    y = y - 1
end

while forwardCount <= 100 do
    fish()
end

fallback()
