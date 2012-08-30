local T, C, L = unpack(Tukui)

 ---API (DO NOT CHANGE)

local function CreateBorder(f, i, o)
	if i then
		if f.iborder then return end
		local border = CreateFrame("Frame", f:GetName() and f:GetName() .. "InnerBorder" or nil, f)
		border:Point("TOPLEFT", 0, -0)
		border:Point("BOTTOMRIGHT", -0, 0)
		border:SetBackdrop({
		edgeFile = C["media"].blank,
		edgeSize = 0,
		insets = { left = 0, right = 0, top = 0, bottom = 0 }
		})
		border:SetBackdropBorderColor(unpack(C["media"].backdropcolor))
		f.iborder = border
	end

	if o then
		if f.oborder then return end
		local border = CreateFrame("Frame", f:GetName() and f:GetName() .. "OuterBorder" or nil, f)
		border:Point("TOPLEFT", -1, 1)
		border:Point("BOTTOMRIGHT", 1, -1)
		border:SetFrameLevel(f:GetFrameLevel() + 1)
		border:SetBackdrop({
		edgeFile = C["media"].blank,
		edgeSize = 1,
		insets = { left = 1, right = 1, top = 1, bottom = 1 }
		})
		border:SetBackdropBorderColor(0,0,0)
		f.oborder = border
	end
end

local function AllPoints(obj, frame, inset)
if not inset then inset = 0 end
obj:SetPoint("TOPLEFT", frame, "TOPLEFT", inset, -inset)
obj:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -inset, inset)
end

local function addapi(object)
	local mt = getmetatable(object).__index
	if not object.CreateBorder then mt.CreateBorder = CreateBorder end
	if not object.AllPoints then mt.AllPoints = AllPoints end
end

local handled = {["Frame"] = true}
local object = CreateFrame("Frame")
addapi(object)
addapi(object:CreateTexture())
addapi(object:CreateFontString())

object = EnumerateFrames()
while object do
	if not handled[object:GetObjectType()] then
	addapi(object)
	handled[object:GetObjectType()] = true
end

	object = EnumerateFrames(object)
end