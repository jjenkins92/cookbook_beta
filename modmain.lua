print("Starting mod Cookbook...")

--thanks to @darkXero for getting up started http://forums.kleientertainment.com/topic/57411-help-clickable-buttons/
Assets = {
	Asset("ATLAS", "images/rules.xml"),
	Asset("IMAGE", "images/rules.tex"),
}

local ImageButton = GLOBAL.require("widgets/imagebutton")
local Image = GLOBAL.require("widgets/image")

AddClassPostConstruct("widgets/statusdisplays", function(self)
	local rules = self:AddChild(ImageButton())
	local imgrules = self:AddChild(Image("images/rules.xml", "rules.tex"))
	rules:SetScale(0.5, 0.5, 0.5)
	rules:SetText("COOKBOOK")
	rules:SetOnClick(function()
		if imgrules.shown then
      print("hiding cookbook")
			imgrules:Hide()
		else
      print("showing cookbook")
			imgrules:Show()
		end
	end)
	rules:SetPosition(-1230, 150, 0)
	imgrules:SetPosition(-600, -200, 0)
	rules:Show()
	imgrules:Hide()
end)