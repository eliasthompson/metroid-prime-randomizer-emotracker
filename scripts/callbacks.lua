function tracker_on_accessibility_updated()
  local go_mode_object = Tracker:FindObjectForCode("gomode")
  local artifacts_object = Tracker:FindObjectForCode("artifacts")
  local setting_goal_total_artifacts_object = Tracker:FindObjectForCode("setting_goal_total_artifacts")
  local setting_goal_skip_impact_crater_object = Tracker:FindObjectForCode("setting_goal_skip_impact_crater")

  if setting_goal_total_artifacts_object ~= nil then
    local artifact_max = math.floor(setting_goal_total_artifacts_object.AcquiredCount)

    -- Prevent artifacts from being counted above the max
    if artifacts_object ~= nil then
      local artifact_current = math.floor(artifacts_object.CurrentStage)

      if artifact_current > artifact_max then
        artifacts_object.CurrentStage = artifact_max
      end
    end

    -- Toggle Go Mode on or off based on active items
    if go_mode_object ~= nil and setting_goal_skip_impact_crater_object ~= nil then
      local go_mode = Tracker:ProviderCountForCode("artifacts" .. artifact_max) > 0
        and Tracker:ProviderCountForCode("missilelauncher") > 0
        and canBeatImpactCrater(setting_goal_skip_impact_crater_object.Active)
        and hasAttackVisor()
        and hasBeam()

      if go_mode then
        go_mode_object.Active = true
      else
        go_mode_object.Active = false
      end
    end
  end

  return 0
end
