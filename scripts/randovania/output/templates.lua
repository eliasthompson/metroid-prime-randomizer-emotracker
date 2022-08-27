-- Generated from Randovania header.json on 2022/08/27 at 00:58:45
function tpl_open_normal_door() return ( tpl_shoot_any_beam() or ( Tracker:ProviderCountForCode("scan") > 0 and Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 ) ) end
function tpl_shoot_power_beam() return ( Tracker:ProviderCountForCode("power") > 0 and tpl_can_use_arm_cannon() ) end
function tpl_shoot_super_missile() return ( Tracker:ProviderCountForCode("power") > 0 and Tracker:ProviderCountForCode("missile") > 0 and Tracker:ProviderCountForCode("charge") > 0 and Tracker:ProviderCountForCode("supers") > 0 and tpl_can_use_arm_cannon() ) end
function tpl_move_past_scatter_bombu() return ( Tracker:ProviderCountForCode("morphball") > 0 or ( Tracker:ProviderCountForCode("setting_trick_movement1") > 0 and Tracker:ProviderCountForCode("damage") > 0 ) or Tracker:ProviderCountForCode("setting_trick_movement2") > 0 or Tracker:ProviderCountForCode("damage") > 0 or tpl_shoot_wave_beam() ) end
function tpl_use_grapple_beam() return ( Tracker:ProviderCountForCode("grapple") > 0 and tpl_can_use_arm_cannon() ) end
function tpl_heatresisting_suit() return ( Tracker:ProviderCountForCode("gravitysuit") > 0 or Tracker:ProviderCountForCode("variasuit") > 0 or Tracker:ProviderCountForCode("phazonsuit") > 0 ) end
function tpl_can_use_arm_cannon() return ( Tracker:ProviderCountForCode("combat") > 0 or Tracker:ProviderCountForCode("thermal") > 0 or Tracker:ProviderCountForCode("xray") > 0 ) end
function tpl_have_all_beams() return ( Tracker:ProviderCountForCode("power") > 0 and Tracker:ProviderCountForCode("wave") > 0 and Tracker:ProviderCountForCode("ice") > 0 and Tracker:ProviderCountForCode("plasma") > 0 and tpl_can_use_arm_cannon() ) end
function tpl_shoot_wave_beam() return ( Tracker:ProviderCountForCode("wave") > 0 and tpl_can_use_arm_cannon() ) end
function tpl_shoot_ice_beam() return ( Tracker:ProviderCountForCode("ice") > 0 and tpl_can_use_arm_cannon() ) end
function tpl_shoot_any_beam() return ( tpl_can_use_arm_cannon() and ( Tracker:ProviderCountForCode("power") > 0 or Tracker:ProviderCountForCode("wave") > 0 or Tracker:ProviderCountForCode("ice") > 0 or Tracker:ProviderCountForCode("plasma") > 0 ) ) end
function tpl_shoot_plasma_beam() return ( Tracker:ProviderCountForCode("plasma") > 0 and tpl_can_use_arm_cannon() ) end
