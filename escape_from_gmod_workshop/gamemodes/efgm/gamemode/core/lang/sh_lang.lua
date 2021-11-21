local GM = GM or GAMEMODE
local LANG

GM.LANG = {}

function GM.LANG:GetString(key, ...)
	return LANG[key] and string.format(LANG[key], ...) or "Unknown key string"
end

local function LoadLanguage(lang)
	local languagesPath = "efgm/gamemode/languages"
	local files, _ = file.Find(languagesPath .. "/*.lua", "LUA")

	LANG = include(languagesPath .. "/en.lua")

	for _, v in ipairs(files) do
		if v == lang .. ".lua" then
			table.Merge(LANG, include(languagesPath .. "/" .. v))
			return
		end
	end
end

local function OnLangChange(convar_name, value_old, value_new)
	if value_new != value_old then
		LoadLanguage(value_new)
	end
end
cvars.AddChangeCallback("gmod_language", OnLangChange)

-- Load user language
do
	local cvLang = GetConVar("gmod_language")
	LoadLanguage(cvLang:GetString())
end
