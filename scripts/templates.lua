function tpl_can_use_arm_cannon()
  if
    Tracker:ProviderCountForCode("combatvisor") > 0
    or Tracker:ProviderCountForCode("thermalvisor") > 0
    or Tracker:ProviderCountForCode("xrayvisor") > 0
  then
    return true
  end

  return false
end

function tpl_shoot_any_beam()
  if
    tpl_can_use_arm_cannon()
  then
    if
      Tracker:ProviderCountForCode("powerbeam") > 0
      or Tracker:ProviderCountForCode("wavebeam") > 0
      or Tracker:ProviderCountForCode("icebeam") > 0
      or Tracker:ProviderCountForCode("plasmabeam") > 0
    then
      return true
    end
  end

  return false
end

function tpl_use_grapple_beam()
  if
    Tracker:ProviderCountForCode("grapplebeam") > 0
    and tpl_can_use_arm_cannon()
  then
    return true
  end

  return false
end
