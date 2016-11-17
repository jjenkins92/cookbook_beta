print("Starting mod Cookbook...")

--thanks to @darkXero for getting up started http://forums.kleientertainment.com/topic/57411-help-clickable-buttons/
Assets = {
	Asset("ATLAS", "images/rules.xml"),
	Asset("IMAGE", "images/rules.tex"),
}

local ImageButton = GLOBAL.require("widgets/imagebutton")
local Menu = GLOBAL.require("widgets/menu")
local Text = GLOBAL.require("widgets/text")
local Image = GLOBAL.require("widgets/image")
local Recipes = GLOBAL.require "myRecipes"

function buttonBuilder(itemName, h)
  return {
    text = itemName,
    offset = {x=0,y=-35*h,z=0},
    horizontal = -150,
    style="small"
  }
end

function displayItem(context, item)
  local text = context:AddChild(Text("opensans",28,item.name))
  text:SetPosition(-100,-200,1)
  local menuChildren = context:GetChildren()
  for k, v in pairs(menuChildren) do
    if type(v) == 'table' then
      if string.sub(v.name, 1, 4) == 'Text' then
        context:RemoveChild(v)
      end 
    end
  end
  local text = context:AddChild(Text("opensans",28,item.name))
  text:SetPosition(-100,-200,1)
end

AddClassPostConstruct("widgets/statusdisplays", function(self)
	local rules = self:AddChild(ImageButton())
  local menuItems = {}
  for k, v in pairs(Recipes) do
    table.insert(menuItems, buttonBuilder(v.name,k))
    menuItems[k].cb = function() displayItem(self,v) end
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