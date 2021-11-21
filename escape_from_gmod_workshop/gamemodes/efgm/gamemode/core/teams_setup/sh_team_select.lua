if SERVER then
local GM = GM or GAMEMODE
CreateConVar("efg_whitelist", 1, 1288192, "Enable fractions whitelist, 0 = false, 1 = true", 0, 1)
-- ^ Suggested by treven#4702 ^
end
if CLIENT then
local GM = GM or GAMEMODE
CreateClientConVar("efg_whitelist", 1, false, false, "Enable fractions whitelist, 0 = false, 1 = true", 0, 1)
local WhiteListUSEC = {"USEC"}
local WhiteListBEAR = {"BEAR"}
local WhiteListUSECID = {""}
local WhiteListBEARID = {""}

surface.CreateFont("help", {
font = "Default",
size = 20,
weight = 700,
antialiasing = true,
shadow = true,
antialis = true
})

function GM:HUDPaint()
net.Receive("Open TM", function()
	if LocalPlayer():Team() == 1 or LocalPlayer():Team() == 2 or LocalPlayer():Team() == 3 or LocalPlayer():Team() == 4 then
	 if
	 	LocalPlayer():IsAdmin() or
      table.HasValue(WhiteListUSEC, LocalPlayer():GetUserGroup()) or
	 table.HasValue(WhiteListBEAR, LocalPlayer():GetUserGroup()) or
       table.HasValue(WhiteListUSECID, LocalPlayer():SteamID()) or
	 table.HasValue(WhiteListBEARID, LocalPlayer():SteamID()) or
	 (GetConVar("efg_whitelist")):GetFloat() == 0 then
local TeamMenu = vgui.Create("DFrame")
TeamMenu:SetSize(900, 450)
TeamMenu:SetPos(ScrW() / 2 - 450, ScrH() / 2 - 250)
TeamMenu:SetTitle(GM.LANG:GetString("efg.teamtitle"))
TeamMenu:ShowCloseButton(true)
TeamMenu:MakePopup()

TeamMenu.Paint = function (self, w, h)
draw.RoundedBox(5, 0, 0, w, h, Color(255,0,0,100) )
draw.RoundedBox(5, 2, 2, w-4, h-4, Color(50,50,50,100) )

end

if LocalPlayer():Team() ~= 1 then
local dPanelButton1 = vgui.Create( "DButton", TeamMenu)
	dPanelButton1:SetSize( 250, 250 )
	dPanelButton1:SetPos( 50, 50 )
	if LocalPlayer():Team() == 3 and not table.HasValue(WhiteListUSEC, LocalPlayer():GetUserGroup()) and not table.HasValue(WhiteListBEAR, LocalPlayer():GetUserGroup()) or not table.HasValue(WhiteListUSECID, LocalPlayer():SteamID()) and not table.HasValue(WhiteListBEARID, LocalPlayer():SteamID()) then
		dPanelButton1:SetPos( 325, 50 ) end
	if not table.HasValue(WhiteListUSEC, LocalPlayer():GetUserGroup()) and not table.HasValue(WhiteListBEAR, LocalPlayer():GetUserGroup())
or not table.HasValue(WhiteListUSECID, LocalPlayer():SteamID()) and not table.HasValue(WhiteListBEARID, LocalPlayer():SteamID()) then
		dPanelButton1:SetPos( 325, 50 ) end
	if LocalPlayer():Team() == 3 and table.HasValue(WhiteListUSEC, LocalPlayer():GetUserGroup()) or table.HasValue(WhiteListUSECID, LocalPlayer():SteamID()) then
		dPanelButton1:SetPos( 325, 50 ) end
	if LocalPlayer():Team() == 4 and table.HasValue(WhiteListBEAR, LocalPlayer():GetUserGroup()) or table.HasValue(WhiteListBEARID, LocalPlayer():SteamID()) then
	dPanelButton1:SetPos( 325, 50 ) end
	dPanelButton1:SetText( '' )
	dPanelButton1.Paint = function( self, w, h )
		draw.RoundedBox( 15, 0, 0, w, h, Color( 50, 50, 50, 200 ) )
		draw.SimpleText( GM.LANG:GetString("efg.saveger"), "help", w / 2,  h / 2.0, Color( 255, 200, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )
	end

	dPanelButton1.DoClick = function() 
	
net.Start("Dikiy")
net.SendToServer()
	TeamMenu:Hide()
	end end

if LocalPlayer():Team() ~= 2 and LocalPlayer():IsAdmin() then
local dPanelButton1 = vgui.Create( "DButton", TeamMenu)
	dPanelButton1:SetSize( 250, 250 )
	dPanelButton1:SetPos( 325, 50 )
	dPanelButton1:SetText( '' )
	dPanelButton1.Paint = function( self, w, h )
		draw.RoundedBox( 15, 0, 0, w, h, Color( 50, 50, 50, 200 ) )
		draw.SimpleText( GM.LANG:GetString("efg.admin"), "help", w / 2,  h / 2.0, Color( 255, 200, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )
	end

	dPanelButton1.DoClick = function() 
	
net.Start("Admin")
net.SendToServer()
	TeamMenu:Hide()
	end end

		if LocalPlayer():Team() ~= 3 then
if (GetConVar("efg_whitelist")):GetFloat() == 0 or table.HasValue(WhiteListUSEC, LocalPlayer():GetUserGroup()) or table.HasValue(WhiteListUSECID, LocalPlayer():SteamID()) then
local dPanelButton2 = vgui.Create( "DButton", TeamMenu)
	dPanelButton2:SetSize( 250, 250 )
	dPanelButton2:SetPos( 325, 50 )
	if LocalPlayer():Team() == 4 then
	dPanelButton2:SetPos( 600, 50 ) end
	if LocalPlayer():Team() == 1 then
	dPanelButton2:SetPos( 325, 50 ) end
if (GetConVar("efg_whitelist")):GetFloat() == 0 then
	dPanelButton2:SetPos( 50, 50 ) end
	dPanelButton2:SetText( '' )
	dPanelButton2.Paint = function( self, w, h )
		draw.RoundedBox( 15, 0, 0, w, h, Color( 50, 50, 50, 200 ) )
		draw.SimpleText( "USEC", "help", w / 2,  h / 2.0, Color( 255, 200, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )
	end

	dPanelButton2.DoClick = function() 
	
net.Start("USEC")
net.SendToServer()
	TeamMenu:Hide()
	end end end
if LocalPlayer():Team() ~= 4 then
if (GetConVar("efg_whitelist")):GetFloat() == 0 or table.HasValue(WhiteListBEAR, LocalPlayer():GetUserGroup()) or table.HasValue(WhiteListBEARID, LocalPlayer():SteamID()) then
local dPanelButton3 = vgui.Create( "DButton", TeamMenu)
	dPanelButton3:SetSize( 250, 250 )
	dPanelButton3:SetPos( 600, 50 )
	if LocalPlayer():Team() == 1 then
	dPanelButton3:SetPos( 325, 50 ) end
if (GetConVar("efg_whitelist")):GetFloat() == 0 then
	dPanelButton3:SetPos( 600, 50 )
end
	dPanelButton3:SetText( '' )
	dPanelButton3.Paint = function( self, w, h )
		draw.RoundedBox( 15, 0, 0, w, h, Color( 50, 50, 50, 200 ) )
		draw.SimpleText( "BEAR", "help", w / 2,  h / 2.0, Color( 255, 200, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )
	end

	dPanelButton3.DoClick = function() 
	
net.Start("BEAR")
net.SendToServer()
	TeamMenu:Hide()
end end end
end end end) end
end