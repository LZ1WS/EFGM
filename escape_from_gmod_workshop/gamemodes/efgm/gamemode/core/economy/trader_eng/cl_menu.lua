surface.CreateFont("Font", {font = "Arial",extended = false,size = 40,}) -- Then font named 'Font' compacted on one line
surface.CreateFont("DButton", {font = "Arial",extended = false,size = 20,}) -- Then font named 'Font' compacted on one line
surface.CreateFont("Text", {font = "Arial",extended = false,size = 20,}) -- Then font named 'Font' compacted on one line
local buy = language.GetPhrase("efg.buy")
local faded_black = Color(0, 0, 0, 200)		-- The color black but with 200 Alpha
function OpenTraderShop()
if IsValid(RUTRADERSCROLL) then return end
local DermaPanel = vgui.Create("DFrame")	-- The name DermaPanel to store the value DFrame
RUTRADERSCROLL = vgui.Create("DScrollPanel", DermaPanel)
RUTRADERSCROLL:Dock( FILL )

local List = RUTRADERSCROLL:Add( "DIconLayout" )
List:Dock( FILL )
List:SetSpaceY( 5 )
List:SetSpaceX( 5 )

for _, v in pairs(weapons.GetList()) do
local class = v.ClassName
if class:find("cw_") and not class:find("base") then

local icon = List:Add( "SpawnIcon" )
icon:SetModel( v.WorldModel or "models/props_junk/watermelon01.mdl" )
icon:SetSize(250, 250)

local DermaButton = vgui.Create( "DButton", icon )
DermaButton:SetFont("ChatFont")
DermaButton:SetText(buy)
DermaButton:SizeToContents()
DermaButton:Dock(BOTTOM)
DermaButton:SetMouseInputEnabled(true)
DermaButton.DoClick = function()

local properties = DermaPanel:Add("DMenu")
properties:SetPos(DermaPanel:CursorPos())

properties:AddOption( (efgmpriceweapons[class]["RUB"] or 1000) .. " RUB", function()
net.Start("Buy RUB")
net.WriteString(class)
net.WriteInt(efgmpriceweapons[class]["RUB"] or 1000, 32)
net.SendToServer()
end)

properties:AddOption( (efgmpriceweapons[class]["DOL"] or 500) .. " USD", function()
net.Start("Buy DOL")
net.WriteString(class)
net.WriteInt(efgmpriceweapons[class]["DOL"] or 500, 32)
net.SendToServer()
end)

local SubMenu = properties:AddSubMenu( "Купить патроны" )

SubMenu:AddOption( math.ceil((efgmpriceweapons[class]["RUB"] or 1000) / 4) .. " RUB", function()
net.Start("Buy RUB")
net.WriteString(class)
net.WriteInt((efgmpriceweapons[class]["RUB"] or 1000) / 4, 32)
net.SendToServer()
end)

SubMenu:AddOption( math.ceil((efgmpriceweapons[class]["DOL"] or 500) / 4) .. " USD", function()
net.Start("Buy DOL")
net.WriteString(class)
net.WriteInt(math.ceil((efgmpriceweapons[class]["DOL"] or 500) / 4), 32)
net.SendToServer()
end)

end
DermaButton.DoRightClick = function()
if LocalPlayer():IsSuperAdmin() == false then return end
local properties = DermaPanel:Add("DMenu")
properties:SetPos(DermaPanel:CursorPos())

local pricerub = properties:AddOption( "Установить цену в рублях", function()
	local TextEntry = vgui.Create( "DTextEntry", pricerub)
	TextEntry:Center()
	TextEntry:SetPlaceholderText( "Введите Цену" )
	TextEntry:MakePopup()
	TextEntry:SetSize(100, 50)
	TextEntry.OnEnter = function( self )
	self:Hide()
if isnumber(tonumber(self:GetValue())) then
	net.Start("Pricechange RUB")
	net.WriteString(class)
	net.WriteInt(self:GetValue(), 32)
	net.SendToServer()
end
end
end)

local pricedol = properties:AddOption( "Установить цену в долларах", function()
	local TextEntry = vgui.Create( "DTextEntry", pricedol)
	TextEntry:Center()
	TextEntry:SetPlaceholderText( "Введите Цену" )
	TextEntry:MakePopup()
	TextEntry:SetSize(100, 50)
	TextEntry.OnEnter = function( self )
	self:Hide()
if isnumber(tonumber(self:GetValue())) then
	net.Start("Pricechange DOL")
	net.WriteString(class)
	net.WriteInt(self:GetValue(), 32)
	net.SendToServer()
end
end
end)

end

end
end

DermaPanel:SetSize(ScrW() * 0.97, ScrH() * 0.97) // Sets the size to 500x by 300y
DermaPanel:Center()							// Centers the panel
DermaPanel:SetTitle("")						// Set the title to nothing
DermaPanel:SetDraggable(false)				// Makes it so you carnt drag it
DermaPanel:MakePopup()						// Makes it so you can move your mouse on it
DermaPanel.Paint = function(self, w, h)		// Paint function w, h = how wide and tall it is
	draw.RoundedBox(2, 0, 0, w, h, faded_black)	// Draws a rounded box with the color faded_black stored abouve
end
end

net.Receive("price_data", function()
efgmpriceweapons = net.ReadTable()
end)
hook.Add( "InitPostEntity", "Ready", function()
	net.Start( "client_ready" )
	net.SendToServer()
end )

net.Receive( "NPCTRADER", OpenTraderShop)