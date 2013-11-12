
function OnThink(self)
	self.char = Game:GetEntity("ball"):GetComponentOfType("vHavokRigidBody")
  
  local vel = self.char:GetLinearVelocity()   
  local is_jumping = vel.z > 0  -- Doesn't really work, but is used to make it so that we can only jump once
  
  -- General Speed
  local speed = 1000
  local jump_spd = 500
  
  -- Directional Speeds
  local up_spd = -speed
  local down_spd = speed
  local left_spd = speed
  local right_spd = -speed
  
  local obj_x = vel.x
  local obj_y = vel.y
  local obj_z = 0         -- Change to obj_z = vel.z when enabling jump
  
  -- Map the keyboard input
  local up = Input:IsKeyPressed(Vision.KEY_W)
  local left = Input:IsKeyPressed(Vision.KEY_A)
  local right = Input:IsKeyPressed(Vision.KEY_D)  
  local down = Input:IsKeyPressed(Vision.KEY_S)
  local jump = Input:IsKeyPressed(Vision.KEY_SPACE)
  
  --if jump and ~is_jumping then
    --self.char:SetLinearVelocity(Vision.hkvVec3(vel.x,vel.y,jump_spd))
  
  if up and left then
    self.char:SetLinearVelocity(Vision.hkvVec3(left_spd, up_spd,obj_z))

  elseif up and right then
    self.char:SetLinearVelocity(Vision.hkvVec3(right_spd, up_spd, obj_z))
  
  elseif down and right then
    self.char:SetLinearVelocity(Vision.hkvVec3(right_spd, down_spd, obj_z))
  
  elseif down and left then
    self.char:SetLinearVelocity(Vision.hkvVec3(left_spd, down_spd, obj_z))
    
  elseif left then
    self.char:SetLinearVelocity(Vision.hkvVec3(left_spd,0,obj_z))

  elseif up then
    self.char:SetLinearVelocity(Vision.hkvVec3(0, up_spd, obj_z))
  
  elseif down then
    self.char:SetLinearVelocity(Vision.hkvVec3(0, down_spd, obj_z))

  elseif right then
    self.char:SetLinearVelocity(Vision.hkvVec3(right_spd, 0, obj_z))
  
  elseif Input:IsKeyPressed(Vision.KEY_ENTER) then    -- Warp obj back to spawn
    self.char:SetLinearVelocity(Vision.hkvVec3(0,0,0))  
    self.char:SetPosition(Vision.hkvVec3(-250, 50, 400)) -- May want to change this to some outside spawning position later.
  end  
  
end
