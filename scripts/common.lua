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
