-- new script file
function OnObjectEnter (self, object)
self = Game:GetEntity("ball"):GetComponentOfType("vHavokRigidBody")
self:SetPosition(Vision.hkvVec3(250, -400, 400))
self:SetLinearVelocity(Vision.hkvVec3(0,0,0))
end