surface.CreateFont("Font", {font = "Arial",extended = false,size = 40,}) -- Then font named 'Font' compacted on one line
surface.CreateFont("DButton", {font = "Arial",extended = false,size = 20,}) -- Then font named 'Font' compacted on one line
surface.CreateFont("Text", {font = "Arial",extended = false,size = 20,}) -- Then font named 'Font' compacted on one line
local category_translation1 = language.GetPhrase("efg.categorystore1")
local category_translation2 = language.GetPhrase("efg.categorystore2")
local sell = language.GetPhrase("efg.sell")
local faded_black = Color(0, 0, 0, 200)		-- The color black but with 200 Alpha
function OpenTraderShop()
local DermaPanel = vgui.Create("DFrame")	-- The name DermaPanel to store the value DFrame
local sheet = vgui.Create( "DPropertySheet", DermaPanel )
sheet:Dock( FILL )

local panel1 = vgui.Create( "DPanel", sheet )
panel1.Paint = function( self, w, h ) draw.RoundedBox( 4, 0, 0, w, h, Color( 0, 128, 255, self:GetAlpha() ) ) end 
sheet:AddSheet( category_translation1, panel1, "icon16/cross.png" )

local panel2 = vgui.Create( "DPanel", sheet )
panel2.Paint = function( self, w, h ) draw.RoundedBox( 4, 0, 0, w, h, Color( 255, 128, 0, self:GetAlpha() ) ) end 
sheet:AddSheet( category_translation2, panel2, "icon16/tick.png" )
local icon = vgui.Create( "ModelImage", panel1 )
icon:SetModel( "models/cw2/pistols/w_makarov.mdl" )
icon:SetPos(0, 15)
icon:SetSize(200, 200)
local DermaButton = vgui.Create( "DButton", panel1 ) // Create the button and parent it to the frame
DermaButton:SetFont("DButton")
DermaButton:SetText(sell)
DermaButton:SizeToContents()
DermaButton:SetPos( 180, 179 )					// Set the position on the frame
DermaButton:SetMouseInputEnabled(true)
DermaButton.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell Pistol RUB")
net.SendToServer()
end
local DermaButton2 = vgui.Create( "DButton", panel1 ) // Create the button and parent it to the frame
DermaButton2:SetFont("DButton")
DermaButton2:SetText(sell)
DermaButton2:SizeToContents()
DermaButton2:SetPos( 180, 210 )					// Set the position on the frame
DermaButton2:SetMouseInputEnabled(true)
DermaButton2.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell Pistol DOL")
net.SendToServer()
end


local iconak = vgui.Create( "ModelImage", panel1 )
iconak:SetModel( "models/weapons/w_rif_ak47.mdl" )
iconak:SetPos(280, 15)
iconak:SetSize(200, 200)
local DermaButton3 = vgui.Create( "DButton", panel1 ) // Create the button and parent it to the frame
DermaButton3:SetFont("DButton")
DermaButton3:SetText(sell)
DermaButton3:SizeToContents()
DermaButton3:SetPos( 440, 179 )					// Set the position on the frame
DermaButton3:SetMouseInputEnabled(true)
DermaButton3.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell AK RUB")
net.SendToServer()
end
local DermaButton4 = vgui.Create( "DButton", panel1 ) // Create the button and parent it to the frame
DermaButton4:SetFont("DButton")
DermaButton4:SetText(sell)
DermaButton4:SizeToContents()
DermaButton4:SetPos( 440, 210 )					// Set the position on the frame
DermaButton4:SetMouseInputEnabled(true)
DermaButton4.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell AK DOL")
net.SendToServer()
end


