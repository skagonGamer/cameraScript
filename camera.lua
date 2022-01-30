

local Camera = {x = 0, y = 0, scale = 3}
 
 function Camera:apply()
    love.graphics.push()
    love.graphics.scale(self.scale,self.scale)
    love.graphics.translate(-self.x, -self.y)
 end
 
 function Camera:clear()
    love.graphics.pop()
 end
 
 function Camera:setPosition(x, y)
    self.x = x - love.graphics.getWidth() / 2 / self.scale
    self.y = y - love.graphics.getHeight() / 2 / self.scale
    local RS = self.x + love.graphics.getWidth() / self.scale
    local BS = self.y + love.graphics.getHeight() / self.scale
 
    if self.x < 0 then
       self.x = 0
    elseif RS > MapWidth then
       self.x = MapWidth - love.graphics.getWidth() / self.scale
    end

    if BS > MapHeight then
      print(self.y)
      self.y = MapHeight - love.graphics.getHeight() / self.scale
    elseif self.y < love.graphics.getHeight() / self.scale then
      print(self.y.. "ehehe")
      self.y = love.graphics.getHeight() / 2 / self.scale
    end
 end
 
 return Camera