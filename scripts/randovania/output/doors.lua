-- Generated from Randovania header.json on 2022/08/27 at 00:58:45
function dor_closed_passage() return ( false ) end
function dor_not_determined() return ( false ) end
function dor_open_passage() return ( ( Tracker:ProviderCountForCode("power") > 0 or Tracker:ProviderCountForCode("ice") > 0 or Tracker:ProviderCountForCode("wave") > 0 or Tracker:ProviderCountForCode("plasma") > 0 ) and ( Tracker:ProviderCountForCode("combat") > 0 or Tracker:ProviderCountForCode("thermal") > 0 or Tracker:ProviderCountForCode("xray") > 0 ) ) end
function dor_morph_ball_door() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("power") > 0 or Tracker:ProviderCountForCode("ice") > 0 or Tracker:ProviderCountForCode("wave") > 0 or Tracker:ProviderCountForCode("plasma") > 0 ) and ( Tracker:ProviderCountForCode("combat") > 0 or Tracker:ProviderCountForCode("thermal") > 0 or Tracker:ProviderCountForCode("xray") > 0 or Tracker:ProviderCountForCode("scan") > 0 ) ) end
function dor_missile_blast_shield_randomprime() return ( ( true ) and ( Tracker:ProviderCountForCode("missile") > 0 and tpl_shoot_any_beam() ) ) end
function dor_bomb_door() return ( tpl_open_normal_door() and Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 ) end
function dor_wave_door() return tpl_shoot_wave_beam() end
function dor_circular_door() return tpl_open_normal_door() end
function dor_power_bomb_blast_shield() return ( tpl_open_normal_door() and ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("powerbomb") > 0 ) ) end
function dor_missile_blast_shield() return ( ( true ) and ( Tracker:ProviderCountForCode("missile") > 0 and tpl_shoot_any_beam() ) ) end
function dor_ice_door() return tpl_shoot_ice_beam() end
function dor_permanently_locked() return ( ( false ) and ( true ) ) end
function dor_ice_spreader_blast_shield() return ( tpl_shoot_ice_beam() and ( Tracker:ProviderCountForCode("charge") > 0 and Tracker:ProviderCountForCode("missile") > 0 and Tracker:ProviderCountForCode("icespreader") > 0 and tpl_shoot_ice_beam() ) ) end
function dor_normal_door() return tpl_open_normal_door() end
function dor_plasma_door() return tpl_shoot_plasma_beam() end
function dor_charge_beam_door() return ( tpl_shoot_any_beam() and Tracker:ProviderCountForCode("charge") > 0 ) end
function dor_flamethrower_blast_shield() return ( tpl_shoot_plasma_beam() and ( Tracker:ProviderCountForCode("charge") > 0 and Tracker:ProviderCountForCode("missile") > 0 and Tracker:ProviderCountForCode("flamethrower") > 0 and tpl_shoot_plasma_beam() ) ) end
function dor_square_door() return tpl_open_normal_door() end
function dor_super_missile_blast_shield() return ( tpl_open_normal_door() and tpl_shoot_super_missile() ) end
function dor_wavebuster_blast_shield() return ( tpl_shoot_wave_beam() and ( Tracker:ProviderCountForCode("charge") > 0 and Tracker:ProviderCountForCode("missile") > 0 and Tracker:ProviderCountForCode("wavebuster") > 0 and tpl_shoot_wave_beam() ) ) end
