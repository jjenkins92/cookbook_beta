print("Starting mod Cookbook...")

--thanks to @darkXero for getting up started http://forums.kleientertainment.com/topic/57411-help-clickable-buttons/
Assets = {
	Asset("ATLAS", "images/rules.xml"),
	Asset("IMAGE", "images/rules.tex"),
}

local ImageButton = GLOBAL.require("widgets/imagebutton")
local Menu = GLOBAL.require("widgets/menu")
local TextButton = GLOBAL.require("widgets/textbutton")
local Constants = GLOBAL.require "recipes"

function myCallback(item)
  print('calling back'..item)
  end

function buttonBuilder(itemName, h)
  return {
    text = itemName,
    cb = buttonCallback(itemName),
    offset = {x=0,y=-35*h,z=0},
    horizontal = -150,
    style="small"
  }
  end

AddClassPostConstruct("widgets/statusdisplays", function(self)
	local rules = self:AddChild(ImageButton())
  local menuItems = {}
  for k, v in pairs(Constants) do
    table.insert(menuItems, buttonBuilder(v.name,k))
  end
  
	local menurules = self:AddChild(Menu(menuItems,0,-150,"small"))
	rules:SetScale(0.7,0.7, 0.5)
	rules:SetText("COOKBOOK")
	rules:SetOnClick(function()
  menurules:SetTextSize(24)
		if menurules.shown then
      print("hiding cookbook")
			menurules:Hide()
		else
      print("showing cookbook")
			menurules:Show()
		end
	end)
	rules:SetPosition(0, -150, 0)
	menurules:SetPosition(0, -200, 0)
	rules:Show()
	menurules:Hide()
end)