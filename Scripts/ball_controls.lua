
function OnThink(self)
	self.char = Game:GetEntity("ball"):GetComponentOfType("vHavokRigidBody")
  local vel = self.char:GetLinearVelocity()   
  local is_jumping = vel.z > 0
  local jump_spd = 500
  local up_spd = -1000
  local down_spd = 1000
  local left_spd = 1000
  local right_spd = -1000
  
  local up = Input:IsKeyPressed(Vision.KEY_W)
  local left = Input:IsKeyPressed(Vision.KEY_A)
  local right = Input:IsKeyPressed(Vision.KEY_D)  
  local down = Input:IsKeyPressed(Vision.KEY_S)
  local jump = Input:IsKeyPressed(Vision.KEY_SPACE)
  
  if jump then
    self.char:SetLinearVelocity(Vision.hkvVec3(vel.x,vel.y,jump_spd))
  
  elseif up and left then
    self.char:SetLinearVelocity(Vision.hkvVec3(left_spd, up_spd,vel.z))

  elseif up and right then
    self.char:SetLinearVelocity(Vision.hkvVec3(right_spd, up_spd,vel.z))
  
  elseif down and right then
    self.char:SetLinearVelocity(Vision.hkvVec3(right_spd, down_spd, vel.z))
  
  elseif down and left then
    self.char:SetLinearVelocity(Vision.hkvVec3(left_spd, down_spd, vel.z))
    
  elseif left then
    self.char:SetLinearVelocity(Vision.hkvVec3(left_spd,0,vel.z))

  elseif up then
    self.char:SetLinearVelocity(Vision.hkvVec3(0, up_spd, vel.z))
  
  elseif down then
    self.char:SetLinearVelocity(Vision.hkvVec3(0, down_spd, vel.z))

  elseif right then
    self.char:SetLinearVelocity(Vision.hkvVec3(right_spd, 0, vel.z))
  
  elseif Input:IsKeyPressed(Vision.KEY_ENTER) then
    self.char:SetLinearVelocity(Vision.hkvVec3(0,0,0))  
    self.char:SetPosition(Vision.hkvVec3(-450, -150, 165))
  end  
  
end
