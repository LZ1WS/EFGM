local modulesPath = "efgm/gamemode/modules"
local _, directories = file.Find(modulesPath .. "/*", "LUA")


if SERVER then print("--- MODULES ---") end
for _, mod in ipairs(directories) do
	files = file.Find(modulesPath .. "/" .. mod .. "/*.lua", "LUA")
	if #files > 0 then
		if SERVER then print("LOADING " .. mod) end
	end
	for _, v in ipairs(files) do
		local ext = string.sub(v, 1, 3)
		if ext == "cl_" || ext == "sh_" then
			if SERVER then
				AddCSLuaFile(modulesPath .. "/" .. mod .. "/" .. v)
			else
				include(modulesPath .. "/" .. mod .. "/" .. v)
			end
		end
		if ext == "sv_" || ext == "sh_" then
			if SERVER then
				include(modulesPath .. "/" .. mod .. "/" .. v)
			end
		end
	end
end