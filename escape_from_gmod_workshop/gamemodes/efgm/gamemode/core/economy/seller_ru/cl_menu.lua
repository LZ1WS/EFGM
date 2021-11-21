surface.CreateFont("Font", {font = "Arial",extended = false,size = 40,}) -- Then font named 'Font' compacted on one line
surface.CreateFont("DButton", {font = "Arial",extended = false,size = 20,}) -- Then font named 'Font' compacted on one line
surface.CreateFont("Text", {font = "Arial",extended = false,size = 20,}) -- Then font named 'Font' compacted on one line
local buy = language.GetPhrase("efg.sell")
local faded_black = Color(0, 0, 0, 200)		-- The color black but with 200 Alpha
function OpenSellerShop()
if IsValid(RUSELLERSCROLL) then return end
local DermaPanel = vgui.Create("DFrame")	-- The name DermaPanel to store the value DFrame
RUSELLERSCROLL = vgui.Create("DScrollPanel", DermaPanel)
RUSELLERSCROLL:Dock( FILL )

local List = RUSELLERSCROLL:Add( "DIconLayout" )
List:Dock( FILL )
List:SetSpaceY( 5 )
List:SetSpaceX( 5 )

for _, v in pairs(weapons.GetList()) do
if !(efgmpriceweapons[v.ClassName]) then continue end

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
net.Start("Sell RUB")
net.WriteString(class)
net.WriteInt((efgmpriceweapons[class]["RUB"] or 1000) / 6, 32)
net.SendToServer()
end)

properties:AddOption( (efgmpriceweapons[class]["DOL"] or 500) .. " USD", function()
net.Start("Sell DOL")
net.WriteString(class)
net.WriteInt((efgmpriceweapons[class]["DOL"] or 500) / 6, 32)
net.SendToServer()
end)

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

net.Receive( "NPCSELLER", OpenSellerShop)