local iconvss = vgui.Create( "ModelImage", panel1 )
iconvss:SetModel( "models/cw2/rifles/w_vss.mdl" )
iconvss:SetPos(480, -30)
iconvss:SetSize(280, 280)
local DermaButton5 = vgui.Create( "DButton", panel1 ) // Create the button and parent it to the frame
DermaButton5:SetFont("DButton")
DermaButton5:SetText(sell)
DermaButton5:SizeToContents()
DermaButton5:SetPos( 690, 179 )					// Set the position on the frame
DermaButton5:SetMouseInputEnabled(true)
DermaButton5.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell VSS RUB")
net.SendToServer()
end
local DermaButton6 = vgui.Create( "DButton", panel1 ) // Create the button and parent it to the frame
DermaButton6:SetFont("DButton")
DermaButton6:SetText(sell)
DermaButton6:SizeToContents()
DermaButton6:SetPos( 690, 210 )					// Set the position on the frame
DermaButton6:SetMouseInputEnabled(true)
DermaButton6.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell VSS DOL")
net.SendToServer()
end

local iconar15 = vgui.Create( "ModelImage", panel1 )
iconar15:SetModel( "models/weapons/w_rif_m4a1.mdl" )
iconar15:SetPos(800, 15)
iconar15:SetSize(200, 200)
local DermaButton7 = vgui.Create( "DButton", panel1 ) // Create the button and parent it to the frame
DermaButton7:SetFont("DButton")
DermaButton7:SetText(sell)
DermaButton7:SizeToContents()
DermaButton7:SetPos( 940, 179 )					// Set the position on the frame
DermaButton7:SetMouseInputEnabled(true)
DermaButton7.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell AR RUB")
net.SendToServer()
end
local DermaButton8 = vgui.Create( "DButton", panel1 ) // Create the button and parent it to the frame
DermaButton8:SetFont("DButton")
DermaButton8:SetText(sell)
DermaButton8:SizeToContents()
DermaButton8:SetPos( 940, 210 )					// Set the position on the frame
DermaButton8:SetMouseInputEnabled(true)
DermaButton8.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell AR DOL")
net.SendToServer()
end

local iconfseven = vgui.Create( "ModelImage", panel1 )
iconfseven:SetModel( "models/weapons/w_pist_fiveseven.mdl" )
iconfseven:SetPos(1100, 55)
iconfseven:SetSize(100, 100)
local DermaButton9 = vgui.Create( "DButton", panel1 ) // Create the button and parent it to the frame
DermaButton9:SetFont("DButton")
DermaButton9:SetText(sell)
DermaButton9:SizeToContents()
DermaButton9:SetPos( 1230, 179 )					// Set the position on the frame
DermaButton9:SetMouseInputEnabled(true)
DermaButton9.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell fseven RUB")
net.SendToServer()
end
local DermaButton10 = vgui.Create( "DButton", panel1 ) // Create the button and parent it to the frame
DermaButton10:SetFont("DButton")
DermaButton10:SetText(sell)
DermaButton10:SizeToContents()
DermaButton10:SetPos( 1230, 210 )					// Set the position on the frame
DermaButton10:SetMouseInputEnabled(true)
DermaButton10.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell fseven DOL")
net.SendToServer()
end

local iconscar = vgui.Create( "ModelImage", panel2 )
iconscar:SetModel( "models/weapons/w_rif_galil.mdl" )
iconscar:SetPos(1050, 10)
iconscar:SetSize(200, 200)
local DermaButton11 = vgui.Create( "DButton", panel2 ) // Create the button and parent it to the frame
DermaButton11:SetFont("DButton")
DermaButton11:SetText(sell)
DermaButton11:SizeToContents()
DermaButton11:SetPos( 1220, 179 )					// Set the position on the frame
DermaButton11:SetMouseInputEnabled(true)
DermaButton11.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell scar RUB")
net.SendToServer()
end
local DermaButton12 = vgui.Create( "DButton", panel2 ) // Create the button and parent it to the frame
DermaButton12:SetFont("DButton")
DermaButton12:SetText(sell)
DermaButton12:SizeToContents()
DermaButton12:SetPos( 1220, 210 )					// Set the position on the frame
DermaButton12:SetMouseInputEnabled(true)
DermaButton12.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell scar DOL")
net.SendToServer()
end

