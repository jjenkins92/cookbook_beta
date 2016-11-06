print("Starting mod Cookbook...")

--thanks to @darkXero for getting up started http://forums.kleientertainment.com/topic/57411-help-clickable-buttons/
Assets = {
	Asset("ATLAS", "images/rules.xml"),
	Asset("IMAGE", "images/rules.tex"),
}

local ImageButton = GLOBAL.require("widgets/imagebutton")
local Menu = GLOBAL.require("widgets/menu")

function myCallback()
  print('calling back')
  end

AddClassPostConstruct("widgets/statusdisplays", function(self)
	local rules = self:AddChild(ImageButton())
	local menurules = self:AddChild(Menu({{text = 'Test',cb = myCallback,offest = 0, horizontal = 150, style = "small"}},0,150,"small"))
	rules:SetScale(0.5, 0.5, 0.5)
	rules:SetText("COOKBOOK")
	rules:SetOnClick(function()
		if menurules.shown then
      print("hiding cookbook")
			menurules:Hide()
		else
      print("showing cookbook")
			menurules:Show()
		end
	end)
	rules:SetPosition(-1230, 150, 0)
	menurules:SetPosition(-600, -200, 0)
	rules:Show()
	menurules:Hide()
end)