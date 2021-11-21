local GM = GM or GAMEMODE
include("shared.lua")

local namecolor = Color(255,255,255,255)
hook.Add("PostDrawOpaqueRenderables", "NPCTRADER", function()
	for _, ent in pairs (ents.FindByClass("shop_npc")) do
		if ent:GetPos():Distance(LocalPlayer():GetPos()) < 500 then
			local Ang = ent:GetAngles()

			Ang:RotateAroundAxis( Ang:Forward(), 90)
			Ang:RotateAroundAxis( Ang:Right(), -90)

			cam.Start3D2D(ent:GetPos() + ent:GetUp() * 76, Ang, 0.10)
				draw.SimpleTextOutlined( GM.LANG:GetString("efg.traderru"), "trader_name", -8, 0, namecolor, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 0, Color(255,255,255,255) )
			cam.End3D2D()
		end
	end
end)



surface.CreateFont( "trader_name", {
	font = "Arial",
	extended = true,
	size = 50,
	weight = 1000
} )