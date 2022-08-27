randovania_input_path = os.getenv("UserProfile") .. "/Documents/EmoTracker/packs/metroid_prime_randomizer_emotracker_eliasthompson/randovania/"
randovania_output_path = os.getenv("UserProfile") .. "/Documents/EmoTracker/packs/metroid_prime_randomizer_emotracker_eliasthompson/scripts/randovania/output/"

ScriptHost:LoadScript("scripts/util/parse_json.lua")
ScriptHost:LoadScript("scripts/util/common.lua")
ScriptHost:LoadScript("scripts/randovania/common.lua")
ScriptHost:LoadScript("scripts/randovania/generate_templates.lua")
ScriptHost:LoadScript("scripts/randovania/generate_doors.lua")

generate_templates("header.json", "templates.lua")
generate_doors("header.json", "doors.lua")

ScriptHost:LoadScript("scripts/settings.lua")
ScriptHost:LoadScript("scripts/common.lua")
ScriptHost:LoadScript("scripts/templates.lua")
ScriptHost:LoadScript("scripts/locations.lua")

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
  Tracker:AddLocations("locations/doors.json")
  Tracker:AddLocations("locations/tallon_overworld/doors.json")
  Tracker:AddLocations("locations/tallon_overworld/connections.json")
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
