    local function RemoveSandboxTabs()
    	local AccsesGroup = {"superadmin"}
        local tabstoremove = {
		        language.GetPhrase("spawnmenu.category.postprocess"), 
		        language.GetPhrase("spawnmenu.category.dupes"), 
		        language.GetPhrase("spawnmenu.category.saves"),
		        language.GetPhrase("spawnmenu.category.weapons"),
		        language.GetPhrase("spawnmenu.category.vehicles"),
		        language.GetPhrase("spawnmenu.category.vjbase"),
		        language.GetPhrase("spawnmenu.category.entities")
    	}
    	
   		if !table.HasValue(AccsesGroup, LocalPlayer():GetUserGroup()) then 
	    	for k, v in pairs(g_SpawnMenu.CreateMenu.Items) do
	            if table.HasValue(tabstoremove, v.Tab:GetText()) then
	                g_SpawnMenu.CreateMenu:CloseTab(v.Tab, true)
	                RemoveSandboxTabs()
	            end
	        end
	    end
    end

hook.Add("SpawnMenuOpen", "SpawnMenuBlocker", function()

 if LocalPlayer():Team() == 2 then return true and RemoveSandboxTabs()
 else
     return false
end end)