local icong3a3 = vgui.Create( "ModelImage", panel2 )
icong3a3:SetModel( "models/weapons/w_snip_g3sg1.mdl" )
icong3a3:SetPos(0, 250)
icong3a3:SetSize(200, 200)
local DermaButton13 = vgui.Create( "DButton", panel2 ) // Create the button and parent it to the frame
DermaButton13:SetFont("DButton")
DermaButton13:SetText(sell)
DermaButton13:SizeToContents()
DermaButton13:SetPos( 160, 419 )					// Set the position on the frame
DermaButton13:SetMouseInputEnabled(true)
DermaButton13.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell g3a3 RUB")
net.SendToServer()
end
local DermaButton14 = vgui.Create( "DButton", panel2 ) // Create the button and parent it to the frame
DermaButton14:SetFont("DButton")
DermaButton14:SetText(sell)
DermaButton14:SizeToContents()
DermaButton14:SetPos( 160, 459 )					// Set the position on the frame
DermaButton14:SetMouseInputEnabled(true)
DermaButton14.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell g3a3 DOL")
net.SendToServer()
end

local icong36 = vgui.Create( "ModelImage", panel2 )
icong36:SetModel( "models/weapons/w_rif_sg552.mdl" )
icong36:SetPos(310, 265)
icong36:SetSize(150, 150)
local DermaButton15 = vgui.Create( "DButton", panel2 ) // Create the button and parent it to the frame
DermaButton15:SetFont("DButton")
DermaButton15:SetText(sell)
DermaButton15:SizeToContents()
DermaButton15:SetPos( 430, 419 )					// Set the position on the frame
DermaButton15:SetMouseInputEnabled(true)
DermaButton15.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell g36 RUB")
net.SendToServer()
end
local DermaButton16 = vgui.Create( "DButton", panel2 ) // Create the button and parent it to the frame
DermaButton16:SetFont("DButton")
DermaButton16:SetText(sell)
DermaButton16:SizeToContents()
DermaButton16:SetPos( 430, 459 )					// Set the position on the frame
DermaButton16:SetMouseInputEnabled(true)
DermaButton16.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell g36 DOL")
net.SendToServer()
end

local iconump = vgui.Create( "ModelImage", panel2 )
iconump:SetModel( "models/weapons/w_smg_ump45.mdl" )
iconump:SetPos(550, 265)
iconump:SetSize(150, 150)
local DermaButton17 = vgui.Create( "DButton", panel2 ) // Create the button and parent it to the frame
DermaButton17:SetFont("DButton")
DermaButton17:SetText(sell)
DermaButton17:SizeToContents()
DermaButton17:SetPos( 690, 419 )					// Set the position on the frame
DermaButton17:SetMouseInputEnabled(true)
DermaButton17.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell ump RUB")
net.SendToServer()
end
local DermaButton18 = vgui.Create( "DButton", panel2 ) // Create the button and parent it to the frame
DermaButton18:SetFont("DButton")
DermaButton18:SetText(sell)
DermaButton18:SizeToContents()
DermaButton18:SetPos( 690, 459 )					// Set the position on the frame
DermaButton18:SetMouseInputEnabled(true)
DermaButton18.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell ump DOL")
net.SendToServer()
end

local iconmp5 = vgui.Create( "ModelImage", panel2 )
iconmp5:SetModel( "models/weapons/w_smg_mp5.mdl" )
iconmp5:SetPos(800, 265)
iconmp5:SetSize(150, 150)
local DermaButton19 = vgui.Create( "DButton", panel2 ) // Create the button and parent it to the frame
DermaButton19:SetFont("DButton")
DermaButton19:SetText(sell)
DermaButton19:SizeToContents()
DermaButton19:SetPos( 930, 419 )					// Set the position on the frame
DermaButton19:SetMouseInputEnabled(true)
DermaButton19.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell mp5 RUB")
net.SendToServer()
end
local DermaButton20 = vgui.Create( "DButton", panel2 ) // Create the button and parent it to the frame
DermaButton20:SetFont("DButton")
DermaButton20:SetText(sell)
DermaButton20:SizeToContents()
DermaButton20:SetPos( 930, 459 )					// Set the position on the frame
DermaButton20:SetMouseInputEnabled(true)
DermaButton20.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell mp5 DOL")
net.SendToServer()
end

