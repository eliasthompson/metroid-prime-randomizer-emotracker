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
Tracker:AddLayouts("layouts/tracker_settings.json")
Tracker:AddLayouts("layouts/tracker_artifacts.json")

if Tracker.ActiveVariantUID == "item_tracker_skinny" then
  Tracker:AddLayouts("item_tracker_skinny/layouts/tracker_shared_horizontal.json")
  Tracker:AddLayouts("item_tracker_skinny/layouts/tracker_shared_vertical.json")
  Tracker:AddLayouts("item_tracker_skinny/layouts/trackers.json")
else
  Tracker:AddLayouts("item_tracker/layouts/tracker_shared_horizontal.json")
  Tracker:AddLayouts("item_tracker/layouts/tracker_shared_vertical.json")
  Tracker:AddLayouts("item_tracker/layouts/trackers.json")
end

ScriptHost:LoadScript("scripts/callbacks.lua")
-- Soon...
-- ScriptHost:LoadScript("scripts/autotracking.lua")
