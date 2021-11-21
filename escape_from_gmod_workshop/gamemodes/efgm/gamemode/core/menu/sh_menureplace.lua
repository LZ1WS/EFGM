if CLIENT then
surface.CreateFont("ButtonFont", {font = "Arial",size = 40, weight = 700, outline = false,}) -- Then font named 'Font' compacted on one line
imageison = false
hook.Add("PreRender", "esc menu", function()
if input.IsKeyDown(KEY_ESCAPE) and gui.IsGameUIVisible() and imageison == false then

local exit1start = Vector(-5730.521973, 14476.339844, 347.485168)
local exit1end = Vector(-6191.779297, 14922.670898, 844.339600)
local exit2start = Vector(14217.608398, -717.553711, 1403.865234)
local exit2end = Vector(13486.078125, -1488.893433, 444.435364)

-- Menu
local image = vgui.Create( "DImage" )
image:SetPos( 0, 0 )
image:SetSize( ScrW(), ScrH() )
image:SetImage("materials/menu/bear.png")
imageison = true

local logo = vgui.Create( "DImage", image )
logo:SetPos( ScrW() / 2.78, ScrH() / 4.5 )
logo:SetSize( 500, 200 )
logo:SetImage("materials/menu/f3.jpg")

LocalPlayer():EmitSound("menu_theme.wav", 75, 100, 0.2, CHAN_AUTO, 0, 0)
timer.Create("loopmenu", 330, 0, function()
LocalPlayer():EmitSound("menu_theme.wav", 75, 100, 0.2, CHAN_AUTO, 0, 0)
end)

local DermaButton = vgui.Create( "DButton", image )
DermaButton:SetFontInternal("ButtonFont")
DermaButton:SetText( language.GetPhrase("efg.continue") )
DermaButton:SetPos( ScrW() / 2.3, ScrH() / 2 )
DermaButton:SetSize( 250, 30 )
function DermaButton:Paint( w, h )
DermaButton:SetTextColor(color_white)
end
DermaButton.DoClick = function()
image:Hide()
imageison = false
LocalPlayer():StopSound( "menu_theme.wav" )
timer.Remove("loopmenu")
end
DermaButton:MakePopup()

local DermaButton2 = vgui.Create( "DButton", image )
DermaButton2:SetFontInternal("ButtonFont")
DermaButton2:SetText( language.GetPhrase("efg.quit") )
DermaButton2:SetPos( ScrW() / 2.3, ScrH() / 1.4 )
DermaButton2:SetSize( 250, 30 )
function DermaButton2:Paint( w, h )
DermaButton2:SetTextColor(color_white)
end
DermaButton2.DoClick = function()
RunConsoleCommand("disconnect")
end
DermaButton2:MakePopup()

local DermaButton3 = vgui.Create( "DButton", image )
DermaButton3:SetFontInternal("ButtonFont")
DermaButton3:SetText( language.GetPhrase("efg.base") )
DermaButton3:SetPos( ScrW() / 2.3, ScrH() / 1.74 )
DermaButton3:SetSize( 250, 30 )
function DermaButton3:Paint( w, h )
	DermaButton3:SetTextColor(color_white)
end
DermaButton3.DoClick = function()
if LocalPlayer():GetPos():WithinAABox(exit1start, exit1end) == true or LocalPlayer():GetPos():WithinAABox(exit2start, exit2end) == true then
LocalPlayer():ChatPrint(language.GetPhrase( "efg.teleportbase" ))
timer.Create("Before TP", 5, 1, function()
net.Start("TeleportToBase")
net.SendToServer()
LocalPlayer():StopSound( "base_left.wav" )
LocalPlayer():EmitSound("base_enter.wav", 75, 100, 0.2, CHAN_AUTO, 0, 0)
timer.Create("loopbase", 190, 0, function()
LocalPlayer():EmitSound("base_enter.wav", 75, 100, 0.2, CHAN_AUTO, 0, 0)
end)
end)
end
if LocalPlayer():GetPos():WithinAABox(Vector(-237.646713, 936.257446, 12009.003906), Vector(428.530396, 2229.283203, 14529.247070)) == true then
LocalPlayer():ChatPrint(language.GetPhrase( "efg.teleportworld" ))
timer.Create("Before TP", 5, 1, function()
net.Start("TeleportToWorld")
net.SendToServer()
LocalPlayer():EmitSound("base_left.wav", 75, 100, 0.2, CHAN_AUTO, 0, 0)
LocalPlayer():StopSound( "base_enter.wav" )
timer.Remove("loopbase")
end)
end
image:Hide()
imageison = false
LocalPlayer():StopSound( "menu_theme.wav" )
timer.Remove("loopmenu")
end
DermaButton3:MakePopup()

local DermaButton4 = vgui.Create( "DButton", image )
DermaButton4:SetFontInternal("ButtonFont")
DermaButton4:SetText( language.GetPhrase("efg.f4") )
DermaButton4:SetPos( ScrW() / 2.3, ScrH() / 1.55 )
DermaButton4:SetSize( 250, 30 )
function DermaButton4:Paint( w, h )
	DermaButton4:SetTextColor(color_white)
end
DermaButton4.DoClick = function()
net.Start("Open TM Server")
net.SendToServer()
image:Hide()
imageison = false
LocalPlayer():StopSound( "menu_theme.wav" )
timer.Remove("loopmenu")
end
DermaButton4:MakePopup()

if LocalPlayer():IsSuperAdmin() then
local DermaButton5 = vgui.Create( "DButton", image )
DermaButton5:SetFontInternal("ButtonFont")
DermaButton5:SetText( language.GetPhrase("efg.config") )
DermaButton5:SetPos( ScrW() / 1.1, ScrH() / 1.04 )
DermaButton5:SizeToContents()
function DermaButton5:Paint( w, h )
DermaButton5:SetTextColor(color_white)
end
DermaButton5.DoClick = function()
if IsValid(TRADECONFIGMENU) then return end
TRADECONFIGMENU = vgui.Create("DFrame", image)

local AddButton = vgui.Create( "DButton", TRADECONFIGMENU )
AddButton:SetFont("ChatFont")
AddButton:SetText("Add Weapon")
AddButton:SizeToContents()
AddButton:AlignLeft(0)
AddButton:SetMouseInputEnabled(true)

TRADECONFIGSCROLL = vgui.Create("DScrollPanel", TRADECONFIGMENU)
TRADECONFIGSCROLL:Dock( FILL )
local List = TRADECONFIGSCROLL:Add( "DIconLayout" )
List:Dock( FILL )
List:SetSpaceY( 5 )
List:SetSpaceX( 5 )

AddButton.DoClick = function()

local TextEntry = vgui.Create( "DTextEntry", TRADECONFIGMENU)
	TextEntry:Center()
	TextEntry:SetPlaceholderText( "Type cancel to cancel the adding process" )
	TextEntry:MakePopup()
	TextEntry:SetSize(200, 50)
	TextEntry.OnEnter = function( self )
if string.lower(self:GetValue()) == "cancel" then
	self:Hide()
end
if (weapons.Get(tostring(self:GetValue()))) then
net.Start("weapon_adding")
net.WriteString(string.lower(self:GetValue()))
net.SendToServer()
	self:Hide()
end
end

end

for _, v in pairs(weapons.GetList()) do
if !(efgmpriceweapons[v.ClassName]) then continue end
local icon = List:Add( "SpawnIcon" )
icon:SetModel( v.WorldModel or "models/props_junk/watermelon01.mdl" )
icon:SetSize(220, 220)

local weaponname = icon:Add( "DLabel" )
weaponname:SetText(v.PrintName)
weaponname:SetFont("ChatFont")
weaponname:Dock(TOP)
weaponname:SizeToContents()

local ConfigButton = vgui.Create( "DButton", icon )
ConfigButton:SetFont("ChatFont")
ConfigButton:SetText("configtest")
ConfigButton:SizeToContents()
ConfigButton:Dock(BOTTOM)
ConfigButton:SetMouseInputEnabled(true)
ConfigButton.DoClick = function()

local properties = TRADECONFIGMENU:Add("DMenu")
properties:SetPos(TRADECONFIGMENU:CursorPos())

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
TRADECONFIGMENU:SetSize(ScrW() * 0.942, ScrH() * 0.97)
TRADECONFIGMENU:Center()
TRADECONFIGMENU:SetTitle("")
TRADECONFIGMENU:SetDraggable(false)
TRADECONFIGMENU:MakePopup()
TRADECONFIGMENU.Paint = function(self, w, h)
	draw.RoundedBox(2, 0, 0, w, h, Color(0, 0, 0, 200))
end
TRADECONFIGMENU:SetAutoDelete(true)

TRADECONFIGMENU:ShowCloseButton(true)
end

DermaButton5:MakePopup()

end

gui.HideGameUI()

end

end)

