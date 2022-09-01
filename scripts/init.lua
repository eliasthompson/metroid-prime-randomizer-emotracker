ScriptHost:LoadScript("scripts/randovania/output/templates.lua")
ScriptHost:LoadScript("scripts/randovania/output/tallon_overworld__connections.lua")
ScriptHost:LoadScript("scripts/randovania/output/tallon_overworld__elevator_to_chozo_ruins_transport_to_tallon_overworld_east__paths.lua")
ScriptHost:LoadScript("scripts/randovania/output/tallon_overworld__elevator_to_chozo_ruins_transport_to_tallon_overworld_north__paths.lua")
ScriptHost:LoadScript("scripts/randovania/output/tallon_overworld__elevator_to_chozo_ruins_transport_to_tallon_overworld_south__paths.lua")
ScriptHost:LoadScript("scripts/randovania/output/tallon_overworld__elevator_to_magmoor_caverns_transport_to_tallon_overworld_west__paths.lua")
ScriptHost:LoadScript("scripts/randovania/output/tallon_overworld__elevator_to_phazon_mines_transport_to_tallon_overworld_south__paths.lua")
ScriptHost:LoadScript("scripts/randovania/output/tallon_overworld__ship__paths.lua")
ScriptHost:LoadScript("scripts/randovania/output/tallon_overworld__teleport_to_impact_crater_crater_impact_point__paths.lua")
ScriptHost:LoadScript("scripts/randovania/output/chozo_ruins__connections.lua")
ScriptHost:LoadScript("scripts/randovania/output/chozo_ruins__elevator_to_magmoor_caverns_transport_to_chozo_ruins_north__paths.lua")
ScriptHost:LoadScript("scripts/randovania/output/chozo_ruins__elevator_to_tallon_overworld_transport_to_chozo_ruins_east__paths.lua")
ScriptHost:LoadScript("scripts/randovania/output/chozo_ruins__elevator_to_tallon_overworld_transport_to_chozo_ruins_south__paths.lua")
ScriptHost:LoadScript("scripts/randovania/output/chozo_ruins__elevator_to_tallon_overworld_transport_to_chozo_ruins_west__paths.lua")
ScriptHost:LoadScript("scripts/randovania/output/magmoor_caverns__connections.lua")
ScriptHost:LoadScript("scripts/randovania/output/magmoor_caverns__elevator_to_chozo_ruins_transport_to_magmoor_caverns_north__paths.lua")
ScriptHost:LoadScript("scripts/randovania/output/magmoor_caverns__elevator_to_tallon_overworld_transport_to_magmoor_caverns_east__paths.lua")
ScriptHost:LoadScript("scripts/randovania/output/magmoor_caverns__elevator_transport_to_magmoor_caverns_south__paths.lua")
ScriptHost:LoadScript("scripts/randovania/output/magmoor_caverns__elevator_transport_to_magmoor_caverns_west__paths.lua")
ScriptHost:LoadScript("scripts/randovania/output/phendrana_drifts__connections.lua")
ScriptHost:LoadScript("scripts/randovania/output/phendrana_drifts__elevator_transport_to_phendrana_drifts_north__paths.lua")
ScriptHost:LoadScript("scripts/randovania/output/phendrana_drifts__elevator_transport_to_phendrana_drifts_south__paths.lua")
ScriptHost:LoadScript("scripts/randovania/output/phazon_mines__connections.lua")
ScriptHost:LoadScript("scripts/randovania/output/phazon_mines__elevator_to_tallon_overworld_transport_to_phazon_mines_east__paths.lua")
ScriptHost:LoadScript("scripts/randovania/output/phazon_mines__elevator_transport_to_phazon_mines_west__paths.lua")
ScriptHost:LoadScript("scripts/randovania/output/impact_crater__connections.lua")
ScriptHost:LoadScript("scripts/randovania/output/impact_crater__teleport_to_artifact_temple__paths.lua")

ScriptHost:LoadScript("scripts/settings.lua")
ScriptHost:LoadScript("scripts/common.lua") -- Legacy, still in use for go mode calc

 -- Remove before release
ScriptHost:LoadScript("scripts/util/parse_json.lua")
ScriptHost:LoadScript("scripts/util/common.lua")
ScriptHost:LoadScript("scripts/scratch.lua")

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
