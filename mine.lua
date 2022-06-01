local downCount = 0
local forwardCOunt = 0
local y = 66

function fish()
    turtle.digUp()
    turtle.dig()
    turtle.forward()
    forwardCOunt = forwardCOunt + 1
end

function checkFuel()
    return turtle.getFuelLevel() >= LL
end

function fallback()
    while forwardCOunt > 0 do
        turtle.back()
    end

    while downCount > 0 do
        turtle.up()
    end
end

while y > 12 do
    turtle.digDown()
    turtle.down()
    downCount = downCount + 1
    y = y - 1
end

while forwardCOunt <= 100 do
    fish()
end

fallback()
