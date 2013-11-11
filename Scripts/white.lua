-- new script file

function OnObjectEnter(self, object)
  local red = Vision.VColorRef(255,0,0)
  local white = Vision.VColorRef(255, 255, 255)
  local green = Vision.VColorRef(0,255,0)
  Debug:Enable(true)
  self.lightObj = Game:GetLight("light")
  self.lightObj:SetColor(white)
end