local function Raid_Menu()
surface.CreateFont("ButtonFont2", {font = "Arial",size = 45, weight = 700, outline = false,}) -- Then font named 'Font' compacted on one line
local imageraid = vgui.Create( "DImage" )
imageraid:SetPos( 0, 0 )
imageraid:SetSize( ScrW(), ScrH() )
imageraid:SetImage("materials/menu/forest.png")

local logoraid = vgui.Create( "DImage", imageraid )
logoraid:SetPos( ScrW() / 2.78, ScrH() / 4.5 )
logoraid:SetSize( 500, 200 )
logoraid:SetImage("materials/menu/f3.jpg")

LocalPlayer():EmitSound("menu_theme.wav", 75, 100, 0.2, CHAN_AUTO, 0, 0)
timer.Create("loopraid", 330, 0, function()
LocalPlayer():EmitSound("menu_theme.wav", 75, 100, 0.2, CHAN_AUTO, 0, 0)
end)

local DermaButton = vgui.Create( "DButton", imageraid )
DermaButton:SetFontInternal("ButtonFont2")
DermaButton:SetText( language.GetPhrase("efg.Raid") )
DermaButton:SetPos( ScrW() / 2.09, ScrH() / 2 )
DermaButton:SizeToContents()
function DermaButton:Paint( w, h )
	DermaButton:SetTextColor(color_white)
