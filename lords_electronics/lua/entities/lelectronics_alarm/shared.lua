ENT.Type = "anim"
ENT.Base = "lelectronics_base"
ENT.PrintName = "Alarm"
ENT.Spawnable = true
ENT.Category = "LElectronics"

LElectronics:AddElectronic(string.Replace(ENT.Folder, "entities/", ""))

function ENT:SetupDataTables()
    self:NetworkVar("Entity", 0, "Output")
    self:NetworkVar("Entity", 1, "Input")
    self:NetworkVar("Bool", 0, "HasOutput")
    self:NetworkVar("Bool", 1, "HasInput")
    self:NetworkVar("Bool", 2, "Active")
end