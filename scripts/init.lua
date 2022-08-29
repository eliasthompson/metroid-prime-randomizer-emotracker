ScriptHost:LoadScript("scripts/randovania/output/templates.lua")
-- ScriptHost:LoadScript("scripts/randovania/output/frigate_orpheon_connections.lua") -- Not yet
ScriptHost:LoadScript("scripts/randovania/output/tallon_overworld_connections.lua")
ScriptHost:LoadScript("scripts/randovania/output/chozo_ruins_connections.lua")
ScriptHost:LoadScript("scripts/randovania/output/magmoor_caverns_connections.lua")
ScriptHost:LoadScript("scripts/randovania/output/phendrana_drifts_connections.lua")
ScriptHost:LoadScript("scripts/randovania/output/phazon_mines_connections.lua")
ScriptHost:LoadScript("scripts/randovania/output/impact_crater_connections.lua")
-- ScriptHost:LoadScript("scripts/randovania/output/tallon_overworld_connections.lua") -- Not yet
ScriptHost:LoadScript("scripts/randovania/output/tallon_overworld_paths.lua")

ScriptHost:LoadScript("scripts/settings.lua")
ScriptHost:LoadScript("scripts/common.lua") -- Legacy, still in use for go mode calc

Tracker:AddItems("items/settings.json")

if DEBUG then
  Tracker:AddItems("items/common_debug.json")
else
  Tracker:AddItems("items/common.json")
end

Tracker:AddLayouts("layouts/settings/setting_goal_total_artifacts.json")
Tracker:AddLayouts("layouts/settings/setting_goal_skip_impact_crater.json")
Tracker:AddLayouts("layouts/settings.json")

Tracker:AddLayouts("layouts/tracker_artifacts.json")

if Tracker.ActiveVariantUID == "map_tracker_skinny" then
  Tracker:AddMaps("maps/maps.json")
  Tracker:AddLocations("locations/tallon_overworld/locations.json")
  Tracker:AddLayouts("map_tracker_skinny/layouts/tracker_shared_horizontal.json")
  Tracker:AddLayouts("map_tracker_skinny/layouts/tracker_shared_vertical.json")
  Tracker:AddLayouts("map_tracker_skinny/layouts/trackers.json")
elseif Tracker.ActiveVariantUID == "item_tracker_skinny" then
  Tracker:AddLayouts("item_tracker_skinny/layouts/tracker_shared_horizontal.json")
  Tracker:AddLayouts("item_tracker_skinny/layouts/tracker_shared_vertical.json")
else
  Tracker:AddLayouts("item_tracker/layouts/tracker_shared_horizontal.json")
  Tracker:AddLayouts("item_tracker/layouts/tracker_shared_vertical.json")
end

Tracker:AddLayouts("layouts/trackers.json")

ScriptHost:LoadScript("scripts/callbacks.lua")
-- Soon...
-- ScriptHost:LoadScript("scripts/autotracking.lua")
