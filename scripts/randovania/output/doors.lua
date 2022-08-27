-- Generated from Randovania header.json on 2022/08/26 at 19:43:54
function dor_morph_ball_door() if ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("power") > 0 or Tracker:ProviderCountForCode("ice") > 0 or Tracker:ProviderCountForCode("wave") > 0 or Tracker:ProviderCountForCode("plasma") > 0 ) and ( Tracker:ProviderCountForCode("combat") > 0 or Tracker:ProviderCountForCode("thermal") > 0 or Tracker:ProviderCountForCode("xray") > 0 or Tracker:ProviderCountForCode("scan") > 0 ) ) then return true end return false end
function dor_square_door() if tpl_open_normal_door() then return true end return false end
function dor_bomb_door() if ( tpl_open_normal_door() and Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 ) then return true end return false end
function dor_ice_door() if tpl_shoot_ice_beam() then return true end return false end
function dor_charge_beam_door() if ( tpl_shoot_any_beam() and Tracker:ProviderCountForCode("charge") > 0 ) then return true end return false end
function dor_flamethrower_blast_shield() if ( tpl_shoot_plasma_beam() and ( Tracker:ProviderCountForCode("charge") > 0 and Tracker:ProviderCountForCode("missile") > 0 and Tracker:ProviderCountForCode("flamethrower") > 0 and tpl_shoot_plasma_beam() ) ) then return true end return false end
function dor_missile_blast_shield() if ( ( true ) and ( Tracker:ProviderCountForCode("missile") > 0 and tpl_shoot_any_beam() ) ) then return true end return false end
function dor_power_bomb_blast_shield() if ( tpl_open_normal_door() and ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("powerbomb") > 0 ) ) then return true end return false end
function dor_normal_door() if tpl_open_normal_door() then return true end return false end
function dor_circular_door() if tpl_open_normal_door() then return true end return false end
function dor_missile_blast_shield_randomprime() if ( ( true ) and ( Tracker:ProviderCountForCode("missile") > 0 and tpl_shoot_any_beam() ) ) then return true end return false end
function dor_wavebuster_blast_shield() if ( tpl_shoot_wave_beam() and ( Tracker:ProviderCountForCode("charge") > 0 and Tracker:ProviderCountForCode("missile") > 0 and Tracker:ProviderCountForCode("wavebuster") > 0 and tpl_shoot_wave_beam() ) ) then return true end return false end
function dor_ice_spreader_blast_shield() if ( tpl_shoot_ice_beam() and ( Tracker:ProviderCountForCode("charge") > 0 and Tracker:ProviderCountForCode("missile") > 0 and Tracker:ProviderCountForCode("icespreader") > 0 and tpl_shoot_ice_beam() ) ) then return true end return false end
function dor_super_missile_blast_shield() if ( tpl_open_normal_door() and tpl_shoot_super_missile() ) then return true end return false end
function dor_plasma_door() if tpl_shoot_plasma_beam() then return true end return false end
function dor_wave_door() if tpl_shoot_wave_beam() then return true end return false end
function dor_permanently_locked() if ( ( false ) and ( true ) ) then return true end return false end
function dor_closed_passage() if ( false ) then return true end return false end
function dor_not_determined() if ( false ) then return true end return false end
function dor_open_passage() if ( ( Tracker:ProviderCountForCode("power") > 0 or Tracker:ProviderCountForCode("ice") > 0 or Tracker:ProviderCountForCode("wave") > 0 or Tracker:ProviderCountForCode("plasma") > 0 ) and ( Tracker:ProviderCountForCode("combat") > 0 or Tracker:ProviderCountForCode("thermal") > 0 or Tracker:ProviderCountForCode("xray") > 0 ) ) then return true end return false end
