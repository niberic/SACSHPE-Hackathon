
function OnThink(self)
	self.char = Game:GetEntity("ball"):GetComponentOfType("vHavokRigidBody")
  local vel = self.char:GetLinearVelocity()   
  --local jump = vel.z > 0
  
  --if Input:IsKeyPressed(Vision.KEY_SPACE) and jump then
    --self.char:SetLinearVelocity(Vision.hkvVec3(vel.x,vel.y,500))
  --else
  if Input:IsKeyPressed(Vision.KEY_W) then
    self.char:SetLinearVelocity(Vision.hkvVec3(0,-1500,0))
    self.char:SetLinearVelocity(Vision.hkvVec3(vel.x,-1500,0))
  
  elseif Input:IsKeyPressed(Vision.KEY_S) then
    self.char:SetLinearVelocity(Vision.hkvVec3(0,1500,0))
    self.char:SetLinearVelocity(Vision.hkvVec3(vel.x,1500,0))

  elseif Input:IsKeyPressed(Vision.KEY_D) then
    self.char:SetLinearVelocity(Vision.hkvVec3(-1500,0,0))
    self.char:SetLinearVelocity(Vision.hkvVec3(-1500,vel.y,0))
  
  elseif Input:IsKeyPressed(Vision.KEY_A) then
    self.char:SetLinearVelocity(Vision.hkvVec3(1500,0,0))
    self.char:SetLinearVelocity(Vision.hkvVec3(1500,vel.y,0))
  
  elseif Input:IsKeyPressed(Vision.KEY_ENTER) then
    self.char:SetLinearVelocity(Vision.hkvVec3(0,0,0))  
    self.char:SetPosition(Vision.hkvVec3(-250, 50, 400))
  end  
  
end
