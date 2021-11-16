local meta = FindMetaTable("Player") --Get the meta table of player

function meta:AddRUB(amount)
	local current_rub = self:GetRUB()
	self:SetRUB( current_rub + amount )
end

function meta:SetRUB(amount)
	self:SetNWInt( "RUB", amount )
	self:SaveRUB()
end

function meta:SaveRUB()
	local rub = self:GetRUB()
	self:SetPData("RUB", rub)
end

function meta:SaveRUBTXT()
	if not file.Exists("RUB", "DATA") then
	file.CreateDir("RUB")
end
	file.Write("RUB/" .. string.gsub(self:SteamID(), ":", "_") ..".txt", tonumber(self:GetRUB()))
end

function meta:TakeRUB(amount)
   --Add money function here
   self:AddRUB(-amount)
end

function meta:GetRUB()
return self:GetNWInt( "RUB")
end

function meta:AddDOL(amount)
	local current_dol = self:GetDOL()
	self:SetDOL( current_dol + amount )
end

function meta:SetDOL(amount)
	self:SetNWInt( "DOL", amount )
	self:SaveRUB()
end

function meta:SaveDOL()
	local dol = self:GetDOL()
	self:SetPData("DOL", dol)
end

function meta:SaveDOLTXT()
	if not file.Exists("DOL", "DATA") then
	file.CreateDir("DOL")
end
	file.Write("DOL/" .. string.gsub(self:SteamID(), ":", "_") ..".txt", tonumber(self:GetDOL()))
end

function meta:TakeDOL(amount)
   --Add money function here
   self:AddDOL(-amount)
end

function meta:GetDOL()
return self:GetNWInt( "DOL")
end

if CLIENT then

surface.CreateFont( "ArialMoney", {
	font = "Arial", --  Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 30,
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
local moneycolor = Color(0, 0, 0, 150)
local moneycolor2 = Color(255, 2555, 255, 255)
hook.Add( "HUDPaint", "MoneyShow", function()
	local RUB = tonumber(math.ceil(LocalPlayer():GetRUB()))
	local DOLLAR = tonumber(math.ceil(LocalPlayer():GetDOL()))
	if RUB >= 1000 and RUB < 10000 then
	draw.WordBox(8, ScrW() * 0.949, ScrH() * 0.23, RUB, "ArialMoney", moneycolor, moneycolor2)
else
	if RUB >= 10000 then
	draw.WordBox(8, ScrW() * 0.944, ScrH() * 0.23, RUB, "ArialMoney", moneycolor, moneycolor2)
else
	if RUB >= 100 then
	draw.WordBox(8, ScrW() * 0.954, ScrH() * 0.23, RUB, "ArialMoney", moneycolor, moneycolor2)
else
	if RUB >= 10 then
	draw.WordBox(8, ScrW() * 0.959, ScrH() * 0.23, RUB, "ArialMoney", moneycolor, moneycolor2)
else
	draw.WordBox(8, ScrW() * 0.963, ScrH() * 0.23, RUB, "ArialMoney", moneycolor, moneycolor2)
end end end end
	draw.WordBox(8, ScrW() * 0.950, ScrH() * 0.18, "RUB", "ArialMoney", moneycolor, moneycolor2)
	if DOLLAR >= 1000 and DOLLAR < 10000 then
	draw.WordBox(8, ScrW() * 0.949, ScrH() * 0.35, DOLLAR, "ArialMoney", moneycolor, moneycolor2)
else
	if DOLLAR >= 10000 then
	draw.WordBox(8, ScrW() * 0.944, ScrH() * 0.35, DOLLAR, "ArialMoney", moneycolor, moneycolor2)
else
	if DOLLAR >= 100 then
	draw.WordBox(8, ScrW() * 0.954, ScrH() * 0.35, DOLLAR, "ArialMoney", moneycolor, moneycolor2)
else
	if DOLLAR >= 10 then
	draw.WordBox(8, ScrW() * 0.959, ScrH() * 0.35, DOLLAR, "ArialMoney", moneycolor, moneycolor2)
else
	draw.WordBox(8, ScrW() * 0.963, ScrH() * 0.35, DOLLAR, "ArialMoney", moneycolor, moneycolor2)
end end end end
	draw.WordBox(8, ScrW() * 0.950, ScrH() * 0.29, "USD", "ArialMoney", moneycolor, moneycolor2)
end )
end