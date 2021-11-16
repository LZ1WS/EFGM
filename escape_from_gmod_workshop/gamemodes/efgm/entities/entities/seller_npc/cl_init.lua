include("shared.lua")

net.Receive( "NPCSELLER", function()
	RunConsoleCommand( "sell_open" )
end )

hook.Add("PostDrawOpaqueRenderables", "NPCSELLER", function()
	for _, ent in pairs (ents.FindByClass("seller_npc")) do
		if ent:GetPos():Distance(LocalPlayer():GetPos()) < 500 then
			local Ang = ent:GetAngles()

			Ang:RotateAroundAxis( Ang:Forward(), 90)
			Ang:RotateAroundAxis( Ang:Right(), -90)

			cam.Start3D2D(ent:GetPos() + ent:GetUp() * 76, Ang, 0.10)
				draw.SimpleTextOutlined( language.GetPhrase("efg.sellerru"), "trader_name", -8, 0, Color(255,255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 0, Color(255,255,255,255) )
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