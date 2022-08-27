-- Generated from Randovania header.json on 2022/08/27 at 01:38:09
function tpl__shoot_super_missile() return ( Tracker:ProviderCountForCode("power") > 0 and Tracker:ProviderCountForCode("missile") > 0 and Tracker:ProviderCountForCode("charge") > 0 and Tracker:ProviderCountForCode("supers") > 0 and tpl__can_use_arm_cannon() ) end
function tpl__have_all_beams() return ( Tracker:ProviderCountForCode("power") > 0 and Tracker:ProviderCountForCode("wave") > 0 and Tracker:ProviderCountForCode("ice") > 0 and Tracker:ProviderCountForCode("plasma") > 0 and tpl__can_use_arm_cannon() ) end
function tpl__heatresisting_suit() return ( Tracker:ProviderCountForCode("gravitysuit") > 0 or Tracker:ProviderCountForCode("variasuit") > 0 or Tracker:ProviderCountForCode("phazonsuit") > 0 ) end
function tpl__shoot_ice_beam() return ( Tracker:ProviderCountForCode("ice") > 0 and tpl__can_use_arm_cannon() ) end
function tpl__can_use_arm_cannon() return ( Tracker:ProviderCountForCode("combat") > 0 or Tracker:ProviderCountForCode("thermal") > 0 or Tracker:ProviderCountForCode("xray") > 0 ) end
function tpl__shoot_power_beam() return ( Tracker:ProviderCountForCode("power") > 0 and tpl__can_use_arm_cannon() ) end
function tpl__shoot_wave_beam() return ( Tracker:ProviderCountForCode("wave") > 0 and tpl__can_use_arm_cannon() ) end
function tpl__shoot_any_beam() return ( tpl__can_use_arm_cannon() and ( Tracker:ProviderCountForCode("power") > 0 or Tracker:ProviderCountForCode("wave") > 0 or Tracker:ProviderCountForCode("ice") > 0 or Tracker:ProviderCountForCode("plasma") > 0 ) ) end
function tpl__move_past_scatter_bombu() return ( Tracker:ProviderCountForCode("morphball") > 0 or ( Tracker:ProviderCountForCode("setting_trick_movement1") > 0 and Tracker:ProviderCountForCode("damage") > 0 ) or Tracker:ProviderCountForCode("setting_trick_movement2") > 0 or Tracker:ProviderCountForCode("damage") > 0 or tpl__shoot_wave_beam() ) end
function tpl__open_normal_door() return ( tpl__shoot_any_beam() or ( Tracker:ProviderCountForCode("scan") > 0 and Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 ) ) end
function tpl__use_grapple_beam() return ( Tracker:ProviderCountForCode("grapple") > 0 and tpl__can_use_arm_cannon() ) end
function tpl__shoot_plasma_beam() return ( Tracker:ProviderCountForCode("plasma") > 0 and tpl__can_use_arm_cannon() ) end
function dor__open_passage() return ( ( Tracker:ProviderCountForCode("power") > 0 or Tracker:ProviderCountForCode("ice") > 0 or Tracker:ProviderCountForCode("wave") > 0 or Tracker:ProviderCountForCode("plasma") > 0 ) and ( Tracker:ProviderCountForCode("combat") > 0 or Tracker:ProviderCountForCode("thermal") > 0 or Tracker:ProviderCountForCode("xray") > 0 ) ) end
function dor__not_determined() return ( false ) end
function dor__closed_passage() return ( false ) end
function dor__morph_ball_door() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("power") > 0 or Tracker:ProviderCountForCode("ice") > 0 or Tracker:ProviderCountForCode("wave") > 0 or Tracker:ProviderCountForCode("plasma") > 0 ) and ( Tracker:ProviderCountForCode("combat") > 0 or Tracker:ProviderCountForCode("thermal") > 0 or Tracker:ProviderCountForCode("xray") > 0 or Tracker:ProviderCountForCode("scan") > 0 ) ) end
function dor__circular_door() return tpl__open_normal_door() end
function dor__power_bomb_blast_shield() return ( tpl__open_normal_door() and ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("powerbomb") > 0 ) ) end
function dor__super_missile_blast_shield() return ( tpl__open_normal_door() and tpl__shoot_super_missile() ) end
function dor__wave_door() return tpl__shoot_wave_beam() end
function dor__ice_door() return tpl__shoot_ice_beam() end
function dor__missile_blast_shield() return ( ( true ) and ( Tracker:ProviderCountForCode("missile") > 0 and tpl__shoot_any_beam() ) ) end
function dor__flamethrower_blast_shield() return ( tpl__shoot_plasma_beam() and ( Tracker:ProviderCountForCode("charge") > 0 and Tracker:ProviderCountForCode("missile") > 0 and Tracker:ProviderCountForCode("flamethrower") > 0 and tpl__shoot_plasma_beam() ) ) end
function dor__missile_blast_shield_randomprime() return ( ( true ) and ( Tracker:ProviderCountForCode("missile") > 0 and tpl__shoot_any_beam() ) ) end
function dor__charge_beam_door() return ( tpl__shoot_any_beam() and Tracker:ProviderCountForCode("charge") > 0 ) end
function dor__wavebuster_blast_shield() return ( tpl__shoot_wave_beam() and ( Tracker:ProviderCountForCode("charge") > 0 and Tracker:ProviderCountForCode("missile") > 0 and Tracker:ProviderCountForCode("wavebuster") > 0 and tpl__shoot_wave_beam() ) ) end
function dor__permanently_locked() return ( ( false ) and ( true ) ) end
function dor__plasma_door() return tpl__shoot_plasma_beam() end
function dor__square_door() return tpl__open_normal_door() end
function dor__normal_door() return tpl__open_normal_door() end
function dor__bomb_door() return ( tpl__open_normal_door() and Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 ) end
function dor__ice_spreader_blast_shield() return ( tpl__shoot_ice_beam() and ( Tracker:ProviderCountForCode("charge") > 0 and Tracker:ProviderCountForCode("missile") > 0 and Tracker:ProviderCountForCode("icespreader") > 0 and tpl__shoot_ice_beam() ) ) end
