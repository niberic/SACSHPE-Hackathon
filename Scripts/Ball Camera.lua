-- new script file



function OnThink(self)
	self.ballObj = Game:GetEntity("ball"):GetComponentOfType("vHavokRigidBody")

  if Input:IsKeyPressed(Vision.KEY_SPACE) then
    self.ballObj:SetLinearVelocity(Vision.hkvVec3(0,0,1000))
  end
  
  if Input:IsKeyPressed(Vision.KEY_D) then 
    self.ballObj:SetLinearVelocity(Vision.hkvVec3(1000, 0, 0))
    end   
    
  if Input:IsKeyPressed(Vision.KEY_W) then 
    self.ballObj:SetLinearVelocity(Vision.hkvVec3(0, 1000, 0))
    end
  if Input:IsKeyPressed(Vision.KEY_A) then 
    self.ballObj:SetLinearVelocity(Vision.hkvVec3(-1000, 0, 0))
    end
  if Input:IsKeyPressed(Vision.KEY_S) then 
    self.ballObj:SetLinearVelocity(Vision.hkvVec3(0, -1000, 0))
    end
end