end
DermaButton.DoClick = function()
imageraid:Hide()
LocalPlayer():StopSound( "menu_theme.wav" )
timer.Remove("loopraid")
net.Start("Raid_Mode_ON")
net.SendToServer()
end
DermaButton:MakePopup()

local DermaButton2 = vgui.Create( "DButton", imageraid )
DermaButton2:SetFontInternal("ButtonFont2")
DermaButton2:SetText( language.GetPhrase("efg.FreeMode") )
DermaButton2:SetPos( ScrW() / 2.45, ScrH() / 1.74 )
DermaButton2:SizeToContents()
function DermaButton2:Paint( w, h )
	DermaButton2:SetTextColor(color_white)
end
DermaButton2.DoClick = function()
imageraid:Hide()
LocalPlayer():StopSound( "menu_theme.wav" )
timer.Remove("loopraid")
end
DermaButton2:MakePopup()
end
hook.Add( "InitPostEntity", "Raid", function()
if game.SinglePlayer() == true then
Raid_Menu()
if SERVER then
local player_count_crate = GetConVar("efg_countspawncrate")
local player_count_npc = GetConVar("efg_countspawnnpc")
player_count_crate:SetInt(1)
player_count_npc:SetInt(1)
end
end
end)
--concommand.Add("efg_devraid", Raid_Menu)
end

if SERVER then
net.Receive("TeleportToBase", function(len, ply)
net.Start("Base Menu Open")
net.Send(ply)
ply:SetPos(Vector(208.499115, 1589.053467, 13337.758789))
end)
net.Receive("TeleportToWorld", function(len, ply)
net.Start("Base Menu Close")
net.Send(ply)
ply:Spawn()


end)
net.Receive("Open TM Server", function(len, ply)
net.Start("Open TM")
net.Send(ply)
end)
net.Receive("Raid_Mode_ON", function(len,ply)
local player_count_crate = GetConVar("efg_countspawncrate")
local player_count_npc = GetConVar("efg_countspawnnpc")
local special_npc = GetConVar("efg_spawnspecialnpc")
player_count_npc:SetInt(1)
player_count_crate:SetInt(1)
special_npc:SetInt(1)
end)
end