local icondeagle = vgui.Create( "ModelImage", panel2 )
icondeagle:SetModel( "models/weapons/w_pist_deagle.mdl" )
icondeagle:SetPos(1050, 265)
icondeagle:SetSize(150, 150)
local DermaButton21 = vgui.Create( "DButton", panel2 ) // Create the button and parent it to the frame
DermaButton21:SetFont("DButton")
DermaButton21:SetText(sell)
DermaButton21:SizeToContents()
DermaButton21:SetPos( 1220, 419 )					// Set the position on the frame
DermaButton21:SetMouseInputEnabled(true)
DermaButton21.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell deagle RUB")
net.SendToServer()
end
local DermaButton22 = vgui.Create( "DButton", panel2 ) // Create the button and parent it to the frame
DermaButton22:SetFont("DButton")
DermaButton22:SetText(sell)
DermaButton22:SizeToContents()
DermaButton22:SetPos( 1220, 459 )					// Set the position on the frame
DermaButton22:SetMouseInputEnabled(true)
DermaButton22.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell deagle DOL")
net.SendToServer()
end


local iconl115 = vgui.Create( "ModelImage", panel2 )
iconl115:SetModel( "models/weapons/w_snip_awp.mdl" )
iconl115:SetPos(800, 30)
iconl115:SetSize(200, 200)
local DermaButton23 = vgui.Create( "DButton", panel2 ) // Create the button and parent it to the frame
DermaButton23:SetFont("DButton")
DermaButton23:SetText(sell)
DermaButton23:SizeToContents()
DermaButton23:SetPos( 930, 179 )					// Set the position on the frame
DermaButton23:SetMouseInputEnabled(true)
DermaButton23.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell l115 RUB")
net.SendToServer()
end
local DermaButton24 = vgui.Create( "DButton", panel2 ) // Create the button and parent it to the frame
DermaButton24:SetFont("DButton")
DermaButton24:SetText(sell)
DermaButton24:SizeToContents()
DermaButton24:SetPos( 930, 210 )					// Set the position on the frame
DermaButton24:SetMouseInputEnabled(true)
DermaButton24.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell l115 DOL")
net.SendToServer()
end

local iconl85 = vgui.Create( "ModelImage", panel1 )
iconl85:SetModel( "models/weapons/w_snip_sg550.mdl" )
iconl85:SetPos(0, 235)
iconl85:SetSize(200, 200)
local DermaButton25 = vgui.Create( "DButton", panel1 ) // Create the button and parent it to the frame
DermaButton25:SetFont("DButton")
DermaButton25:SetText(sell)
DermaButton25:SizeToContents()
DermaButton25:SetPos( 160, 419 )					// Set the position on the frame
DermaButton25:SetMouseInputEnabled(true)
DermaButton25.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell l85 RUB")
net.SendToServer()
end
local DermaButton26 = vgui.Create( "DButton", panel1 ) // Create the button and parent it to the frame
DermaButton26:SetFont("DButton")
DermaButton26:SetText(sell)
DermaButton26:SizeToContents()
DermaButton26:SetPos( 160, 459 )					// Set the position on the frame
DermaButton26:SetMouseInputEnabled(true)
DermaButton26.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell l85 DOL")
net.SendToServer()
end

local iconm14 = vgui.Create( "ModelImage", panel1 )
iconm14:SetModel( "models/weapons/w_snip_scout.mdl" )
iconm14:SetPos(290, 235)
iconm14:SetSize(200, 200)
local DermaButton27 = vgui.Create( "DButton", panel1 ) // Create the button and parent it to the frame
DermaButton27:SetFont("DButton")
DermaButton27:SetText(sell)
DermaButton27:SizeToContents()
DermaButton27:SetPos( 460, 419 )					// Set the position on the frame
DermaButton27:SetMouseInputEnabled(true)
DermaButton27.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell m14 RUB")
net.SendToServer()
end
local DermaButton28 = vgui.Create( "DButton", panel1 ) // Create the button and parent it to the frame
DermaButton28:SetFont("DButton")
DermaButton28:SetText(sell)
DermaButton28:SizeToContents()
DermaButton28:SetPos( 460, 459 )					// Set the position on the frame
DermaButton28:SetMouseInputEnabled(true)
DermaButton28.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell m14 DOL")
net.SendToServer()
end

