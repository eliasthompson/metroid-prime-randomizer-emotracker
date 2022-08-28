-- Generated from Randovania Chozo Ruins.json on 2022/08/28 at 16:06:32
function doc__chozo_ruins__antechamber__door_to_reflecting_pool() return dor__ice_door() end
function cxn__chozo_ruins__antechamber__door_to_reflecting_pool__to__pickup_ice_beam() return ( true ) end
function cxn__chozo_ruins__antechamber__pickup_ice_beam__to__door_to_reflecting_pool() return ( true ) end
function doc__chozo_ruins__arboretum__door_to_arboretum_access() return dor__normal_door() end
function cxn__chozo_ruins__arboretum__door_to_arboretum_access__to__door_to_gathering_hall_access() return ( true ) end
function doc__chozo_ruins__arboretum__door_to_gathering_hall_access() return dor__missile_blast_shield() end
function cxn__chozo_ruins__arboretum__door_to_gathering_hall_access__to__door_to_arboretum_access() return ( true ) end
function cxn__chozo_ruins__arboretum__door_to_gathering_hall_access__to__front_of_gate() return ( ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 ) or Tracker:ProviderCountForCode("spacejump") > 0 ) end
function doc__chozo_ruins__arboretum__door_to_sunchamber_lobby() return dor__missile_blast_shield() end
function cxn__chozo_ruins__arboretum__door_to_sunchamber_lobby__to__front_of_gate() return ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and ( Tracker:ProviderCountForCode("event9") > 0 or ( Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("setting_trick_clipthruobjects1") > 0 ) or Tracker:ProviderCountForCode("setting_trick_bj2") > 0 ) ) end
function cxn__chozo_ruins__arboretum__event__open_gate__to__front_of_gate() return ( true ) end
function cxn__chozo_ruins__arboretum__front_of_gate__to__door_to_gathering_hall_access() return ( true ) end
function cxn__chozo_ruins__arboretum__front_of_gate__to__door_to_sunchamber_lobby() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( ( Tracker:ProviderCountForCode("bombs") > 0 and ( Tracker:ProviderCountForCode("event9") > 0 or Tracker:ProviderCountForCode("setting_trick_bj3") > 0 ) ) or ( Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("setting_trick_oob3") > 0 and Tracker:ProviderCountForCode("setting_trick_standable3") > 0 and Tracker:ProviderCountForCode("setting_trick_clipthruobjects4") > 0 ) ) ) end
function cxn__chozo_ruins__arboretum__front_of_gate__to__event__open_gate() return Tracker:ProviderCountForCode("scan") > 0 end
function doc__chozo_ruins__arboretum_access__door_to_arboretum() return dor__missile_blast_shield() end
function cxn__chozo_ruins__arboretum_access__door_to_arboretum__to__door_to_ruined_fountain() return ( true ) end
function doc__chozo_ruins__arboretum_access__door_to_ruined_fountain() return dor__normal_door() end
function cxn__chozo_ruins__arboretum_access__door_to_ruined_fountain__to__door_to_arboretum() return ( true ) end
function doc__chozo_ruins__burn_dome__door_to_burn_dome_access() return dor__normal_door() end
function cxn__chozo_ruins__burn_dome__door_to_burn_dome_access__to__event__incinerator_drone() return ( tpl__shoot_power_beam() or tpl__shoot_wave_beam() or tpl__shoot_ice_beam() ) end
function cxn__chozo_ruins__burn_dome__door_to_burn_dome_access__to__pickup_missile_expansion() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("bombs") > 0 or ( Tracker:ProviderCountForCode("powerbomb") > 0 and Tracker:ProviderCountForCode("setting_trick_knowledge1") > 0 ) ) ) end
function cxn__chozo_ruins__burn_dome__event__incinerator_drone__to__pickup_morph_ball_bombs() return ( true ) end
function cxn__chozo_ruins__burn_dome__pickup_missile_expansion__to__door_to_burn_dome_access() return Tracker:ProviderCountForCode("event39") > 0 end
function cxn__chozo_ruins__burn_dome__pickup_morph_ball_bombs__to__door_to_burn_dome_access() return ( true ) end
function doc__chozo_ruins__burn_dome_access__door_to_burn_dome() return dor__normal_door() end
function cxn__chozo_ruins__burn_dome_access__door_to_burn_dome__to__morph_ball_door_to_energy_core() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("bombs") > 0 or ( Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("setting_trick_wallboost4") > 0 ) ) ) end
function doc__chozo_ruins__burn_dome_access__morph_ball_door_to_energy_core() return dor__morph_ball_door() end
function cxn__chozo_ruins__burn_dome_access__morph_ball_door_to_energy_core__to__door_to_burn_dome() return Tracker:ProviderCountForCode("morphball") > 0 end
function cxn__chozo_ruins__burn_dome_access__spawn_point__to__door_to_burn_dome() return Tracker:ProviderCountForCode("morphball") > 0 end
function doc__chozo_ruins__crossway__door_to_crossway_access_south() return dor__ice_door() end
function cxn__chozo_ruins__crossway__door_to_crossway_access_south__to__door_to_crossway_access_west() return ( true ) end
function doc__chozo_ruins__crossway__door_to_crossway_access_west() return dor__normal_door() end
function cxn__chozo_ruins__crossway__door_to_crossway_access_west__to__door_to_crossway_access_south() return ( true ) end
function cxn__chozo_ruins__crossway__door_to_crossway_access_west__to__door_to_elder_hall_access() return ( ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("boost") > 0 or ( Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_cbj4") > 0 ) ) ) or ( Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("setting_trick_ljump1") > 0 ) ) end
function doc__chozo_ruins__crossway__door_to_elder_hall_access() return dor__missile_blast_shield() end
function cxn__chozo_ruins__crossway__door_to_elder_hall_access__to__door_to_crossway_access_west() return ( true ) end
function cxn__chozo_ruins__crossway__door_to_elder_hall_access__to__event__activate_bomb_slots() return ( tpl__shoot_super_missile() and Tracker:ProviderCountForCode("scan") > 0 ) end
function cxn__chozo_ruins__crossway__door_to_elder_hall_access__to__pickup_missile_expansion() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( ( Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("event13") > 0 and ( Tracker:ProviderCountForCode("spider") > 0 or Tracker:ProviderCountForCode("setting_trick_movement2") > 0 ) ) or ( Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("setting_trick_ljump1") > 0 and Tracker:ProviderCountForCode("setting_trick_standable2") > 0 ) or ( Tracker:ProviderCountForCode("boost") > 0 and ( ( Tracker:ProviderCountForCode("setting_trick_movement4") > 0 ) or ( Tracker:ProviderCountForCode("scan") > 0 and Tracker:ProviderCountForCode("setting_trick_movement3") > 0 and Tracker:ProviderCountForCode("setting_trick_standable3") > 0 and Tracker:ProviderCountForCode("setting_trick_dash4") > 0 ) ) ) or ( Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj3") > 0 and Tracker:ProviderCountForCode("setting_trick_standable4") > 0 and Tracker:ProviderCountForCode("setting_trick_dash4") > 0 and Tracker:ProviderCountForCode("scan") > 0 and Tracker:ProviderCountForCode("setting_trick_bsj4") > 0 ) ) ) end
function cxn__chozo_ruins__crossway__event__activate_bomb_slots__to__door_to_elder_hall_access() return ( true ) end
function cxn__chozo_ruins__crossway__pickup_missile_expansion__to__door_to_crossway_access_west() return ( true ) end
function doc__chozo_ruins__crossway_access_south__door_to_crossway() return dor__ice_door() end
function cxn__chozo_ruins__crossway_access_south__door_to_crossway__to__door_to_hall_of_the_elders() return ( Tracker:ProviderCountForCode("morphball") > 0 ) end
function doc__chozo_ruins__crossway_access_south__door_to_hall_of_the_elders() return dor__ice_door() end
function cxn__chozo_ruins__crossway_access_south__door_to_hall_of_the_elders__to__door_to_crossway() return ( Tracker:ProviderCountForCode("morphball") > 0 ) end
function doc__chozo_ruins__crossway_access_west__door_to_crossway() return dor__wave_door() end
function cxn__chozo_ruins__crossway_access_west__door_to_crossway__to__morph_ball_door_to_furnace() return ( Tracker:ProviderCountForCode("morphball") > 0 ) end
function doc__chozo_ruins__crossway_access_west__morph_ball_door_to_furnace() return dor__morph_ball_door() end
function cxn__chozo_ruins__crossway_access_west__morph_ball_door_to_furnace__to__door_to_crossway() return ( Tracker:ProviderCountForCode("morphball") > 0 ) end
function doc__chozo_ruins__dynamo__door_to_dynamo_access() return dor__normal_door() end
function cxn__chozo_ruins__dynamo__door_to_dynamo_access__to__pickup_missile_expansion_2() return ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("spider") > 0 and ( Tracker:ProviderCountForCode("spacejump") > 0 or Tracker:ProviderCountForCode("setting_trick_standable1") > 0 or ( Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj1") > 0 ) ) ) end
function cxn__chozo_ruins__dynamo__door_to_dynamo_access__to__pickup_missile_expansion() return ( Tracker:ProviderCountForCode("missile") > 0 and tpl__shoot_any_beam() ) end
function cxn__chozo_ruins__dynamo__pickup_missile_expansion_2__to__door_to_dynamo_access() return ( true ) end
function cxn__chozo_ruins__dynamo__pickup_missile_expansion__to__door_to_dynamo_access() return ( true ) end
function doc__chozo_ruins__dynamo_access__door_to_dynamo() return dor__missile_blast_shield() end
function cxn__chozo_ruins__dynamo_access__door_to_dynamo__to__door_to_watery_hall() return ( true ) end
function doc__chozo_ruins__dynamo_access__door_to_watery_hall() return dor__normal_door() end
function cxn__chozo_ruins__dynamo_access__door_to_watery_hall__to__door_to_dynamo() return ( true ) end
function doc__chozo_ruins__east_atrium__door_to_energy_core_access() return dor__normal_door() end
function cxn__chozo_ruins__east_atrium__door_to_energy_core_access__to__door_to_gathering_hall() return ( true ) end
function doc__chozo_ruins__east_atrium__door_to_gathering_hall() return dor__normal_door() end
function cxn__chozo_ruins__east_atrium__door_to_gathering_hall__to__door_to_energy_core_access() return ( true ) end
function doc__chozo_ruins__east_furnace_access__door_to_furnace() return dor__ice_door() end
function cxn__chozo_ruins__east_furnace_access__door_to_furnace__to__door_to_hall_of_the_elders() return ( true ) end
function doc__chozo_ruins__east_furnace_access__door_to_hall_of_the_elders() return dor__ice_door() end
function cxn__chozo_ruins__east_furnace_access__door_to_hall_of_the_elders__to__door_to_furnace() return ( true ) end
function doc__chozo_ruins__elder_chamber__door_to_hall_of_the_elders() return dor__ice_door() end
function cxn__chozo_ruins__elder_chamber__door_to_hall_of_the_elders__to__pickup_artifact_of_world() return ( true ) end
function cxn__chozo_ruins__elder_chamber__pickup_artifact_of_world__to__door_to_hall_of_the_elders() return ( true ) end
function doc__chozo_ruins__elder_hall_access__door_to_crossway() return dor__normal_door() end
function cxn__chozo_ruins__elder_hall_access__door_to_crossway__to__door_to_hall_of_the_elders() return ( true ) end
function doc__chozo_ruins__elder_hall_access__door_to_hall_of_the_elders() return dor__normal_door() end
function cxn__chozo_ruins__elder_hall_access__door_to_hall_of_the_elders__to__door_to_crossway() return ( true ) end
function doc__chozo_ruins__energy_core__door_to_energy_core_access() return dor__normal_door() end
function cxn__chozo_ruins__energy_core__door_to_energy_core_access__to__door_to_west_furnace_access() return Tracker:ProviderCountForCode("event3") > 0 end
function cxn__chozo_ruins__energy_core__door_to_energy_core_access__to__event__unlock_west_furnace_access_door() return ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 ) end
function cxn__chozo_ruins__energy_core__door_to_energy_core_access__to__morph_ball_door_to_burn_dome_access() return Tracker:ProviderCountForCode("morphball") > 0 end
function doc__chozo_ruins__energy_core__door_to_west_furnace_access() return dor__normal_door() end
function cxn__chozo_ruins__energy_core__door_to_west_furnace_access__to__door_to_energy_core_access() return ( true ) end
function cxn__chozo_ruins__energy_core__event__unlock_west_furnace_access_door__to__door_to_energy_core_access() return ( true ) end
function doc__chozo_ruins__energy_core__morph_ball_door_to_burn_dome_access() return dor__morph_ball_door() end
function cxn__chozo_ruins__energy_core__morph_ball_door_to_burn_dome_access__to__door_to_energy_core_access() return Tracker:ProviderCountForCode("morphball") > 0 end
function doc__chozo_ruins__energy_core_access__door_to_east_atrium() return dor__normal_door() end
function cxn__chozo_ruins__energy_core_access__door_to_east_atrium__to__door_to_energy_core() return ( true ) end
function doc__chozo_ruins__energy_core_access__door_to_energy_core() return dor__normal_door() end
function cxn__chozo_ruins__energy_core_access__door_to_energy_core__to__door_to_east_atrium() return ( true ) end
function doc__chozo_ruins__eyon_tunnel__door_to_nursery_access() return dor__normal_door() end
function cxn__chozo_ruins__eyon_tunnel__door_to_nursery_access__to__door_to_ruined_nursery() return ( true ) end
function doc__chozo_ruins__eyon_tunnel__door_to_ruined_nursery() return dor__normal_door() end
function cxn__chozo_ruins__eyon_tunnel__door_to_ruined_nursery__to__door_to_nursery_access() return ( true ) end
function doc__chozo_ruins__furnace__door_to_east_furnace_access() return dor__ice_door() end
function cxn__chozo_ruins__furnace__door_to_east_furnace_access__to__under_spider_track() return ( true ) end
function doc__chozo_ruins__furnace__door_to_west_furnace_access() return dor__normal_door() end
function cxn__chozo_ruins__furnace__door_to_west_furnace_access__to__pickup_energy_tank() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("bombs") > 0 or ( Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("setting_trick_wallboost2") > 0 ) ) ) end
function cxn__chozo_ruins__furnace__door_to_west_furnace_access__to__under_spider_track() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("spider") > 0 or Tracker:ProviderCountForCode("setting_trick_standable1") > 0 ) and ( Tracker:ProviderCountForCode("bombs") > 0 or ( Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("setting_trick_wallboost3") > 0 ) ) ) end
function doc__chozo_ruins__furnace__morph_ball_door_to_crossway_access_west() return dor__morph_ball_door() end
function cxn__chozo_ruins__furnace__morph_ball_door_to_crossway_access_west__to__under_spider_track() return ( true ) end
function cxn__chozo_ruins__furnace__pickup_energy_tank__to__door_to_west_furnace_access() return ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 ) end
function cxn__chozo_ruins__furnace__pickup_missile_expansion__to__under_spider_track() return ( true ) end
function cxn__chozo_ruins__furnace__under_spider_track__to__door_to_east_furnace_access() return ( Tracker:ProviderCountForCode("spacejump") > 0 or ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj1") > 0 ) or Tracker:ProviderCountForCode("setting_trick_ljump1") > 0 ) end
function cxn__chozo_ruins__furnace__under_spider_track__to__door_to_west_furnace_access() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("bombs") > 0 or ( Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("setting_trick_wallboost3") > 0 ) ) ) end
function cxn__chozo_ruins__furnace__under_spider_track__to__morph_ball_door_to_crossway_access_west() return Tracker:ProviderCountForCode("morphball") > 0 end
function cxn__chozo_ruins__furnace__under_spider_track__to__pickup_missile_expansion() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( ( Tracker:ProviderCountForCode("spider") > 0 and ( ( Tracker:ProviderCountForCode("powerbomb") > 0 and Tracker:ProviderCountForCode("boost") > 0 and ( Tracker:ProviderCountForCode("bombs") > 0 or Tracker:ProviderCountForCode("setting_trick_wallboost2") > 0 ) ) or ( Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_cbj3") > 0 ) ) ) or ( Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("setting_trick_standable1") > 0 and ( ( Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj3") > 0 ) or ( Tracker:ProviderCountForCode("spider") > 0 and ( Tracker:ProviderCountForCode("bombs") > 0 or Tracker:ProviderCountForCode("setting_trick_movement1") > 0 ) ) ) ) ) ) end
function doc__chozo_ruins__gathering_hall__door_to_east_atrium() return dor__normal_door() end
function cxn__chozo_ruins__gathering_hall__door_to_east_atrium__to__door_to_gathering_hall_access() return ( true ) end
function cxn__chozo_ruins__gathering_hall__door_to_east_atrium__to__pickup_missile_expansion() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( ( Tracker:ProviderCountForCode("spacejump") > 0 and ( Tracker:ProviderCountForCode("bombs") > 0 or ( Tracker:ProviderCountForCode("powerbomb") > 0 and Tracker:ProviderCountForCode("setting_trick_knowledge1") > 0 ) ) ) or ( Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj1") > 0 ) or ( Tracker:ProviderCountForCode("powerbomb") > 0 and Tracker:ProviderCountForCode("setting_trick_dash5") > 0 and Tracker:ProviderCountForCode("setting_trick_standable5") > 0 and Tracker:ProviderCountForCode("scan") > 0 ) ) ) end
function doc__chozo_ruins__gathering_hall__door_to_gathering_hall_access() return dor__normal_door() end
function cxn__chozo_ruins__gathering_hall__door_to_gathering_hall_access__to__door_to_east_atrium() return ( Tracker:ProviderCountForCode("morphball") > 0 or Tracker:ProviderCountForCode("spacejump") > 0 or Tracker:ProviderCountForCode("setting_trick_ljump1") > 0 or ( Tracker:ProviderCountForCode("scan") > 0 and Tracker:ProviderCountForCode("setting_trick_dash1") > 0 ) ) end
function cxn__chozo_ruins__gathering_hall__door_to_gathering_hall_access__to__door_to_save_station_2() return ( true ) end
function cxn__chozo_ruins__gathering_hall__door_to_gathering_hall_access__to__door_to_watery_hall_access() return ( true ) end
function doc__chozo_ruins__gathering_hall__door_to_save_station_2() return dor__missile_blast_shield() end
function cxn__chozo_ruins__gathering_hall__door_to_save_station_2__to__door_to_gathering_hall_access() return ( true ) end
function doc__chozo_ruins__gathering_hall__door_to_watery_hall_access() return dor__normal_door() end
function cxn__chozo_ruins__gathering_hall__door_to_watery_hall_access__to__door_to_gathering_hall_access() return ( true ) end
function cxn__chozo_ruins__gathering_hall__pickup_missile_expansion__to__door_to_east_atrium() return ( true ) end
function doc__chozo_ruins__gathering_hall_access__door_to_arboretum() return dor__normal_door() end
function cxn__chozo_ruins__gathering_hall_access__door_to_arboretum__to__door_to_gathering_hall() return ( true ) end
function doc__chozo_ruins__gathering_hall_access__door_to_gathering_hall() return dor__normal_door() end
function cxn__chozo_ruins__gathering_hall_access__door_to_gathering_hall__to__door_to_arboretum() return ( true ) end
function cxn__chozo_ruins__hall_of_the_elders__behind_barrier__to__door_to_elder_hall_access() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("bombs") > 0 or ( Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("setting_trick_wallboost1") > 0 ) or Tracker:ProviderCountForCode("setting_trick_movement1") > 0 ) and Tracker:ProviderCountForCode("event48") > 0 ) end
function cxn__chozo_ruins__hall_of_the_elders__behind_barrier__to__door_to_reflecting_pool_access() return ( Tracker:ProviderCountForCode("event48") > 0 ) end
function cxn__chozo_ruins__hall_of_the_elders__behind_barrier__to__event__deactivate_barrier() return ( Tracker:ProviderCountForCode("scan") > 0 ) end
function cxn__chozo_ruins__hall_of_the_elders__behind_barrier__to__front_of_beam_bomb_slots() return ( Tracker:ProviderCountForCode("event15") > 0 ) end
function cxn__chozo_ruins__hall_of_the_elders__behind_barrier__to__room_center() return ( Tracker:ProviderCountForCode("event15") > 0 or ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("bombs") > 0 or ( Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("setting_trick_wallboost1") > 0 ) ) ) ) end
function doc__chozo_ruins__hall_of_the_elders__door_to_crossway_access_south() return dor__ice_door() end
function cxn__chozo_ruins__hall_of_the_elders__door_to_crossway_access_south__to__room_center() return ( true ) end
function doc__chozo_ruins__hall_of_the_elders__door_to_east_furnace_access() return dor__ice_door() end
function cxn__chozo_ruins__hall_of_the_elders__door_to_east_furnace_access__to__room_center() return ( true ) end
function doc__chozo_ruins__hall_of_the_elders__door_to_elder_chamber() return dor__ice_door() end
function cxn__chozo_ruins__hall_of_the_elders__door_to_elder_chamber__to__room_center() return ( Tracker:ProviderCountForCode("event44") > 0 or ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("setting_trick_clipthruobjects3") > 0 ) ) end
function doc__chozo_ruins__hall_of_the_elders__door_to_elder_hall_access() return dor__normal_door() end
function cxn__chozo_ruins__hall_of_the_elders__door_to_elder_hall_access__to__room_center() return ( true ) end
function doc__chozo_ruins__hall_of_the_elders__door_to_reflecting_pool_access() return dor__normal_door() end
function cxn__chozo_ruins__hall_of_the_elders__door_to_reflecting_pool_access__to__behind_barrier() return ( true ) end
function cxn__chozo_ruins__hall_of_the_elders__event__activate_bomb_slots__to__room_center() return ( true ) end
function cxn__chozo_ruins__hall_of_the_elders__event__deactivate_barrier__to__behind_barrier() return ( true ) end
function cxn__chozo_ruins__hall_of_the_elders__event__statue_moved__to__front_of_beam_bomb_slots() return ( true ) end
function cxn__chozo_ruins__hall_of_the_elders__event__unlock_doors__to__room_center() return ( true ) end
function cxn__chozo_ruins__hall_of_the_elders__front_of_beam_bomb_slots__to__behind_barrier() return ( ( tpl__shoot_wave_beam() and Tracker:ProviderCountForCode("event14") > 0 and Tracker:ProviderCountForCode("event48") > 0 ) ) end
function cxn__chozo_ruins__hall_of_the_elders__front_of_beam_bomb_slots__to__door_to_elder_hall_access() return ( Tracker:ProviderCountForCode("event48") > 0 ) end
function cxn__chozo_ruins__hall_of_the_elders__front_of_beam_bomb_slots__to__event__statue_moved() return ( tpl__shoot_plasma_beam() and Tracker:ProviderCountForCode("event14") > 0 ) end
function cxn__chozo_ruins__hall_of_the_elders__front_of_beam_bomb_slots__to__pickup_energy_tank() return ( Tracker:ProviderCountForCode("event48") > 0 and Tracker:ProviderCountForCode("event14") > 0 and tpl__shoot_ice_beam() ) end
function cxn__chozo_ruins__hall_of_the_elders__front_of_beam_bomb_slots__to__room_center() return ( true ) end
function cxn__chozo_ruins__hall_of_the_elders__pickup_energy_tank__to__room_center() return ( Tracker:ProviderCountForCode("event48") > 0 and Tracker:ProviderCountForCode("event14") > 0 ) end
function cxn__chozo_ruins__hall_of_the_elders__room_center__to__behind_barrier() return ( ( Tracker:ProviderCountForCode("event15") > 0 and ( Tracker:ProviderCountForCode("spacejump") > 0 or ( Tracker:ProviderCountForCode("morphball") > 0 and ( ( Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj1") > 0 ) or ( Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("setting_trick_iuj4") > 0 and Tracker:ProviderCountForCode("setting_trick_movement3") > 0 and Tracker:ProviderCountForCode("scan") > 0 and Tracker:ProviderCountForCode("setting_trick_dash3") > 0 and Tracker:ProviderCountForCode("setting_trick_standable2") > 0 and Tracker:ProviderCountForCode("setting_trick_wallboost3") > 0 ) ) ) ) ) or ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj4") > 0 ) ) end
function cxn__chozo_ruins__hall_of_the_elders__room_center__to__door_to_crossway_access_south() return ( Tracker:ProviderCountForCode("event48") > 0 ) end
function cxn__chozo_ruins__hall_of_the_elders__room_center__to__door_to_east_furnace_access() return ( Tracker:ProviderCountForCode("event48") > 0 ) end
function cxn__chozo_ruins__hall_of_the_elders__room_center__to__door_to_elder_chamber() return ( Tracker:ProviderCountForCode("event44") > 0 and tpl__shoot_ice_beam() ) end
function cxn__chozo_ruins__hall_of_the_elders__room_center__to__door_to_elder_hall_access() return ( Tracker:ProviderCountForCode("event48") > 0 and ( Tracker:ProviderCountForCode("spacejump") > 0 or ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj1") > 0 ) ) ) end
function cxn__chozo_ruins__hall_of_the_elders__room_center__to__event__activate_bomb_slots() return ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and ( ( Tracker:ProviderCountForCode("spider") > 0 and Tracker:ProviderCountForCode("event48") > 0 ) or ( Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("setting_trick_standable1") > 0 ) or ( Tracker:ProviderCountForCode("scan") > 0 and Tracker:ProviderCountForCode("setting_trick_bj5") > 0 and Tracker:ProviderCountForCode("setting_trick_dash4") > 0 and Tracker:ProviderCountForCode("setting_trick_standable1") > 0 ) ) ) end
function cxn__chozo_ruins__hall_of_the_elders__room_center__to__event__unlock_doors() return ( tpl__shoot_power_beam() and ( Tracker:ProviderCountForCode("charge") > 0 or Tracker:ProviderCountForCode("setting_trick_combat1") > 0 ) ) end
function cxn__chozo_ruins__hall_of_the_elders__room_center__to__front_of_beam_bomb_slots() return ( Tracker:ProviderCountForCode("spacejump") > 0 or ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj1") > 0 ) ) end
function doc__chozo_ruins__hive_totem__door_to_totem_access() return dor__normal_door() end
function cxn__chozo_ruins__hive_totem__door_to_totem_access__to__door_to_transport_access_north() return ( Tracker:ProviderCountForCode("event16") > 0 or ( Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("setting_trick_movement1") > 0 ) or ( Tracker:ProviderCountForCode("scan") > 0 and Tracker:ProviderCountForCode("setting_trick_dash1") > 0 ) or ( Tracker:ProviderCountForCode("setting_trick_sjump2") > 0 and Tracker:ProviderCountForCode("setting_trick_underwatermovement1") > 0 and ( Tracker:ProviderCountForCode("ruinswater") > 0 or Tracker:ProviderCountForCode("event7") > 0 ) ) ) end
function cxn__chozo_ruins__hive_totem__door_to_totem_access__to__event__hive_mecha() return tpl__shoot_power_beam() end
function doc__chozo_ruins__hive_totem__door_to_transport_access_north() return dor__missile_blast_shield() end
function cxn__chozo_ruins__hive_totem__door_to_transport_access_north__to__door_to_totem_access() return ( Tracker:ProviderCountForCode("spacejump") > 0 or ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj1") > 0 ) or ( Tracker:ProviderCountForCode("scan") > 0 and Tracker:ProviderCountForCode("setting_trick_dash1") > 0 ) or Tracker:ProviderCountForCode("event54") > 0 ) end
function cxn__chozo_ruins__hive_totem__door_to_transport_access_north__to__event__fallen_rubble() return ( true ) end
function cxn__chozo_ruins__hive_totem__door_to_transport_access_north__to__event__hive_mecha() return ( true ) end
function cxn__chozo_ruins__hive_totem__event__fallen_rubble__to__pickup_missile_launcher() return ( true ) end
function cxn__chozo_ruins__hive_totem__event__hive_mecha__to__door_to_transport_access_north() return ( true ) end
function cxn__chozo_ruins__hive_totem__pickup_missile_launcher__to__door_to_transport_access_north() return ( true ) end
function doc__chozo_ruins__magma_pool__door_to_meditation_fountain() return dor__normal_door() end
function cxn__chozo_ruins__magma_pool__door_to_meditation_fountain__to__door_to_training_chamber_access() return ( ( tpl__use_grapple_beam() and tpl__heatresisting_suit() ) or ( Tracker:ProviderCountForCode("spacejump") > 0 and ( ( Tracker:ProviderCountForCode("setting_trick_standable2") > 0 and Tracker:ProviderCountForCode("setting_trick_ljump2") > 0 and Tracker:ProviderCountForCode("setting_trick_movement2") > 0 ) or ( Tracker:ProviderCountForCode("scan") > 0 and Tracker:ProviderCountForCode("setting_trick_dash3") > 0 ) or ( Tracker:ProviderCountForCode("gravitysuit") > 0 and Tracker:ProviderCountForCode("heatdamage2") > 0 and Tracker:ProviderCountForCode("setting_trick_ljump2") > 0 and Tracker:ProviderCountForCode("setting_trick_standable1") > 0 ) ) and ( tpl__heatresisting_suit() or ( Tracker:ProviderCountForCode("heatdamage1") > 0 and Tracker:ProviderCountForCode("setting_trick_heatrun1") > 0 ) ) ) ) end
function doc__chozo_ruins__magma_pool__door_to_training_chamber_access() return dor__wave_door() end
function cxn__chozo_ruins__magma_pool__door_to_training_chamber_access__to__door_to_meditation_fountain() return ( ( tpl__use_grapple_beam() and tpl__heatresisting_suit() ) or ( ( tpl__heatresisting_suit() or ( Tracker:ProviderCountForCode("heatdamage1") > 0 and Tracker:ProviderCountForCode("setting_trick_heatrun1") > 0 ) ) and Tracker:ProviderCountForCode("spacejump") > 0 and ( ( Tracker:ProviderCountForCode("setting_trick_movement2") > 0 and ( Tracker:ProviderCountForCode("heatdamage2") > 0 or Tracker:ProviderCountForCode("setting_trick_standable2") > 0 ) ) or ( Tracker:ProviderCountForCode("scan") > 0 and Tracker:ProviderCountForCode("setting_trick_dash3") > 0 ) ) ) ) end
function cxn__chozo_ruins__magma_pool__door_to_training_chamber_access__to__pickup_power_bomb_expansion() return ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("powerbomb") > 0 and ( tpl__heatresisting_suit() or ( Tracker:ProviderCountForCode("heatdamage1") > 0 and Tracker:ProviderCountForCode("setting_trick_heatrun1") > 0 ) ) ) end
function cxn__chozo_ruins__magma_pool__pickup_power_bomb_expansion__to__door_to_training_chamber_access() return ( tpl__heatresisting_suit() or ( Tracker:ProviderCountForCode("heatdamage1") > 0 and Tracker:ProviderCountForCode("setting_trick_heatrun1") > 0 ) ) end
function doc__chozo_ruins__main_plaza__door_from_plaza_access() return dor__permanently_locked() end
function cxn__chozo_ruins__main_plaza__door_from_plaza_access__to__locked_door_ledge() return ( true ) end
function doc__chozo_ruins__main_plaza__door_to_nursery_access() return dor__normal_door() end
function cxn__chozo_ruins__main_plaza__door_to_nursery_access__to__door_to_ruins_entrance() return ( true ) end
function doc__chozo_ruins__main_plaza__door_to_ruined_fountain_access() return dor__normal_door() end
function cxn__chozo_ruins__main_plaza__door_to_ruined_fountain_access__to__door_to_ruins_entrance() return ( true ) end
function cxn__chozo_ruins__main_plaza__door_to_ruined_fountain_access__to__grapple_ledge() return ( ( tpl__use_grapple_beam() and ( ( Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("setting_trick_movement1") > 0 ) or Tracker:ProviderCountForCode("setting_trick_movement2") > 0 ) ) or ( Tracker:ProviderCountForCode("spacejump") > 0 and ( Tracker:ProviderCountForCode("setting_trick_ljump2") > 0 or Tracker:ProviderCountForCode("setting_trick_rjump2") > 0 or ( Tracker:ProviderCountForCode("scan") > 0 and Tracker:ProviderCountForCode("setting_trick_dash2") > 0 ) ) ) or ( Tracker:ProviderCountForCode("setting_trick_dash5") > 0 and Tracker:ProviderCountForCode("event54") > 0 and Tracker:ProviderCountForCode("setting_trick_dboosting4") > 0 and Tracker:ProviderCountForCode("scan") > 0 ) ) end
function cxn__chozo_ruins__main_plaza__door_to_ruined_fountain_access__to__pickup_missile_expansion_tree() return ( tpl__shoot_super_missile() and ( Tracker:ProviderCountForCode("spacejump") > 0 or Tracker:ProviderCountForCode("setting_trick_movement1") > 0 ) ) end
function doc__chozo_ruins__main_plaza__door_to_ruined_shrine_access() return dor__missile_blast_shield() end
function cxn__chozo_ruins__main_plaza__door_to_ruined_shrine_access__to__door_to_ruins_entrance() return ( true ) end
function doc__chozo_ruins__main_plaza__door_to_ruins_entrance() return dor__normal_door() end
function cxn__chozo_ruins__main_plaza__door_to_ruins_entrance__to__door_to_nursery_access() return ( true ) end
function cxn__chozo_ruins__main_plaza__door_to_ruins_entrance__to__door_to_ruined_fountain_access() return ( true ) end
function cxn__chozo_ruins__main_plaza__door_to_ruins_entrance__to__door_to_ruined_shrine_access() return ( true ) end
function cxn__chozo_ruins__main_plaza__door_to_ruins_entrance__to__locked_door_ledge() return ( Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("setting_trick_ljump1") > 0 ) end
function cxn__chozo_ruins__main_plaza__door_to_ruins_entrance__to__pickup_missile_expansion_half_pipe() return ( ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("boost") > 0 or ( Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_cbj3") > 0 ) or Tracker:ProviderCountForCode("setting_trick_movement5") > 0 ) ) or ( Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("setting_trick_sjump1") > 0 ) ) end
function cxn__chozo_ruins__main_plaza__grapple_ledge__to__door_to_ruins_entrance() return ( true ) end
function cxn__chozo_ruins__main_plaza__grapple_ledge__to__locked_door_ledge() return ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_cbj4") > 0 and Tracker:ProviderCountForCode("setting_trick_ljump5") > 0 and Tracker:ProviderCountForCode("setting_trick_oob4") > 0 and Tracker:ProviderCountForCode("setting_trick_standable4") > 0 ) end
function cxn__chozo_ruins__main_plaza__grapple_ledge__to__morph_ball_door_to_piston_tunnel() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( ( tpl__use_grapple_beam() and ( Tracker:ProviderCountForCode("spacejump") > 0 or Tracker:ProviderCountForCode("setting_trick_movement3") > 0 or Tracker:ProviderCountForCode("setting_trick_standable2") > 0 ) ) or ( Tracker:ProviderCountForCode("spacejump") > 0 and ( ( Tracker:ProviderCountForCode("scan") > 0 and Tracker:ProviderCountForCode("setting_trick_dash1") > 0 ) or Tracker:ProviderCountForCode("setting_trick_standable3") > 0 ) ) or ( Tracker:ProviderCountForCode("setting_trick_standable3") > 0 and Tracker:ProviderCountForCode("setting_trick_ljump2") > 0 ) ) ) end
function cxn__chozo_ruins__main_plaza__grapple_ledge__to__pickup_missile_expansion_grapple_ledge() return ( true ) end
function cxn__chozo_ruins__main_plaza__locked_door_ledge__to__door_from_plaza_access() return Tracker:ProviderCountForCode("main_plaza_door") > 0 end
function cxn__chozo_ruins__main_plaza__locked_door_ledge__to__door_to_ruins_entrance() return ( true ) end
function cxn__chozo_ruins__main_plaza__locked_door_ledge__to__pickup_energy_tank() return ( true ) end
function doc__chozo_ruins__main_plaza__morph_ball_door_to_piston_tunnel() return dor__morph_ball_door() end
function cxn__chozo_ruins__main_plaza__morph_ball_door_to_piston_tunnel__to__door_to_ruins_entrance() return ( true ) end
function cxn__chozo_ruins__main_plaza__morph_ball_door_to_piston_tunnel__to__grapple_ledge() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( tpl__use_grapple_beam() or ( Tracker:ProviderCountForCode("scan") > 0 and ( ( Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("setting_trick_dash2") > 0 ) or ( Tracker:ProviderCountForCode("setting_trick_dash3") > 0 and Tracker:ProviderCountForCode("setting_trick_standable3") > 0 ) ) ) or ( Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("setting_trick_standable3") > 0 ) ) ) end
function cxn__chozo_ruins__main_plaza__pickup_energy_tank__to__locked_door_ledge() return ( true ) end
function cxn__chozo_ruins__main_plaza__pickup_missile_expansion_grapple_ledge__to__grapple_ledge() return ( true ) end
function cxn__chozo_ruins__main_plaza__pickup_missile_expansion_half_pipe__to__door_to_ruins_entrance() return ( true ) end
function cxn__chozo_ruins__main_plaza__pickup_missile_expansion_tree__to__door_to_ruins_entrance() return ( true ) end
function doc__chozo_ruins__map_station__door_to_ruined_gallery() return dor__normal_door() end
function cxn__chozo_ruins__map_station__door_to_ruined_gallery__to__map_station() return ( true ) end
function cxn__chozo_ruins__map_station__map_station__to__door_to_ruined_gallery() return ( true ) end
function doc__chozo_ruins__meditation_fountain__door_to_magma_pool() return dor__normal_door() end
function cxn__chozo_ruins__meditation_fountain__door_to_magma_pool__to__door_to_ruined_fountain() return ( true ) end
function doc__chozo_ruins__meditation_fountain__door_to_ruined_fountain() return dor__normal_door() end
function cxn__chozo_ruins__meditation_fountain__door_to_ruined_fountain__to__door_to_magma_pool() return ( true ) end
function doc__chozo_ruins__north_atrium__door_to_ruined_gallery() return dor__normal_door() end
function cxn__chozo_ruins__north_atrium__door_to_ruined_gallery__to__door_to_ruined_nursery() return ( true ) end
function doc__chozo_ruins__north_atrium__door_to_ruined_nursery() return dor__normal_door() end
function cxn__chozo_ruins__north_atrium__door_to_ruined_nursery__to__door_to_ruined_gallery() return ( true ) end
function doc__chozo_ruins__nursery_access__door_to_eyon_tunnel() return dor__normal_door() end
function cxn__chozo_ruins__nursery_access__door_to_eyon_tunnel__to__door_to_main_plaza() return ( true ) end
function doc__chozo_ruins__nursery_access__door_to_main_plaza() return dor__normal_door() end
function cxn__chozo_ruins__nursery_access__door_to_main_plaza__to__door_to_eyon_tunnel() return ( true ) end
function doc__chozo_ruins__piston_tunnel__morph_ball_door_to_main_plaza() return dor__morph_ball_door() end
function cxn__chozo_ruins__piston_tunnel__morph_ball_door_to_main_plaza__to__morph_ball_door_to_training_chamber() return ( Tracker:ProviderCountForCode("morphball") > 0 ) end
function doc__chozo_ruins__piston_tunnel__morph_ball_door_to_training_chamber() return dor__morph_ball_door() end
function cxn__chozo_ruins__piston_tunnel__morph_ball_door_to_training_chamber__to__morph_ball_door_to_main_plaza() return ( Tracker:ProviderCountForCode("morphball") > 0 ) end
function doc__chozo_ruins__plaza_access__door_to_main_plaza() return dor__normal_door() end
function cxn__chozo_ruins__plaza_access__door_to_main_plaza__to__door_to_vault() return ( true ) end
function doc__chozo_ruins__plaza_access__door_to_vault() return dor__normal_door() end
function cxn__chozo_ruins__plaza_access__door_to_vault__to__door_to_main_plaza() return ( true ) end
function doc__chozo_ruins__reflecting_pool__door_to_antechamber() return dor__missile_blast_shield() end
function cxn__chozo_ruins__reflecting_pool__door_to_antechamber__to__door_to_reflecting_pool_access() return ( true ) end
function cxn__chozo_ruins__reflecting_pool__door_to_antechamber__to__door_to_save_station_3() return ( true ) end
function doc__chozo_ruins__reflecting_pool__door_to_reflecting_pool_access() return dor__normal_door() end
function cxn__chozo_ruins__reflecting_pool__door_to_reflecting_pool_access__to__door_to_antechamber() return ( ( Tracker:ProviderCountForCode("morphball") > 0 and ( ( Tracker:ProviderCountForCode("event4") > 0 and ( Tracker:ProviderCountForCode("boost") > 0 or Tracker:ProviderCountForCode("setting_trick_movement3") > 0 ) ) or ( Tracker:ProviderCountForCode("bombs") > 0 and ( Tracker:ProviderCountForCode("setting_trick_cbj4") > 0 or Tracker:ProviderCountForCode("setting_trick_bsj4") > 0 ) and Tracker:ProviderCountForCode("setting_trick_standable3") > 0 ) ) ) or ( Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("setting_trick_sjump1") > 0 and Tracker:ProviderCountForCode("setting_trick_standable1") > 0 ) ) end
function cxn__chozo_ruins__reflecting_pool__door_to_reflecting_pool_access__to__event__drain_water() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("bombs") > 0 or ( Tracker:ProviderCountForCode("powerbomb") > 0 and Tracker:ProviderCountForCode("setting_trick_knowledge1") > 0 ) ) ) end
function doc__chozo_ruins__reflecting_pool__door_to_save_station_3() return dor__missile_blast_shield() end
function cxn__chozo_ruins__reflecting_pool__door_to_save_station_3__to__door_to_antechamber() return ( true ) end
function cxn__chozo_ruins__reflecting_pool__door_to_save_station_3__to__door_to_transport_access_south() return ( true ) end
function doc__chozo_ruins__reflecting_pool__door_to_transport_access_south() return dor__ice_door() end
function cxn__chozo_ruins__reflecting_pool__door_to_transport_access_south__to__door_to_save_station_3() return ( true ) end
function cxn__chozo_ruins__reflecting_pool__event__drain_water__to__door_to_reflecting_pool_access() return ( true ) end
function doc__chozo_ruins__reflecting_pool_access__door_to_hall_of_the_elders() return dor__normal_door() end
function cxn__chozo_ruins__reflecting_pool_access__door_to_hall_of_the_elders__to__door_to_reflecting_pool() return ( true ) end
function doc__chozo_ruins__reflecting_pool_access__door_to_reflecting_pool() return dor__normal_door() end
function cxn__chozo_ruins__reflecting_pool_access__door_to_reflecting_pool__to__door_to_hall_of_the_elders() return ( true ) end
function doc__chozo_ruins__ruined_fountain__door_to_arboretum_access() return dor__normal_door() end
function cxn__chozo_ruins__ruined_fountain__door_to_arboretum_access__to__door_to_meditation_fountain() return ( true ) end
function doc__chozo_ruins__ruined_fountain__door_to_meditation_fountain() return dor__normal_door() end
function cxn__chozo_ruins__ruined_fountain__door_to_meditation_fountain__to__door_to_arboretum_access() return ( true ) end
function cxn__chozo_ruins__ruined_fountain__door_to_meditation_fountain__to__door_to_ruined_fountain_access() return ( true ) end
function cxn__chozo_ruins__ruined_fountain__door_to_meditation_fountain__to__pickup_missile_expansion() return ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("spider") > 0 and ( Tracker:ProviderCountForCode("event7") > 0 or ( Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("setting_trick_standable2") > 0 ) or ( Tracker:ProviderCountForCode("setting_trick_standable3") > 0 and Tracker:ProviderCountForCode("setting_trick_dash3") > 0 ) ) ) end
function doc__chozo_ruins__ruined_fountain__door_to_ruined_fountain_access() return dor__normal_door() end
function cxn__chozo_ruins__ruined_fountain__door_to_ruined_fountain_access__to__door_to_meditation_fountain() return ( true ) end
function cxn__chozo_ruins__ruined_fountain__pickup_missile_expansion__to__door_to_meditation_fountain() return ( true ) end
function doc__chozo_ruins__ruined_fountain_access__door_to_main_plaza() return dor__normal_door() end
function cxn__chozo_ruins__ruined_fountain_access__door_to_main_plaza__to__door_to_ruined_fountain() return ( Tracker:ProviderCountForCode("morphball") > 0 ) end
function doc__chozo_ruins__ruined_fountain_access__door_to_ruined_fountain() return dor__normal_door() end
function cxn__chozo_ruins__ruined_fountain_access__door_to_ruined_fountain__to__door_to_main_plaza() return ( Tracker:ProviderCountForCode("morphball") > 0 ) end
function doc__chozo_ruins__ruined_gallery__door_to_map_station() return dor__missile_blast_shield() end
function cxn__chozo_ruins__ruined_gallery__door_to_map_station__to__door_to_north_atrium() return ( true ) end
function doc__chozo_ruins__ruined_gallery__door_to_north_atrium() return dor__normal_door() end
function cxn__chozo_ruins__ruined_gallery__door_to_north_atrium__to__door_to_map_station() return ( true ) end
function cxn__chozo_ruins__ruined_gallery__door_to_north_atrium__to__door_to_totem_access() return ( true ) end
function cxn__chozo_ruins__ruined_gallery__door_to_north_atrium__to__pickup_missile_expansion_2() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("bombs") > 0 or ( Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("setting_trick_wallboost3") > 0 ) ) ) end
function cxn__chozo_ruins__ruined_gallery__door_to_north_atrium__to__pickup_missile_expansion() return ( Tracker:ProviderCountForCode("missile") > 0 and tpl__shoot_any_beam() ) end
function doc__chozo_ruins__ruined_gallery__door_to_totem_access() return dor__normal_door() end
function cxn__chozo_ruins__ruined_gallery__door_to_totem_access__to__door_to_north_atrium() return ( true ) end
function cxn__chozo_ruins__ruined_gallery__pickup_missile_expansion_2__to__door_to_north_atrium() return ( true ) end
function cxn__chozo_ruins__ruined_gallery__pickup_missile_expansion__to__door_to_north_atrium() return ( true ) end
function doc__chozo_ruins__ruined_nursery__door_to_eyon_tunnel() return dor__normal_door() end
function cxn__chozo_ruins__ruined_nursery__door_to_eyon_tunnel__to__door_to_north_atrium() return ( true ) end
function cxn__chozo_ruins__ruined_nursery__door_to_eyon_tunnel__to__pickup_missile_expansion() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("bombs") > 0 or ( Tracker:ProviderCountForCode("setting_trick_movement4") > 0 and ( Tracker:ProviderCountForCode("setting_trick_standable5") > 0 or ( Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("setting_trick_standable4") > 0 ) ) ) ) ) end
function doc__chozo_ruins__ruined_nursery__door_to_north_atrium() return dor__normal_door() end
function cxn__chozo_ruins__ruined_nursery__door_to_north_atrium__to__door_to_eyon_tunnel() return ( true ) end
function cxn__chozo_ruins__ruined_nursery__door_to_north_atrium__to__door_to_save_station_1() return ( true ) end
function doc__chozo_ruins__ruined_nursery__door_to_save_station_1() return dor__normal_door() end
function cxn__chozo_ruins__ruined_nursery__door_to_save_station_1__to__door_to_north_atrium() return ( true ) end
function cxn__chozo_ruins__ruined_nursery__pickup_missile_expansion__to__door_to_eyon_tunnel() return ( true ) end
function doc__chozo_ruins__ruined_shrine__door_to_ruined_shrine_access() return dor__normal_door() end
function cxn__chozo_ruins__ruined_shrine__door_to_ruined_shrine_access__to__door_to_tower_of_light_access() return ( ( Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("spider") > 0 ) or ( Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("setting_trick_standable1") > 0 ) or ( Tracker:ProviderCountForCode("scan") > 0 and Tracker:ProviderCountForCode("setting_trick_dash3") > 0 and Tracker:ProviderCountForCode("setting_trick_standable3") > 0 ) or ( Tracker:ProviderCountForCode("setting_trick_standable3") > 0 and Tracker:ProviderCountForCode("setting_trick_ljump2") > 0 ) ) end
function cxn__chozo_ruins__ruined_shrine__door_to_ruined_shrine_access__to__pickup_missile_expansion_half_pipe() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("boost") > 0 or ( Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("setting_trick_standable1") > 0 ) or ( Tracker:ProviderCountForCode("setting_trick_ljump2") > 0 and Tracker:ProviderCountForCode("setting_trick_standable3") > 0 ) or ( Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_cbj5") > 0 ) ) ) end
function cxn__chozo_ruins__ruined_shrine__door_to_ruined_shrine_access__to__pickup_morph_ball() return ( Tracker:ProviderCountForCode("scan") > 0 and Tracker:ProviderCountForCode("setting_trick_dash2") > 0 ) end
function cxn__chozo_ruins__ruined_shrine__door_to_ruined_shrine_access__to__pit() return ( true ) end
function doc__chozo_ruins__ruined_shrine__door_to_tower_of_light_access() return dor__wave_door() end
function cxn__chozo_ruins__ruined_shrine__door_to_tower_of_light_access__to__door_to_ruined_shrine_access() return ( Tracker:ProviderCountForCode("scan") > 0 and Tracker:ProviderCountForCode("setting_trick_dash2") > 0 ) end
function cxn__chozo_ruins__ruined_shrine__door_to_tower_of_light_access__to__pickup_missile_expansion_half_pipe() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( ( Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("setting_trick_rjump1") > 0 ) or ( Tracker:ProviderCountForCode("scan") > 0 and Tracker:ProviderCountForCode("setting_trick_dash2") > 0 ) ) ) end
function cxn__chozo_ruins__ruined_shrine__door_to_tower_of_light_access__to__pickup_morph_ball() return ( true ) end
function cxn__chozo_ruins__ruined_shrine__door_to_tower_of_light_access__to__pit() return ( true ) end
function cxn__chozo_ruins__ruined_shrine__event__beetle_battle__to__pit() return ( true ) end
function cxn__chozo_ruins__ruined_shrine__event__ruined_shrine_item_morph_ball__to__pit() return ( true ) end
function cxn__chozo_ruins__ruined_shrine__pickup_missile_expansion_bomb_wall__to__pit() return ( true ) end
function cxn__chozo_ruins__ruined_shrine__pickup_missile_expansion_half_pipe__to__door_to_ruined_shrine_access() return ( true ) end
function cxn__chozo_ruins__ruined_shrine__pickup_morph_ball__to__event__ruined_shrine_item_morph_ball() return ( true ) end
function cxn__chozo_ruins__ruined_shrine__pit__to__door_to_ruined_shrine_access() return ( Tracker:ProviderCountForCode("spacejump") > 0 or ( Tracker:ProviderCountForCode("setting_trick_standable2") > 0 and Tracker:ProviderCountForCode("setting_trick_dash2") > 0 and ( Tracker:ProviderCountForCode("scan") > 0 or Tracker:ProviderCountForCode("event52") == 0 ) ) or ( Tracker:ProviderCountForCode("setting_trick_ljump2") > 0 and Tracker:ProviderCountForCode("setting_trick_standable2") > 0 ) or ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("event53") > 0 or ( Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj1") > 0 ) ) ) ) end
function cxn__chozo_ruins__ruined_shrine__pit__to__event__beetle_battle() return ( tpl__shoot_any_beam() or ( Tracker:ProviderCountForCode("setting_trick_combat2") > 0 and Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("bombs") > 0 or Tracker:ProviderCountForCode("powerbomb") > 0 ) ) ) end
function cxn__chozo_ruins__ruined_shrine__pit__to__pickup_missile_expansion_bomb_wall() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("bombs") > 0 or ( Tracker:ProviderCountForCode("powerbomb") > 0 and Tracker:ProviderCountForCode("setting_trick_knowledge1") > 0 ) ) ) end
function cxn__chozo_ruins__ruined_shrine__pit__to__pickup_morph_ball() return ( Tracker:ProviderCountForCode("spacejump") > 0 or ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj1") > 0 ) or Tracker:ProviderCountForCode("event52") > 0 or ( Tracker:ProviderCountForCode("setting_trick_standable2") > 0 and ( Tracker:ProviderCountForCode("setting_trick_dash3") > 0 or ( Tracker:ProviderCountForCode("scan") > 0 and Tracker:ProviderCountForCode("setting_trick_dash2") > 0 ) ) ) ) end
function doc__chozo_ruins__ruined_shrine_access__door_to_main_plaza() return dor__normal_door() end
function cxn__chozo_ruins__ruined_shrine_access__door_to_main_plaza__to__door_to_ruined_shrine() return ( true ) end
function doc__chozo_ruins__ruined_shrine_access__door_to_ruined_shrine() return dor__normal_door() end
function cxn__chozo_ruins__ruined_shrine_access__door_to_ruined_shrine__to__door_to_main_plaza() return ( true ) end
function doc__chozo_ruins__ruins_entrance__door_to_main_plaza() return dor__normal_door() end
function cxn__chozo_ruins__ruins_entrance__door_to_main_plaza__to__door_to_transport_to_tallon_overworld_north() return ( true ) end
function doc__chozo_ruins__ruins_entrance__door_to_transport_to_tallon_overworld_north() return dor__normal_door() end
function cxn__chozo_ruins__ruins_entrance__door_to_transport_to_tallon_overworld_north__to__door_to_main_plaza() return ( true ) end
function doc__chozo_ruins__save_station_1__door_to_ruined_nursery() return dor__normal_door() end
function cxn__chozo_ruins__save_station_1__door_to_ruined_nursery__to__save_station() return ( true ) end
function cxn__chozo_ruins__save_station_1__save_station__to__door_to_ruined_nursery() return ( true ) end
function doc__chozo_ruins__save_station_2__door_to_gathering_hall() return dor__normal_door() end
function cxn__chozo_ruins__save_station_2__door_to_gathering_hall__to__save_station() return ( true ) end
function cxn__chozo_ruins__save_station_2__save_station__to__door_to_gathering_hall() return ( true ) end
function doc__chozo_ruins__save_station_3__door_to_reflecting_pool() return dor__normal_door() end
function cxn__chozo_ruins__save_station_3__door_to_reflecting_pool__to__save_station() return ( true ) end
function doc__chozo_ruins__save_station_3__door_to_transport_to_tallon_overworld_east() return dor__normal_door() end
function cxn__chozo_ruins__save_station_3__door_to_transport_to_tallon_overworld_east__to__save_station() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("bombs") > 0 or ( Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("setting_trick_wallboost4") > 0 ) ) ) end
function cxn__chozo_ruins__save_station_3__save_station__to__door_to_reflecting_pool() return ( true ) end
function cxn__chozo_ruins__save_station_3__save_station__to__door_to_transport_to_tallon_overworld_east() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("bombs") > 0 or ( Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("setting_trick_standable2") > 0 and Tracker:ProviderCountForCode("setting_trick_movement3") > 0 ) or ( Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("setting_trick_wallboost5") > 0 ) ) ) end
function doc__chozo_ruins__sun_tower__door_to_sun_tower_access() return dor__normal_door() end
function cxn__chozo_ruins__sun_tower__door_to_sun_tower_access__to__event__activate_sunchamber_ghosts_from_top() return ( Tracker:ProviderCountForCode("event7") > 0 ) end
function doc__chozo_ruins__sun_tower__door_to_transport_to_magmoor_caverns_north() return dor__normal_door() end
function cxn__chozo_ruins__sun_tower__door_to_transport_to_magmoor_caverns_north__to__door_to_sun_tower_access() return ( Tracker:ProviderCountForCode("event5") > 0 and Tracker:ProviderCountForCode("event6") > 0 and Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("spider") > 0 ) end
function cxn__chozo_ruins__sun_tower__door_to_transport_to_magmoor_caverns_north__to__event__activate_sunchamber_ghosts_from_bottom() return ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("spider") > 0 and Tracker:ProviderCountForCode("event5") > 0 and Tracker:ProviderCountForCode("event7") > 0 ) end
function cxn__chozo_ruins__sun_tower__door_to_transport_to_magmoor_caverns_north__to__event__unlock_spider_track() return ( tpl__shoot_super_missile() and Tracker:ProviderCountForCode("scan") > 0 ) end
function cxn__chozo_ruins__sun_tower__event__activate_sunchamber_ghosts_from_bottom__to__door_to_sun_tower_access() return ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("spider") > 0 ) end
function cxn__chozo_ruins__sun_tower__event__activate_sunchamber_ghosts_from_bottom__to__door_to_transport_to_magmoor_caverns_north() return ( true ) end
function cxn__chozo_ruins__sun_tower__event__activate_sunchamber_ghosts_from_top__to__door_to_sun_tower_access() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( ( Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_cbj2") > 0 and Tracker:ProviderCountForCode("damage") > 0 ) or ( Tracker:ProviderCountForCode("spider") > 0 ) ) and Tracker:ProviderCountForCode("setting_trick_knowledge2") > 0 ) end
function cxn__chozo_ruins__sun_tower__event__activate_sunchamber_ghosts_from_top__to__door_to_transport_to_magmoor_caverns_north() return ( true ) end
function cxn__chozo_ruins__sun_tower__event__unlock_spider_track__to__door_to_transport_to_magmoor_caverns_north() return ( true ) end
function doc__chozo_ruins__sun_tower_access__door_to_sun_tower() return dor__normal_door() end
function cxn__chozo_ruins__sun_tower_access__door_to_sun_tower__to__door_to_sunchamber() return ( true ) end
function doc__chozo_ruins__sun_tower_access__door_to_sunchamber() return dor__normal_door() end
function cxn__chozo_ruins__sun_tower_access__door_to_sunchamber__to__door_to_sun_tower() return ( true ) end
function cxn__chozo_ruins__sunchamber__before_fight_back__to__event__flaahgra() return ( Tracker:ProviderCountForCode("setting_trick_knowledge1") > 0 and Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("bombs") > 0 or Tracker:ProviderCountForCode("powerbomb") > 0 ) and ( ( Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("setting_trick_ljump1") > 0 ) or Tracker:ProviderCountForCode("setting_trick_dash3") > 0 ) ) end
function cxn__chozo_ruins__sunchamber__before_fight_front__to__door_to_sun_tower_access() return ( Tracker:ProviderCountForCode("event7") > 0 or Tracker:ProviderCountForCode("event8") > 0 ) end
function cxn__chozo_ruins__sunchamber__before_fight_front__to__door_to_sunchamber_access() return Tracker:ProviderCountForCode("event8") > 0 end
function cxn__chozo_ruins__sunchamber__before_fight_front__to__event__chozo_ghosts() return ( ( Tracker:ProviderCountForCode("event6") > 0 and ( Tracker:ProviderCountForCode("charge") > 0 or Tracker:ProviderCountForCode("setting_trick_combat2") > 0 ) ) and ( tpl__shoot_power_beam() and ( Tracker:ProviderCountForCode("spacejump") > 0 or Tracker:ProviderCountForCode("setting_trick_ljump1") > 0 ) ) ) end
function cxn__chozo_ruins__sunchamber__before_fight_front__to__event__flaahgra() return ( ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("bombs") > 0 or ( Tracker:ProviderCountForCode("setting_trick_combat1") > 0 and Tracker:ProviderCountForCode("powerbomb") > 0 ) ) and ( ( Tracker:ProviderCountForCode("missile") > 0 and tpl__shoot_any_beam() ) or tpl__shoot_power_beam() or ( Tracker:ProviderCountForCode("setting_trick_ljump1") > 0 and Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("setting_trick_combat1") > 0 ) or ( Tracker:ProviderCountForCode("setting_trick_dash3") > 0 and Tracker:ProviderCountForCode("setting_trick_combat2") > 0 ) ) and ( tpl__shoot_power_beam() or ( tpl__shoot_any_beam() and Tracker:ProviderCountForCode("missile") > 0 ) ) ) or ( tpl__shoot_wave_beam() and Tracker:ProviderCountForCode("wavebuster") > 0 and Tracker:ProviderCountForCode("missile") > 0 and Tracker:ProviderCountForCode("setting_trick_combat3") > 0 and Tracker:ProviderCountForCode("charge") > 0 ) ) end
function doc__chozo_ruins__sunchamber__door_to_sun_tower_access() return dor__normal_door() end
function cxn__chozo_ruins__sunchamber__door_to_sun_tower_access__to__before_fight_back() return ( true ) end
function cxn__chozo_ruins__sunchamber__door_to_sun_tower_access__to__before_fight_front() return ( true ) end
function doc__chozo_ruins__sunchamber__door_to_sunchamber_access() return dor__normal_door() end
function cxn__chozo_ruins__sunchamber__door_to_sunchamber_access__to__before_fight_front() return ( true ) end
function cxn__chozo_ruins__sunchamber__event__chozo_ghosts__to__pickup_artifact_of_wild() return ( true ) end
function cxn__chozo_ruins__sunchamber__event__flaahgra__to__pickup_varia_suit() return ( true ) end
function cxn__chozo_ruins__sunchamber__pickup_artifact_of_wild__to__before_fight_front() return ( true ) end
function cxn__chozo_ruins__sunchamber__pickup_varia_suit__to__before_fight_front() return ( true ) end
function doc__chozo_ruins__sunchamber_access__door_to_sunchamber() return dor__normal_door() end
function cxn__chozo_ruins__sunchamber_access__door_to_sunchamber__to__door_to_sunchamber_lobby() return ( true ) end
function doc__chozo_ruins__sunchamber_access__door_to_sunchamber_lobby() return dor__normal_door() end
function cxn__chozo_ruins__sunchamber_access__door_to_sunchamber_lobby__to__door_to_sunchamber() return ( Tracker:ProviderCountForCode("event7") == 0 or ( Tracker:ProviderCountForCode("event7") > 0 and Tracker:ProviderCountForCode("event8") > 0 ) ) end
function doc__chozo_ruins__sunchamber_lobby__door_to_arboretum() return dor__normal_door() end
function cxn__chozo_ruins__sunchamber_lobby__door_to_arboretum__to__door_to_sunchamber_access() return ( true ) end
function doc__chozo_ruins__sunchamber_lobby__door_to_sunchamber_access() return dor__normal_door() end
function cxn__chozo_ruins__sunchamber_lobby__door_to_sunchamber_access__to__door_to_arboretum() return ( true ) end
function doc__chozo_ruins__totem_access__door_to_hive_totem() return dor__normal_door() end
function cxn__chozo_ruins__totem_access__door_to_hive_totem__to__door_to_ruined_gallery() return ( true ) end
function doc__chozo_ruins__totem_access__door_to_ruined_gallery() return dor__normal_door() end
function cxn__chozo_ruins__totem_access__door_to_ruined_gallery__to__door_to_hive_totem() return ( true ) end
function doc__chozo_ruins__tower_chamber__door_to_tower_of_light() return dor__wave_door() end
function cxn__chozo_ruins__tower_chamber__door_to_tower_of_light__to__pickup_artifact_of_lifegiver() return ( true ) end
function cxn__chozo_ruins__tower_chamber__pickup_artifact_of_lifegiver__to__door_to_tower_of_light() return ( true ) end
function doc__chozo_ruins__tower_of_light__door_to_tower_chamber() return dor__wave_door() end
function cxn__chozo_ruins__tower_of_light__door_to_tower_chamber__to__door_to_tower_of_light_access() return ( true ) end
function doc__chozo_ruins__tower_of_light__door_to_tower_of_light_access() return dor__wave_door() end
function cxn__chozo_ruins__tower_of_light__door_to_tower_of_light_access__to__door_to_tower_chamber() return ( ( Tracker:ProviderCountForCode("gravitysuit") > 0 and ( Tracker:ProviderCountForCode("spacejump") > 0 or ( Tracker:ProviderCountForCode("morphball") > 0 and ( ( Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj1") > 0 ) or ( Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("setting_trick_wallboost4") > 0 ) ) ) ) ) or ( Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("setting_trick_sjump2") > 0 and Tracker:ProviderCountForCode("setting_trick_underwatermovement1") > 0 ) or ( Tracker:ProviderCountForCode("gravitysuit") == 0 and Tracker:ProviderCountForCode("setting_trick_sjump3") > 0 and Tracker:ProviderCountForCode("nogravity") > 0 and Tracker:ProviderCountForCode("setting_trick_underwatermovement2") > 0 ) ) end
function cxn__chozo_ruins__tower_of_light__door_to_tower_of_light_access__to__pickup_wavebuster() return ( ( Tracker:ProviderCountForCode("missile") > 0 and tpl__shoot_any_beam() and ( Tracker:ProviderCountForCode("spacejump") > 0 or ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj4") > 0 ) ) ) or ( Tracker:ProviderCountForCode("spacejump") > 0 and ( ( ( Tracker:ProviderCountForCode("setting_trick_dash2") > 0 and Tracker:ProviderCountForCode("setting_trick_standable1") > 0 ) or ( Tracker:ProviderCountForCode("setting_trick_dash2") > 0 and Tracker:ProviderCountForCode("setting_trick_ljump2") > 0 and Tracker:ProviderCountForCode("setting_trick_standable2") > 0 ) or ( Tracker:ProviderCountForCode("setting_trick_dash2") > 0 and Tracker:ProviderCountForCode("setting_trick_sjump1") > 0 and Tracker:ProviderCountForCode("setting_trick_standable3") > 0 ) or ( Tracker:ProviderCountForCode("setting_trick_rjump3") > 0 and Tracker:ProviderCountForCode("setting_trick_standable1") > 0 ) ) ) ) ) end
function cxn__chozo_ruins__tower_of_light__pickup_wavebuster__to__door_to_tower_of_light_access() return ( true ) end
function doc__chozo_ruins__tower_of_light_access__door_to_ruined_shrine() return dor__wave_door() end
function cxn__chozo_ruins__tower_of_light_access__door_to_ruined_shrine__to__door_to_tower_of_light() return ( true ) end
function doc__chozo_ruins__tower_of_light_access__door_to_tower_of_light() return dor__wave_door() end
function cxn__chozo_ruins__tower_of_light_access__door_to_tower_of_light__to__door_to_ruined_shrine() return ( true ) end
function doc__chozo_ruins__training_chamber__door_to_training_chamber_access() return dor__wave_door() end
function cxn__chozo_ruins__training_chamber__door_to_training_chamber_access__to__event__chozo_ghosts() return tpl__shoot_power_beam() end
function cxn__chozo_ruins__training_chamber__door_to_training_chamber_access__to__event__unlock_morph_track() return ( Tracker:ProviderCountForCode("event11") > 0 and Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 ) end
function cxn__chozo_ruins__training_chamber__door_to_training_chamber_access__to__morph_ball_door_to_piston_tunnel() return Tracker:ProviderCountForCode("event12") > 0 end
function cxn__chozo_ruins__training_chamber__door_to_training_chamber_access__to__pickup_energy_tank() return ( Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("spider") > 0 and Tracker:ProviderCountForCode("event11") > 0 ) end
function cxn__chozo_ruins__training_chamber__event__chozo_ghosts__to__door_to_training_chamber_access() return ( true ) end
function cxn__chozo_ruins__training_chamber__event__unlock_morph_track__to__door_to_training_chamber_access() return ( true ) end
function doc__chozo_ruins__training_chamber__morph_ball_door_to_piston_tunnel() return dor__morph_ball_door() end
function cxn__chozo_ruins__training_chamber__morph_ball_door_to_piston_tunnel__to__door_to_training_chamber_access() return Tracker:ProviderCountForCode("event12") > 0 end
function cxn__chozo_ruins__training_chamber__pickup_energy_tank__to__door_to_training_chamber_access() return ( ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("spider") > 0 ) ) end
function doc__chozo_ruins__training_chamber_access__door_to_magma_pool() return dor__wave_door() end
function cxn__chozo_ruins__training_chamber_access__door_to_magma_pool__to__door_to_training_chamber() return ( true ) end
function doc__chozo_ruins__training_chamber_access__door_to_training_chamber() return dor__wave_door() end
function cxn__chozo_ruins__training_chamber_access__door_to_training_chamber__to__door_to_magma_pool() return ( true ) end
function cxn__chozo_ruins__training_chamber_access__door_to_training_chamber__to__pickup_missile_expansion() return Tracker:ProviderCountForCode("morphball") > 0 end
function cxn__chozo_ruins__training_chamber_access__pickup_missile_expansion__to__door_to_training_chamber() return ( true ) end
function doc__chozo_ruins__transport_access_north__door_to_hive_totem() return dor__missile_blast_shield() end
function cxn__chozo_ruins__transport_access_north__door_to_hive_totem__to__door_to_transport_to_magmoor_caverns_north() return Tracker:ProviderCountForCode("morphball") > 0 end
function cxn__chozo_ruins__transport_access_north__door_to_hive_totem__to__pickup_energy_tank() return ( true ) end
function doc__chozo_ruins__transport_access_north__door_to_transport_to_magmoor_caverns_north() return dor__normal_door() end
function cxn__chozo_ruins__transport_access_north__door_to_transport_to_magmoor_caverns_north__to__door_to_hive_totem() return ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 ) end
function cxn__chozo_ruins__transport_access_north__pickup_energy_tank__to__door_to_hive_totem() return ( true ) end
function doc__chozo_ruins__transport_access_south__door_to_reflecting_pool() return dor__ice_door() end
function cxn__chozo_ruins__transport_access_south__door_to_reflecting_pool__to__door_to_transport_to_tallon_overworld_south() return ( true ) end
function doc__chozo_ruins__transport_access_south__door_to_transport_to_tallon_overworld_south() return dor__normal_door() end
function cxn__chozo_ruins__transport_access_south__door_to_transport_to_tallon_overworld_south__to__door_to_reflecting_pool() return ( true ) end
function doc__chozo_ruins__transport_to_magmoor_caverns_north__door_to_sun_tower() return dor__normal_door() end
function cxn__chozo_ruins__transport_to_magmoor_caverns_north__door_to_sun_tower__to__door_to_transport_access_north() return ( true ) end
function doc__chozo_ruins__transport_to_magmoor_caverns_north__door_to_transport_access_north() return dor__normal_door() end
function cxn__chozo_ruins__transport_to_magmoor_caverns_north__door_to_transport_access_north__to__door_to_sun_tower() return ( true ) end
function cxn__chozo_ruins__transport_to_magmoor_caverns_north__door_to_transport_access_north__to__door_to_vault_access() return ( true ) end
function cxn__chozo_ruins__transport_to_magmoor_caverns_north__door_to_transport_access_north__to__elevator_to_magmoor_caverns__transport_to_chozo_ruins_north() return ( true ) end
function doc__chozo_ruins__transport_to_magmoor_caverns_north__door_to_vault_access() return dor__normal_door() end
function cxn__chozo_ruins__transport_to_magmoor_caverns_north__door_to_vault_access__to__door_to_transport_access_north() return ( true ) end
function cxn__chozo_ruins__transport_to_magmoor_caverns_north__elevator_to_magmoor_caverns__transport_to_chozo_ruins_north__to__door_to_transport_access_north() return ( true ) end
function doc__chozo_ruins__transport_to_tallon_overworld_east__door_to_save_station_3() return dor__normal_door() end
function cxn__chozo_ruins__transport_to_tallon_overworld_east__door_to_save_station_3__to__elevator_to_tallon_overworld__transport_to_chozo_ruins_east() return ( true ) end
function cxn__chozo_ruins__transport_to_tallon_overworld_east__elevator_to_tallon_overworld__transport_to_chozo_ruins_east__to__door_to_save_station_3() return ( true ) end
function doc__chozo_ruins__transport_to_tallon_overworld_north__door_to_ruins_entrance() return dor__normal_door() end
function cxn__chozo_ruins__transport_to_tallon_overworld_north__door_to_ruins_entrance__to__elevator_to_tallon_overworld__transport_to_chozo_ruins_west() return ( true ) end
function cxn__chozo_ruins__transport_to_tallon_overworld_north__elevator_to_tallon_overworld__transport_to_chozo_ruins_west__to__door_to_ruins_entrance() return ( true ) end
function doc__chozo_ruins__transport_to_tallon_overworld_south__door_to_transport_access_south() return dor__normal_door() end
function cxn__chozo_ruins__transport_to_tallon_overworld_south__door_to_transport_access_south__to__elevator_to_tallon_overworld__transport_to_chozo_ruins_south() return ( true ) end
function cxn__chozo_ruins__transport_to_tallon_overworld_south__elevator_to_tallon_overworld__transport_to_chozo_ruins_south__to__door_to_transport_access_south() return ( true ) end
function doc__chozo_ruins__vault__door_to_plaza_access() return dor__normal_door() end
function cxn__chozo_ruins__vault__door_to_plaza_access__to__door_to_vault_access() return ( true ) end
function doc__chozo_ruins__vault__door_to_vault_access() return dor__normal_door() end
function cxn__chozo_ruins__vault__door_to_vault_access__to__door_to_plaza_access() return ( true ) end
function cxn__chozo_ruins__vault__door_to_vault_access__to__pickup_missile_expansion() return ( ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("bombs") > 0 or ( Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("powerbomb") > 0 and Tracker:ProviderCountForCode("setting_trick_standable3") > 0 and Tracker:ProviderCountForCode("setting_trick_knowledge1") > 0 ) ) ) ) end
function cxn__chozo_ruins__vault__pickup_missile_expansion__to__door_to_vault_access() return ( true ) end
function doc__chozo_ruins__vault_access__door_to_transport_to_magmoor_caverns_north() return dor__normal_door() end
function cxn__chozo_ruins__vault_access__door_to_transport_to_magmoor_caverns_north__to__door_to_vault() return ( Tracker:ProviderCountForCode("morphball") > 0 ) end
function doc__chozo_ruins__vault_access__door_to_vault() return dor__normal_door() end
function cxn__chozo_ruins__vault_access__door_to_vault__to__door_to_transport_to_magmoor_caverns_north() return ( Tracker:ProviderCountForCode("morphball") > 0 ) end
function cxn__chozo_ruins__watery_hall__behind_gate__to__door_to_dynamo_access() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("bombs") > 0 or ( Tracker:ProviderCountForCode("powerbomb") > 0 and Tracker:ProviderCountForCode("setting_trick_knowledge1") > 0 ) or ( Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("setting_trick_oob3") > 0 and Tracker:ProviderCountForCode("setting_trick_clipthruobjects4") > 0 and Tracker:ProviderCountForCode("setting_trick_standable3") > 0 and ( Tracker:ProviderCountForCode("spacejump") > 0 or ( Tracker:ProviderCountForCode("setting_trick_movement4") > 0 ) ) ) ) ) end
function cxn__chozo_ruins__watery_hall__behind_gate__to__door_to_watery_hall_access() return ( Tracker:ProviderCountForCode("event10") > 0 or ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("setting_trick_clipthruobjects1") > 0 ) ) end
function cxn__chozo_ruins__watery_hall__behind_gate__to__pickup_charge_beam() return ( true ) end
function doc__chozo_ruins__watery_hall__door_to_dynamo_access() return dor__missile_blast_shield() end
function cxn__chozo_ruins__watery_hall__door_to_dynamo_access__to__behind_gate() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("bombs") > 0 or ( Tracker:ProviderCountForCode("powerbomb") > 0 and Tracker:ProviderCountForCode("setting_trick_knowledge1") > 0 ) ) ) end
function doc__chozo_ruins__watery_hall__door_to_watery_hall_access() return dor__normal_door() end
function cxn__chozo_ruins__watery_hall__door_to_watery_hall_access__to__behind_gate() return Tracker:ProviderCountForCode("event10") > 0 end
function cxn__chozo_ruins__watery_hall__door_to_watery_hall_access__to__event__open_gate() return Tracker:ProviderCountForCode("scan") > 0 end
function cxn__chozo_ruins__watery_hall__door_to_watery_hall_access__to__pickup_missile_expansion() return ( ( Tracker:ProviderCountForCode("ruinswater") > 0 or Tracker:ProviderCountForCode("event7") > 0 or ( Tracker:ProviderCountForCode("gravitysuit") > 0 and Tracker:ProviderCountForCode("ruinswater") > 0 ) ) and ( ( Tracker:ProviderCountForCode("gravitysuit") > 0 and Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj1") > 0 and Tracker:ProviderCountForCode("ruinswater") > 0 ) or ( Tracker:ProviderCountForCode("gravitysuit") == 0 and Tracker:ProviderCountForCode("setting_trick_sjump3") > 0 and Tracker:ProviderCountForCode("nogravity") > 0 and Tracker:ProviderCountForCode("setting_trick_underwatermovement3") > 0 ) or ( Tracker:ProviderCountForCode("spacejump") > 0 and ( Tracker:ProviderCountForCode("gravitysuit") > 0 or ( Tracker:ProviderCountForCode("setting_trick_sjump1") > 0 and Tracker:ProviderCountForCode("setting_trick_underwatermovement1") > 0 ) ) ) or ( Tracker:ProviderCountForCode("gravitysuit") > 0 and Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("setting_trick_wallboost1") > 0 and ( ( Tracker:ProviderCountForCode("setting_trick_movement2") > 0 and Tracker:ProviderCountForCode("ruinswater") > 0 ) or ( Tracker:ProviderCountForCode("setting_trick_movement4") > 0 and Tracker:ProviderCountForCode("ruinswater") > 0 ) ) ) ) ) end
function cxn__chozo_ruins__watery_hall__event__open_gate__to__door_to_watery_hall_access() return ( true ) end
function cxn__chozo_ruins__watery_hall__pickup_charge_beam__to__behind_gate() return ( true ) end
function cxn__chozo_ruins__watery_hall__pickup_missile_expansion__to__door_to_watery_hall_access() return ( Tracker:ProviderCountForCode("event7") > 0 or Tracker:ProviderCountForCode("ruinswater") > 0 or ( Tracker:ProviderCountForCode("gravitysuit") > 0 and Tracker:ProviderCountForCode("ruinswater") > 0 ) ) end
function doc__chozo_ruins__watery_hall_access__door_to_gathering_hall() return dor__normal_door() end
function cxn__chozo_ruins__watery_hall_access__door_to_gathering_hall__to__door_to_watery_hall() return ( true ) end
function cxn__chozo_ruins__watery_hall_access__door_to_gathering_hall__to__pickup_missile_expansion() return ( ( Tracker:ProviderCountForCode("missile") > 0 and tpl__shoot_any_beam() ) or ( tpl__shoot_power_beam() and Tracker:ProviderCountForCode("charge") > 0 and Tracker:ProviderCountForCode("setting_trick_knowledge1") > 0 ) ) end
function doc__chozo_ruins__watery_hall_access__door_to_watery_hall() return dor__missile_blast_shield() end
function cxn__chozo_ruins__watery_hall_access__door_to_watery_hall__to__door_to_gathering_hall() return ( true ) end
function cxn__chozo_ruins__watery_hall_access__pickup_missile_expansion__to__door_to_gathering_hall() return ( true ) end
function doc__chozo_ruins__west_furnace_access__door_to_energy_core() return dor__normal_door() end
function cxn__chozo_ruins__west_furnace_access__door_to_energy_core__to__door_to_furnace() return ( true ) end
function doc__chozo_ruins__west_furnace_access__door_to_furnace() return dor__normal_door() end
function cxn__chozo_ruins__west_furnace_access__door_to_furnace__to__door_to_energy_core() return ( true ) end
