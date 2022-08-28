_RANDOVANIA_INPUT_PATH = os.getenv("UserProfile") .. "/Documents/EmoTracker/packs/metroid_prime_randomizer_emotracker_eliasthompson/randovania/"
_RANDOVANIA_OUTPUT_PATH = os.getenv("UserProfile") .. "/Documents/EmoTracker/packs/metroid_prime_randomizer_emotracker_eliasthompson/scripts/randovania/output/"
_RANDOVANIA_SCHEMA_VERSION = 11

ScriptHost:LoadScript("scripts/util/parse_json.lua")
ScriptHost:LoadScript("scripts/util/common.lua")
ScriptHost:LoadScript("scripts/randovania/common.lua")
ScriptHost:LoadScript("scripts/randovania/generate_templates.lua")
ScriptHost:LoadScript("scripts/randovania/generate_connections.lua")
ScriptHost:LoadScript("scripts/randovania/generate_paths.lua")

generate_templates()
generate_connections({
  "Tallon Overworld",
  "Chozo Ruins",
  "Magmoor Caverns",
  "Phendrana Drifts",
  "Phazon Mines",
  "Impact Crater",
})
generate_paths({
  "Tallon Overworld",
})

ScriptHost:LoadScript("scripts/randovania/output/templates.lua")
-- ScriptHost:LoadScript("scripts/randovania/output/frigate_orpheon_connections.lua") -- Not yet
ScriptHost:LoadScript("scripts/randovania/output/tallon_overworld_connections.lua")
ScriptHost:LoadScript("scripts/randovania/output/chozo_ruins_connections.lua")
ScriptHost:LoadScript("scripts/randovania/output/magmoor_caverns_connections.lua")
ScriptHost:LoadScript("scripts/randovania/output/phendrana_drifts_connections.lua")
ScriptHost:LoadScript("scripts/randovania/output/phazon_mines_connections.lua")
ScriptHost:LoadScript("scripts/randovania/output/impact_crater_connections.lua")
-- ScriptHost:LoadScript("scripts/randovania/output/tallon_overworld_connections.lua") -- Not yet

ScriptHost:LoadScript("scripts/settings.lua")
ScriptHost:LoadScript("scripts/common.lua")

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