local icon1911 = vgui.Create( "ModelImage", panel1 )
icon1911:SetModel( "models/weapons/w_pist_usp.mdl" )
icon1911:SetPos(590, 275)
icon1911:SetSize(100, 100)
local DermaButton29 = vgui.Create( "DButton", panel1 ) // Create the button and parent it to the frame
DermaButton29:SetFont("DButton")
DermaButton29:SetText(sell)
DermaButton29:SizeToContents()
DermaButton29:SetPos( 700, 419 )					// Set the position on the frame
DermaButton29:SetMouseInputEnabled(true)
DermaButton29.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell 1911 RUB")
net.SendToServer()
end
local DermaButton30 = vgui.Create( "DButton", panel1 ) // Create the button and parent it to the frame
DermaButton30:SetFont("DButton")
DermaButton30:SetText(sell)
DermaButton30:SizeToContents()
DermaButton30:SetPos( 700, 459 )					// Set the position on the frame
DermaButton30:SetMouseInputEnabled(true)
DermaButton30.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell 1911 DOL")
net.SendToServer()
end

local iconm249 = vgui.Create( "ModelImage", panel1 )
iconm249:SetModel( "models/weapons/w_mach_m249para.mdl" )
iconm249:SetPos(800, 265)
iconm249:SetSize(150, 150)
local DermaButton31 = vgui.Create( "DButton", panel1 ) // Create the button and parent it to the frame
DermaButton31:SetFont("DButton")
DermaButton31:SetText(sell)
DermaButton31:SizeToContents()
DermaButton31:SetPos( 934, 419 )					// Set the position on the frame
DermaButton31:SetMouseInputEnabled(true)
DermaButton31.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell m249 RUB")
net.SendToServer()
end
local DermaButton32 = vgui.Create( "DButton", panel1 ) // Create the button and parent it to the frame
DermaButton32:SetFont("DButton")
DermaButton32:SetText(sell)
DermaButton32:SizeToContents()
DermaButton32:SetPos( 934, 459 )					// Set the position on the frame
DermaButton32:SetMouseInputEnabled(true)
DermaButton32.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell m249 DOL")
net.SendToServer()
end


local iconm3super = vgui.Create( "ModelImage", panel1 )
iconm3super:SetModel( "models/weapons/w_shot_m3super90.mdl" )
iconm3super:SetPos(1070, 235)
iconm3super:SetSize(150, 150)
local DermaButton33 = vgui.Create( "DButton", panel1 ) // Create the button and parent it to the frame
DermaButton33:SetFont("DButton")
DermaButton33:SetText(sell)
DermaButton33:SizeToContents()
DermaButton33:SetPos( 1220, 419 )					// Set the position on the frame
DermaButton33:SetMouseInputEnabled(true)
DermaButton33.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell m3super RUB")
net.SendToServer()
end
local DermaButton34 = vgui.Create( "DButton", panel1 ) // Create the button and parent it to the frame
DermaButton34:SetFont("DButton")
DermaButton34:SetText(sell)
DermaButton34:SizeToContents()
DermaButton34:SetPos( 1220, 459 )					// Set the position on the frame
DermaButton34:SetMouseInputEnabled(true)
DermaButton34.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell m3super DOL")
net.SendToServer()
end

