function canBeatImpactCrater(setting_goal_skip_impact_crater)
  if setting_goal_skip_impact_crater then
    return true
  else
    return Tracker:ProviderCountForCode("phazonsuit") > 0
      and Tracker:ProviderCountForCode("powerbeam") > 0
      and Tracker:ProviderCountForCode("wavebeam") > 0
      and Tracker:ProviderCountForCode("icebeam") > 0
      and Tracker:ProviderCountForCode("plasmabeam") > 0
      and Tracker:ProviderCountForCode("spacejumpboots") > 0
  end
end

function hasAttackVisor()
  return Tracker:ProviderCountForCode("combatvisor") > 0
    or Tracker:ProviderCountForCode("thermalvisor") > 0
    or Tracker:ProviderCountForCode("xrayvisor") > 0
end

function hasBeam()
  return Tracker:ProviderCountForCode("powerbeam") > 0
    or Tracker:ProviderCountForCode("wavebeam") > 0
    or Tracker:ProviderCountForCode("icebeam") > 0
    or Tracker:ProviderCountForCode("plasmabeam") > 0
end
