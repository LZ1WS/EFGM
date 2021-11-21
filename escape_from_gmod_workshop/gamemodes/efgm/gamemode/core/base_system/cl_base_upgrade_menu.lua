local GM = GM or GAMEMODE
surface.CreateFont( "Points", {
	font = "Noto Sans", --  Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 30,
	weight = 100,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
})

surface.CreateFont( "Header1", {
	font = "Noto Sans", --  Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 40,
	weight = 500,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
})
function Base_UM()
local Base = Color( 0, 0, 0, 200 )		-- The color black but with 200 Alpha
local DermaPanel = vgui.Create( "DFrame" )	-- The name DermaPanel to store the value DFrame.
DermaPanel:SetSize( ScrW() * 0.95, ScrH() * 0.85  ) 				-- Sets the size to 500x by 300y.
DermaPanel:Center() 						-- Centers the panel.
DermaPanel:SetTitle( "" )					-- Set the title to nothing.
DermaPanel:SetDraggable( false )			-- Makes it so you carnt drag it.
DermaPanel:MakePopup()						-- Makes it so you can move your mouse on it.
DermaPanel.Paint = function( self, w, h )	-- Paint function w, h = how wide and tall it is.
	-- Draws a rounded box with the color faded_black stored above.
	draw.RoundedBox( 2, 0, 0, w, h, Base )
	-- Draws text in the color white.
	draw.SimpleText( GM.LANG:GetString("efg.base"), "Header1", ScrW() / 2.15, ScrH() / 100 , color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
	end
	local DLabel = vgui.Create( "DLabel", DermaPanel )
	--[[net.Start("Get_Points")
	net.SendToServer()
	net.Receive("Receive_Points", function()]]--
local Points = LocalPlayer():GetPoints() --net.ReadInt()
DLabel:SetPos( ScrW() / 2.55, ScrH() / 20 )
	DLabel:SetText( Points .. GM.LANG:GetString("efg.upgradepoints") )
	DLabel:SetFont("Points")
	DLabel:SetColor(color_white)
	DLabel:SizeToContents()
surface.CreateFont("ButtonFont2", {font = "Arial",size = 35, weight = 5, outline = false,}) -- Then font named 'Font' compacted on one line
local DermaButton = vgui.Create( "DButton", DermaPanel )
DermaButton:SetFontInternal("ButtonFont2")
	if LocalPlayer():GetUpgrade("Bitcoin LVL II") == "true" or LocalPlayer():GetUpgrade("Bitcoin LVL I") == "true" then
DermaButton:SetText( GM.LANG:GetString("efg.bitcoinupg") )
else
	if LocalPlayer():GetUpgrade("Bitcoin LVL I") == "false" then
DermaButton:SetText( GM.LANG:GetString("efg.bitcoinbuy") )
else
if LocalPlayer():GetUpgrade("Bitcoin LVL III") == "true" then
DermaButton:Hide()
	end
end
end
DermaButton:SetPos( ScrW() / 20.29, ScrH() / 4.4 )
DermaButton:SizeToContents()
function DermaButton:Paint( w, h )
	DermaButton:SetTextColor(color_white)
end
DermaButton.DoClick = function()
if LocalPlayer():GetPoints() >= 1000 and LocalPlayer():GetUpgrade("Bitcoin LVL I") == "false" and not
LocalPlayer():GetUpgrade("Bitcoin LVL II") == "true" and not LocalPlayer():GetUpgrade("Bitcoin LVL III") == "true" then
	net.Start("Buy Bitcoin LVL I")
	net.SendToServer()
	notification.AddLegacy(GM.LANG:GetString("efg.bitcoinI"), 0, 4)
	surface.PlaySound( "garrysmod/ui_click.wav" )
	DermaPanel:Hide()
else
	if LocalPlayer():GetPoints() >= 5000 and LocalPlayer():GetUpgrade("Bitcoin LVL I") == "true" then
	net.Start("Buy Bitcoin LVL II")
	net.SendToServer()
	notification.AddLegacy(GM.LANG:GetString("efg.bitcoinII"), 0, 4)
	surface.PlaySound( "garrysmod/ui_click.wav" )
	DermaPanel:Hide()
else
	if LocalPlayer():GetPoints() >= 10000 and LocalPlayer():GetUpgrade("Bitcoin LVL II") == "true" then
	net.Start("Buy Bitcoin LVL III")
	net.SendToServer()
	notification.AddLegacy(GM.LANG:GetString("efg.bitcoinIII"), 0, 4)
	surface.PlaySound( "garrysmod/ui_click.wav" )
	DermaPanel:Hide()
else
	notification.AddLegacy(GM.LANG:GetString("efg.nopoints"), 1, 4)
	surface.PlaySound( "buttons/button10.wav" )
end
end
end
DermaButton:MakePopup()
end
--[[local DColorCube = vgui.Create( "DColorCube", DermaPanel)
DColorCube:SetPos( ScrW() / 4.15, ScrH() / 100  )
DColorCube:SetSize( 200, 200 )
DColorCube:SetBaseRGB( Color( 0, 255, 0 ) )
DColorCube:SetColor(Color(0, 0, 255, 0))
-- Called when slider is moved by user
function DColorCube:OnUserChanged(col)
	-- Update ball color
DermaPanel.Paint = function( self, w, h )	-- Paint function w, h = how wide and tall it is.
	-- Draws a rounded box with the color faded_black stored above.
	draw.RoundedBox( 2, 0, 0, w, h, col )
	-- Draws text in the color white.
    draw.SimpleText( "База", "Header1", ScrW() / 2.15, ScrH() / 100 , color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )

end

end]]--
end

--concommand.Add("efg_devbase", Base_UM)


net.Receive("Base Menu Open", function(len, ply)
Base_UM()
end)

net.Receive("Base Menu Close", function(len, ply)

end)