local iconmac = vgui.Create( "ModelImage", panel1 )
iconmac:SetModel( "models/weapons/w_smg_mac10.mdl" )
iconmac:SetPos(15, 480)
iconmac:SetSize(140, 140)
local DermaButton35 = vgui.Create( "DButton", panel1 ) // Create the button and parent it to the frame
DermaButton35:SetFont("DButton")
DermaButton35:SetText(sell)
DermaButton35:SizeToContents()
DermaButton35:SetPos( 160, 619 )					// Set the position on the frame
DermaButton35:SetMouseInputEnabled(true)
DermaButton35.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell mac RUB")
net.SendToServer()
end
local DermaButton36 = vgui.Create( "DButton", panel1 ) // Create the button and parent it to the frame
DermaButton36:SetFont("DButton")
DermaButton36:SetText(sell)
DermaButton36:SizeToContents()
DermaButton36:SetPos( 160, 659 )					// Set the position on the frame
DermaButton36:SetMouseInputEnabled(true)
DermaButton36.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell mac DOL")
net.SendToServer()
end

local iconmr96 = vgui.Create( "ModelImage", panel2 )
iconmr96:SetModel( "models/weapons/w_357.mdl" )
iconmr96:SetPos(0, 0)
iconmr96:SetSize(180, 250)
local DermaButton37 = vgui.Create( "DButton", panel2 ) // Create the button and parent it to the frame
DermaButton37:SetFont("DButton")
DermaButton37:SetText(sell)
DermaButton37:SizeToContents()
DermaButton37:SetPos( 180, 179 )					// Set the position on the frame
DermaButton37:SetMouseInputEnabled(true)
DermaButton37.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell mr96 RUB")
net.SendToServer()
end
local DermaButton38 = vgui.Create( "DButton", panel2 ) // Create the button and parent it to the frame
DermaButton38:SetFont("DButton")
DermaButton38:SetText(sell)
DermaButton38:SizeToContents()
DermaButton38:SetPos( 180, 210 )					// Set the position on the frame
DermaButton38:SetMouseInputEnabled(true)
DermaButton38.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell mr96 DOL")
net.SendToServer()
end

local iconmp99 = vgui.Create( "ModelImage", panel2 )
iconmp99:SetModel( "models/weapons/w_pist_glock18.mdl" )
iconmp99:SetPos(290, 55)
iconmp99:SetSize(100, 100)
local DermaButton39 = vgui.Create( "DButton", panel2 ) // Create the button and parent it to the frame
DermaButton39:SetFont("DButton")
DermaButton39:SetText(sell)
DermaButton39:SizeToContents()
DermaButton39:SetPos( 400, 179 )					// Set the position on the frame
DermaButton39:SetMouseInputEnabled(true)
DermaButton39.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell p99 RUB")
net.SendToServer()
end
local DermaButton40 = vgui.Create( "DButton", panel2 ) // Create the button and parent it to the frame
DermaButton40:SetFont("DButton")
DermaButton40:SetText(sell)
DermaButton40:SizeToContents()
DermaButton40:SetPos( 400, 210 )					// Set the position on the frame
DermaButton40:SetMouseInputEnabled(true)
DermaButton40.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell p99 DOL")
net.SendToServer()
end

local iconshorty = vgui.Create( "ModelImage", panel2 )
iconshorty:SetModel( "models/weapons/w_shot_m3super90.mdl" )
iconshorty:SetPos(580, 30)
iconshorty:SetSize(100, 150)
local DermaButton41 = vgui.Create( "DButton", panel2 ) // Create the button and parent it to the frame
DermaButton41:SetFont("DButton")
DermaButton41:SetText(sell)
DermaButton41:SizeToContents()
DermaButton41:SetPos( 690, 179 )					// Set the position on the frame
DermaButton41:SetMouseInputEnabled(true)
DermaButton41.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell shorty RUB")
net.SendToServer()
end
local DermaButton42 = vgui.Create( "DButton", panel2 ) // Create the button and parent it to the frame
DermaButton42:SetFont("DButton")
DermaButton42:SetText(sell)
DermaButton42:SizeToContents()
DermaButton42:SetPos( 690, 210 )					// Set the position on the frame
DermaButton42:SetMouseInputEnabled(true)
DermaButton42.DoClick = function()			// A custom function run when clicked ( note the . instead of : )
net.Start("Sell shorty DOL")
net.SendToServer()
end

