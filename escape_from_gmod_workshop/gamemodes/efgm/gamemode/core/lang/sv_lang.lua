local languagesPath = "efgm/gamemode/languages"
local files, _ = file.Find(languagesPath .. "/*.lua", "LUA")

for _, f in ipairs(files) do
	AddCSLuaFile(languagesPath .. "/" .. f)
end
