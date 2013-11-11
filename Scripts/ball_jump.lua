
function OnThink(self)
	self.char = Game:GetEntity("ball"):GetComponentOfType("vHavokRigidBody")
  local vel = self.char:GetLinearVelocity()   
  local jump = vel.z > 0
  
  if Input:IsKeyPressed(Vision.KEY_SPACE) and jump then
    self.char:SetLinearVelocity(Vision.hkvVec3(vel.x,vel.y,500))
  
  elseif Input:IsKeyPressed(Vision.KEY_W) then
    self.char:SetLinearVelocity(Vision.hkvVec3(vel.x,1000,vel.z))
  
  elseif Input:IsKeyPressed(Vision.KEY_S) then
    self.char:SetLinearVelocity(Vision.hkvVec3(vel.x,-1000,vel.z))

  elseif Input:IsKeyPressed(Vision.KEY_D) then
    self.char:SetLinearVelocity(Vision.hkvVec3(1000,vel.y,vel.z))
  
  elseif Input:IsKeyPressed(Vision.KEY_A) then
    self.char:SetLinearVelocity(Vision.hkvVec3(-1000,vel.y,vel.z))
  
  elseif Input:IsKeyPressed(Vision.KEY_ENTER) then
    self.char:SetLinearVelocity(Vision.hkvVec3(0,0,0))  
    self.char:SetPosition(Vision.hkvVec3(-450, -150, 165))
  end  
  
end