DermaPanel:SetSize(ScrW() * 0.97, ScrH() * 0.97) // Sets the size to 500x by 300y
DermaPanel:Center()							// Centers the panel
DermaPanel:SetTitle("")						// Set the title to nothing
DermaPanel:SetDraggable(false)				// Makes it so you carnt drag it
DermaPanel:MakePopup()						// Makes it so you can move your mouse on it
DermaPanel.Paint = function(self, w, h)		// Paint function w, h = how wide and tall it is
	local buying = language.GetPhrase("efg.buying")
	draw.RoundedBox(2, 0, 0, w, h, faded_black)	// Draws a rounded box with the color faded_black stored abouve
	draw.SimpleText(buying .. ":", "Font", 768, 25, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)	// Draws text in the color white 
end

panel1.Paint = function(self, w, h)		// Paint function w, h = how wide and tall it is
	draw.RoundedBox(2, 0, 0, w, h, faded_black)	// Draws a rounded box with the color faded_black stored abouve
	draw.SimpleText("Макаров| 133 RUB", "Text", 5, 180, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("Макаров| 58 USD", "Text", 5, 214, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("AK-74| 1150 RUB", "Text", 285, 180, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("AK-74| 650 USD", "Text", 285, 214, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("VSS| 2332 RUB", "Text", 545, 180, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("VSS| 1000 USD", "Text", 545, 214, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("AR-15| 1332 RUB", "Text", 785, 180, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("AR-15| 750 USD", "Text", 785, 214, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("Fiveseven| 280 RUB", "Text", 1045, 180, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("Fiveseven| 130 USD", "Text", 1045, 214, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("L85A2| 1500 RUB", "Text", 5, 420, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("L85A2| 830 USD", "Text", 5, 460, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("M14 EBR| 2830 RUB", "Text", 300, 420, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("M14 EBR| 1250 USD", "Text", 300, 460, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("M1911| 500 RUB", "Text", 545, 420, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("M1911| 100 USD", "Text", 545, 460, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("M249| 3330 RUB", "Text", 785, 420, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("M249| 1660 USD", "Text", 785, 460, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("M3 Super| 830 RUB", "Text", 1045, 420, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("M3 Super| 450 USD", "Text", 1045, 460, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("MAC-10| 380 RUB", "Text", 5, 620, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("MAC-10| 290 USD", "Text", 5, 660, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
return true
end
panel2.Paint = function(self, w, h)		// Paint function w, h = how wide and tall it is
	draw.RoundedBox(2, 0, 0, w, h, faded_black)	// Draws a rounded box with the color faded_black stored abouve
	draw.SimpleText("G3A3| 2330 RUB", "Text", 5, 420, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("G3A3| 1000 USD", "Text", 5, 460, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("G36| 1600 RUB", "Text", 285, 420, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("G36| 915 USD", "Text", 285, 460, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("UMP| 830 RUB", "Text", 545, 420, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("UMP| 450 USD", "Text", 545, 460, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("MP5| 650 RUB", "Text", 785, 420, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("MP5| 330 USD", "Text", 785, 460, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("SCAR-H| 2500 RUB", "Text", 1050, 180, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("SCAR-H| 1165 USD", "Text", 1050, 214, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("DEAGLE| 500 RUB", "Text", 1045, 420, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("DEAGLE| 265 USD", "Text", 1045, 460, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("L115| 3330 RUB", "Text", 785, 180, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("L115| 1660 USD", "Text", 785, 214, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("MR96| 660 RUB", "Text", 5, 180, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("MR96| 330 USD", "Text", 5, 214, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("P99| 200 RUB", "Text", 285, 180, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("P99| 80 USD", "Text", 285, 214, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("Shorty| 415   RUB", "Text", 545, 180, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("Shorty| 215   USD", "Text", 545, 214, Color( 0, 204, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
return true
end
 end

concommand.Add("sell_open", OpenTraderShop)