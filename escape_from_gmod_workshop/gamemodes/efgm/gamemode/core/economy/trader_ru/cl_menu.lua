local GM = GM or GAMEMODE
surface.CreateFont("Font", {font = "Arial",extended = false,size = 40,})
surface.CreateFont("DButton", {font = "Arial",extended = false,size = 20,})
surface.CreateFont("Text", {font = "Arial",extended = false,size = 20,})
local buy = GM.LANG:GetString("efg.buy")
local faded_black = Color(0, 0, 0, 200)
function OpenTraderShop()
if IsValid(RUTRADERSCROLL) then return end
local DermaPanel = vgui.Create("DFrame")
RUTRADERSCROLL = vgui.Create("DScrollPanel", DermaPanel)
RUTRADERSCROLL:Dock( FILL )

local List = RUTRADERSCROLL:Add( "DIconLayout" )
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

local SubMenu = properties:AddSubMenu( GM.LANG:GetString("efg.buyammo") )

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
end


DermaPanel:SetSize(ScrW() * 0.942, ScrH() * 0.97)
DermaPanel:Center()
DermaPanel:SetTitle("")
DermaPanel:SetDraggable(false)
DermaPanel:MakePopup()
DermaPanel.Paint = function(self, w, h)
	draw.RoundedBox(2, 0, 0, w, h, faded_black)
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