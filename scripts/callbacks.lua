function tracker_on_accessibility_updated()
  local obj_go_mode = Tracker:FindObjectForCode("gomode")
  local obj_artifacts = Tracker:FindObjectForCode("artifacts")
  local obj_setting_goal_total_artifacts = Tracker:FindObjectForCode("setting_goal_total_artifacts")
  local obj_setting_goal_skip_impact_crater = Tracker:FindObjectForCode("setting_goal_skip_impact_crater")

  if obj_setting_goal_total_artifacts then
    local artifact_max = math.floor(obj_setting_goal_total_artifacts.AcquiredCount)

    -- Prevent artifacts from being counted above the max
    if obj_artifacts then
      local artifact_current = math.floor(obj_artifacts.CurrentStage)

      if artifact_current > artifact_max then
        obj_artifacts.CurrentStage = artifact_max
      end
    end

    -- Toggle Go Mode on or off based on active items
    if obj_go_mode and obj_setting_goal_skip_impact_crater then
      local is_go_mode = Tracker:ProviderCountForCode("artifacts" .. artifact_max) > 0
        and Tracker:ProviderCountForCode("missilelauncher") > 0
        and canBeatImpactCrater(obj_setting_goal_skip_impact_crater.Active)
        and tpl_shoot_any_beam()

      if is_go_mode then
        obj_go_mode.Active = true
      else
        obj_go_mode.Active = false
      end
    end
  end

  return nil
end
