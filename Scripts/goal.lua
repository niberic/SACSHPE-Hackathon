function OnThink(self)
  self:AddComponentOfType("VTimedValueComponent", "Timer")
  self.Timer:SetDuration(100)
  self.Timer:SetRange(0, 100)
  self.Timer:AddCallback("MyCallback", 3)
  Debug:PrintLine("Your Finish Time was " .. self.Timer:GetValue() .. " seconds")
  self.Timer:Resume()
  
end

function MyCallback(self, object)
  Debug:PrintLine("Your Finish Time was " .. self.Timer:GetValue() .. " seconds")
end