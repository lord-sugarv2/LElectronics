AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")
include("shared.lua")

function ENT:Initialize()
    self:SetModel("models/kobilica/wiremonitorbig.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
    self:SetUseType(SIMPLE_USE)
    
	local physics = self:GetPhysicsObject()
	if (physics:IsValid()) then
		physics:Wake()
	end

	self:SetVars(false, true)
end

function ENT:SetData(data)
	if not self:GetActive() then return end
	self:SetText(data)
end

function ENT:OnDeactivate()
	if IsValid(self:GetOutput()) then
		self:GetOutput():SetActiveStatus(false)
		self:GetOutput():SetData(false)
	end

	self:SetText("")
end