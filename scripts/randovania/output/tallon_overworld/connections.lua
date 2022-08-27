-- Generated from Randovania Tallon Overworld.json on 2022/08/27 at 00:58:45
function cxn_tallon_overworld_great_tree_chamber_pickup_missile_expansion_to_door_to_great_tree_hall() return ( true ) end
function doc_tallon_overworld_great_tree_chamber_door_to_great_tree_hall() return dor_normal_door() end
function cxn_tallon_overworld_great_tree_chamber_door_to_great_tree_hall_to_pickup_missile_expansion() return ( true ) end
function doc_tallon_overworld_transport_tunnel_a_door_to_transport_to_chozo_ruins_west() return dor_normal_door() end
function cxn_tallon_overworld_transport_tunnel_a_door_to_transport_to_chozo_ruins_west_to_door_to_tallon_canyon() return ( true ) end
function doc_tallon_overworld_transport_tunnel_a_door_to_tallon_canyon() return dor_normal_door() end
function cxn_tallon_overworld_transport_tunnel_a_door_to_tallon_canyon_to_door_to_transport_to_chozo_ruins_west() return ( true ) end
function doc_tallon_overworld_reactor_core_door_to_main_ventilation_shaft_section_a() return dor_circular_door() end
function cxn_tallon_overworld_reactor_core_door_to_main_ventilation_shaft_section_a_to_room_bottom() return ( true ) end
function doc_tallon_overworld_reactor_core_door_to_reactor_access() return dor_square_door() end
function cxn_tallon_overworld_reactor_core_door_to_reactor_access_to_room_bottom() return ( true ) end
function cxn_tallon_overworld_reactor_core_room_bottom_to_door_to_main_ventilation_shaft_section_a() return ( Tracker:ProviderCountForCode("spacejump") > 0 or Tracker:ProviderCountForCode("gravitysuit") > 0 or ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj4") > 0 and Tracker:ProviderCountForCode("setting_trick_underwatermovement4") > 0 ) ) end
function cxn_tallon_overworld_reactor_core_room_bottom_to_event__reactor_core_conduits_activated() return ( tpl_shoot_wave_beam() and ( Tracker:ProviderCountForCode("thermal") > 0 or Tracker:ProviderCountForCode("setting_trick_invisibleobjects1") > 0 ) and ( Tracker:ProviderCountForCode("spacejump") > 0 or Tracker:ProviderCountForCode("gravitysuit") > 0 or ( Tracker:ProviderCountForCode("setting_trick_sjump3") > 0 ) ) ) end
function cxn_tallon_overworld_reactor_core_room_bottom_to_door_to_reactor_access() return ( Tracker:ProviderCountForCode("event37") > 0 and ( Tracker:ProviderCountForCode("spacejump") > 0 or Tracker:ProviderCountForCode("gravitysuit") > 0 or ( Tracker:ProviderCountForCode("setting_trick_sjump3") > 0 and Tracker:ProviderCountForCode("setting_trick_underwatermovement3") > 0 ) ) ) end
function cxn_tallon_overworld_reactor_core_event__reactor_core_conduits_activated_to_room_bottom() return ( true ) end
function cxn_tallon_overworld_biotech_research_area_1_event__conduits_activated_to_room_center() return ( true ) end
function doc_tallon_overworld_biotech_research_area_1_door_to_deck_beta_conduit_hall() return dor_normal_door() end
function cxn_tallon_overworld_biotech_research_area_1_door_to_deck_beta_conduit_hall_to_room_center() return ( true ) end
function cxn_tallon_overworld_biotech_research_area_1_room_center_to_event__conduits_activated() return ( tpl_shoot_wave_beam() and ( Tracker:ProviderCountForCode("thermal") > 0 or Tracker:ProviderCountForCode("setting_trick_invisibleobjects1") > 0 ) ) end
function cxn_tallon_overworld_biotech_research_area_1_room_center_to_door_to_deck_beta_security_hall() return ( ( Tracker:ProviderCountForCode("gravitysuit") > 0 and ( Tracker:ProviderCountForCode("spacejump") > 0 or Tracker:ProviderCountForCode("setting_trick_standable1") > 0 ) ) or ( ( ( Tracker:ProviderCountForCode("spacejump") > 0 and ( Tracker:ProviderCountForCode("setting_trick_sjump1") > 0 or Tracker:ProviderCountForCode("setting_trick_standable1") > 0 or Tracker:ProviderCountForCode("setting_trick_underwatermovement1") > 0 ) ) or ( Tracker:ProviderCountForCode("setting_trick_sjump4") > 0 and Tracker:ProviderCountForCode("setting_trick_standable4") > 0 and Tracker:ProviderCountForCode("setting_trick_underwatermovement3") > 0 ) ) ) ) end
function cxn_tallon_overworld_biotech_research_area_1_room_center_to_door_to_deck_beta_conduit_hall() return ( Tracker:ProviderCountForCode("event42") > 0 and ( ( Tracker:ProviderCountForCode("setting_trick_ljump1") > 0 and ( Tracker:ProviderCountForCode("gravitysuit") > 0 or ( Tracker:ProviderCountForCode("setting_trick_sjump2") > 0 ) ) ) or ( Tracker:ProviderCountForCode("spacejump") > 0 and ( Tracker:ProviderCountForCode("gravitysuit") > 0 or ( Tracker:ProviderCountForCode("setting_trick_movement1") > 0 ) ) ) ) ) end
function doc_tallon_overworld_biotech_research_area_1_door_to_deck_beta_security_hall() return dor_normal_door() end
function cxn_tallon_overworld_biotech_research_area_1_door_to_deck_beta_security_hall_to_room_center() return ( true ) end
function doc_tallon_overworld_root_cave_door_to_arbor_chamber() return dor_plasma_door() end
function cxn_tallon_overworld_root_cave_door_to_arbor_chamber_to_pickup_missile_expansion() return ( ( Tracker:ProviderCountForCode("xray") > 0 or Tracker:ProviderCountForCode("setting_trick_invisibleobjects1") > 0 ) and ( Tracker:ProviderCountForCode("spacejump") > 0 or Tracker:ProviderCountForCode("setting_trick_dash2") > 0 ) ) end
function cxn_tallon_overworld_root_cave_door_to_arbor_chamber_to_door_to_root_tunnel() return ( true ) end
function doc_tallon_overworld_root_cave_door_to_transport_tunnel_b() return dor_normal_door() end
function cxn_tallon_overworld_root_cave_door_to_transport_tunnel_b_to_door_to_root_tunnel() return ( true ) end
function cxn_tallon_overworld_root_cave_pickup_missile_expansion_to_door_to_transport_tunnel_b() return ( true ) end
function cxn_tallon_overworld_root_cave_pickup_missile_expansion_to_door_to_arbor_chamber() return ( Tracker:ProviderCountForCode("spacejump") > 0 and ( Tracker:ProviderCountForCode("xray") > 0 or Tracker:ProviderCountForCode("setting_trick_invisibleobjects1") > 0 ) ) end
function cxn_tallon_overworld_root_cave_pickup_missile_expansion_to_door_to_root_tunnel() return ( true ) end
function doc_tallon_overworld_root_cave_door_to_root_tunnel() return dor_missile_blast_shield() end
function cxn_tallon_overworld_root_cave_door_to_root_tunnel_to_pickup_missile_expansion() return ( Tracker:ProviderCountForCode("spacejump") > 0 and ( tpl_use_grapple_beam() or Tracker:ProviderCountForCode("setting_trick_dash2") > 0 ) and ( Tracker:ProviderCountForCode("xray") > 0 or Tracker:ProviderCountForCode("setting_trick_invisibleobjects1") > 0 ) ) end
function cxn_tallon_overworld_root_cave_door_to_root_tunnel_to_door_to_transport_tunnel_b() return ( true ) end
function doc_tallon_overworld_landing_site_door_to_gully() return dor_normal_door() end
function cxn_tallon_overworld_landing_site_door_to_gully_to_ship() return ( true ) end
function cxn_tallon_overworld_landing_site_door_to_gully_to_door_to_alcove() return ( true ) end
function doc_tallon_overworld_landing_site_door_to_waterfall_cavern() return dor_normal_door() end
function cxn_tallon_overworld_landing_site_door_to_waterfall_cavern_to_ship() return ( true ) end
function doc_tallon_overworld_landing_site_door_to_alcove() return dor_normal_door() end
function cxn_tallon_overworld_landing_site_door_to_alcove_to_door_to_gully() return ( true ) end
function cxn_tallon_overworld_landing_site_door_to_alcove_to_ship() return ( true ) end
function cxn_tallon_overworld_landing_site_pickup_missile_expansion_to_ship() return ( true ) end
function cxn_tallon_overworld_landing_site_ship_to_door_to_waterfall_cavern() return ( true ) end
function cxn_tallon_overworld_landing_site_ship_to_pickup_missile_expansion() return Tracker:ProviderCountForCode("morphball") > 0 end
function cxn_tallon_overworld_landing_site_ship_to_door_to_gully() return ( Tracker:ProviderCountForCode("spacejump") > 0 or Tracker:ProviderCountForCode("setting_trick_dash2") > 0 or ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj4") > 0 ) or ( Tracker:ProviderCountForCode("scan") > 0 and Tracker:ProviderCountForCode("setting_trick_dash1") > 0 ) ) end
function cxn_tallon_overworld_landing_site_ship_to_door_to_canyon_cavern() return ( true ) end
function cxn_tallon_overworld_landing_site_ship_to_door_to_temple_hall() return ( true ) end
function doc_tallon_overworld_landing_site_door_to_canyon_cavern() return dor_normal_door() end
function cxn_tallon_overworld_landing_site_door_to_canyon_cavern_to_ship() return ( true ) end
function doc_tallon_overworld_landing_site_door_to_temple_hall() return dor_normal_door() end
function cxn_tallon_overworld_landing_site_door_to_temple_hall_to_ship() return ( true ) end
function cxn_tallon_overworld_artifact_temple_pickup_artifact_of_truth_to_door_to_temple_lobby() return ( true ) end
function cxn_tallon_overworld_artifact_temple_teleport_to_impact_crater__crater_impact_point_to_door_to_temple_lobby() return ( true ) end
function doc_tallon_overworld_artifact_temple_door_to_temple_lobby() return dor_normal_door() end
function cxn_tallon_overworld_artifact_temple_door_to_temple_lobby_to_event__meta_ridley() return ( Tracker:ProviderCountForCode("chozo") > 0 and Tracker:ProviderCountForCode("elder") > 0 and Tracker:ProviderCountForCode("lifegiver") > 0 and Tracker:ProviderCountForCode("nature") > 0 and Tracker:ProviderCountForCode("newborn") > 0 and Tracker:ProviderCountForCode("spirit") > 0 and Tracker:ProviderCountForCode("strength") > 0 and Tracker:ProviderCountForCode("sun") > 0 and Tracker:ProviderCountForCode("truth") > 0 and Tracker:ProviderCountForCode("warrior") > 0 and Tracker:ProviderCountForCode("wild") > 0 and Tracker:ProviderCountForCode("world") > 0 and ( Tracker:ProviderCountForCode("charge") > 0 or Tracker:ProviderCountForCode("setting_trick_combat2") > 0 ) and ( Tracker:ProviderCountForCode("damage") > 0 or ( Tracker:ProviderCountForCode("setting_trick_combat1") > 0 and Tracker:ProviderCountForCode("damage") > 0 ) or ( Tracker:ProviderCountForCode("setting_trick_combat2") > 0 and Tracker:ProviderCountForCode("damage") > 0 ) or ( Tracker:ProviderCountForCode("setting_trick_combat3") > 0 and Tracker:ProviderCountForCode("damage") > 0 ) or Tracker:ProviderCountForCode("setting_trick_combat4") > 0 ) and tpl_shoot_any_beam() ) end
function cxn_tallon_overworld_artifact_temple_door_to_temple_lobby_to_teleport_to_impact_crater__crater_impact_point() return Tracker:ProviderCountForCode("event2") > 0 end
function cxn_tallon_overworld_artifact_temple_door_to_temple_lobby_to_pickup_artifact_of_truth() return ( true ) end
function cxn_tallon_overworld_artifact_temple_event__meta_ridley_to_door_to_temple_lobby() return ( true ) end
function doc_tallon_overworld_gully_door_to_landing_site() return dor_normal_door() end
function cxn_tallon_overworld_gully_door_to_landing_site_to_door_to_tallon_canyon() return ( ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj1") > 0 ) or Tracker:ProviderCountForCode("spacejump") > 0 ) end
function doc_tallon_overworld_gully_door_to_tallon_canyon() return dor_normal_door() end
function cxn_tallon_overworld_gully_door_to_tallon_canyon_to_door_to_landing_site() return ( true ) end
function doc_tallon_overworld_deck_beta_transit_hall_door_to_cargo_freight_lift_to_deck_gamma() return dor_normal_door() end
function cxn_tallon_overworld_deck_beta_transit_hall_door_to_cargo_freight_lift_to_deck_gamma_to_door_to_biohazard_containment() return ( true ) end
function doc_tallon_overworld_deck_beta_transit_hall_door_to_biohazard_containment() return dor_normal_door() end
function cxn_tallon_overworld_deck_beta_transit_hall_door_to_biohazard_containment_to_door_to_cargo_freight_lift_to_deck_gamma() return ( true ) end
function doc_tallon_overworld_temple_security_station_door_to_temple_lobby() return dor_missile_blast_shield() end
function cxn_tallon_overworld_temple_security_station_door_to_temple_lobby_to_door_to_temple_hall() return ( true ) end
function doc_tallon_overworld_temple_security_station_door_to_temple_hall() return dor_normal_door() end
function cxn_tallon_overworld_temple_security_station_door_to_temple_hall_to_door_to_temple_lobby() return ( true ) end
function doc_tallon_overworld_great_tree_hall_door_to_great_tree_chamber() return dor_normal_door() end
function cxn_tallon_overworld_great_tree_hall_door_to_great_tree_chamber_to_door_to_transport_tunnel_d() return ( true ) end
function doc_tallon_overworld_great_tree_hall_door_to_life_grove_tunnel() return dor_ice_door() end
function cxn_tallon_overworld_great_tree_hall_door_to_life_grove_tunnel_to_door_to_great_tree_chamber() return ( ( Tracker:ProviderCountForCode("xray") > 0 or Tracker:ProviderCountForCode("setting_trick_invisibleobjects1") > 0 ) and ( Tracker:ProviderCountForCode("spacejump") > 0 or ( Tracker:ProviderCountForCode("scan") > 0 and Tracker:ProviderCountForCode("setting_trick_dash3") > 0 ) ) ) end
function cxn_tallon_overworld_great_tree_hall_door_to_life_grove_tunnel_to_door_to_transport_tunnel_d() return ( true ) end
function cxn_tallon_overworld_great_tree_hall_event__open_gate_to_next_to_spinner() return ( true ) end
function doc_tallon_overworld_great_tree_hall_door_to_transport_tunnel_e() return dor_ice_door() end
function cxn_tallon_overworld_great_tree_hall_door_to_transport_tunnel_e_to_next_to_spinner() return ( Tracker:ProviderCountForCode("spacejump") > 0 or ( Tracker:ProviderCountForCode("scan") > 0 and Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("setting_trick_dash5") > 0 and ( ( Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj3") > 0 ) or ( Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("setting_trick_wallboost5") > 0 ) ) ) ) end
function cxn_tallon_overworld_great_tree_hall_door_to_transport_tunnel_e_to_door_to_hydro_access_tunnel() return ( true ) end
function cxn_tallon_overworld_great_tree_hall_next_to_spinner_to_event__open_gate() return ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("boost") > 0 ) end
function cxn_tallon_overworld_great_tree_hall_next_to_spinner_to_door_to_transport_tunnel_d() return ( Tracker:ProviderCountForCode("event1") > 0 or ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj3") > 0 ) ) end
function cxn_tallon_overworld_great_tree_hall_next_to_spinner_to_door_to_transport_tunnel_e() return ( true ) end
function doc_tallon_overworld_great_tree_hall_door_to_transport_tunnel_d() return dor_ice_door() end
function cxn_tallon_overworld_great_tree_hall_door_to_transport_tunnel_d_to_door_to_great_tree_chamber() return ( ( Tracker:ProviderCountForCode("xray") > 0 or Tracker:ProviderCountForCode("setting_trick_invisibleobjects1") > 0 ) and ( Tracker:ProviderCountForCode("spacejump") > 0 or ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj3") > 0 and Tracker:ProviderCountForCode("scan") > 0 and Tracker:ProviderCountForCode("setting_trick_dash3") > 0 ) or ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj3") > 0 and Tracker:ProviderCountForCode("setting_trick_standenemies3") > 0 and Tracker:ProviderCountForCode("damage") > 0 ) ) ) end
function cxn_tallon_overworld_great_tree_hall_door_to_transport_tunnel_d_to_door_to_life_grove_tunnel() return ( ( Tracker:ProviderCountForCode("spacejump") > 0 and ( Tracker:ProviderCountForCode("setting_trick_standable1") > 0 or ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("spider") > 0 ) ) ) or ( Tracker:ProviderCountForCode("morphball") > 0 and ( ( Tracker:ProviderCountForCode("spider") > 0 and ( Tracker:ProviderCountForCode("setting_trick_standable1") > 0 or ( Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj2") > 0 ) ) ) or ( Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_standable4") > 0 and Tracker:ProviderCountForCode("setting_trick_bj5") > 0 and Tracker:ProviderCountForCode("setting_trick_cbj5") > 0 and Tracker:ProviderCountForCode("setting_trick_movement5") > 0 and Tracker:ProviderCountForCode("setting_trick_dash4") > 0 ) ) ) ) end
function cxn_tallon_overworld_great_tree_hall_door_to_transport_tunnel_d_to_next_to_spinner() return ( Tracker:ProviderCountForCode("event1") > 0 or ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj3") > 0 ) ) end
function doc_tallon_overworld_great_tree_hall_door_to_hydro_access_tunnel() return dor_normal_door() end
function cxn_tallon_overworld_great_tree_hall_door_to_hydro_access_tunnel_to_door_to_transport_tunnel_e() return ( ( Tracker:ProviderCountForCode("setting_trick_sjump2") > 0 and Tracker:ProviderCountForCode("setting_trick_underwatermovement2") > 0 ) or Tracker:ProviderCountForCode("spacejump") > 0 or Tracker:ProviderCountForCode("gravitysuit") > 0 ) end
function doc_tallon_overworld_deck_beta_conduit_hall_door_to_biotech_research_area_1() return dor_normal_door() end
function cxn_tallon_overworld_deck_beta_conduit_hall_door_to_biotech_research_area_1_to_door_to_connection_elevator_to_deck_beta() return ( true ) end
function doc_tallon_overworld_deck_beta_conduit_hall_door_to_connection_elevator_to_deck_beta() return dor_normal_door() end
function cxn_tallon_overworld_deck_beta_conduit_hall_door_to_connection_elevator_to_deck_beta_to_door_to_biotech_research_area_1() return ( true ) end
function doc_tallon_overworld_main_ventilation_shaft_section_a_door_to_reactor_core() return dor_circular_door() end
function cxn_tallon_overworld_main_ventilation_shaft_section_a_door_to_reactor_core_to_door_to_main_ventilation_shaft_section_b() return ( true ) end
function doc_tallon_overworld_main_ventilation_shaft_section_a_door_to_main_ventilation_shaft_section_b() return dor_circular_door() end
function cxn_tallon_overworld_main_ventilation_shaft_section_a_door_to_main_ventilation_shaft_section_b_to_door_to_reactor_core() return ( true ) end
function doc_tallon_overworld_main_ventilation_shaft_section_c_door_to_main_ventilation_shaft_section_b() return dor_circular_door() end
function cxn_tallon_overworld_main_ventilation_shaft_section_c_door_to_main_ventilation_shaft_section_b_to_door_to_frigate_access_tunnel() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("spacejump") > 0 or ( Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj3") > 0 ) ) ) end
function doc_tallon_overworld_main_ventilation_shaft_section_c_door_to_frigate_access_tunnel() return dor_normal_door() end
function cxn_tallon_overworld_main_ventilation_shaft_section_c_door_to_frigate_access_tunnel_to_door_to_main_ventilation_shaft_section_b() return Tracker:ProviderCountForCode("morphball") > 0 end
function doc_tallon_overworld_savestation_door_to_reactor_access() return dor_normal_door() end
function cxn_tallon_overworld_savestation_door_to_reactor_access_to_save_station() return ( true ) end
function cxn_tallon_overworld_savestation_save_station_to_door_to_reactor_access() return ( true ) end
function doc_tallon_overworld_main_ventilation_shaft_section_b_door_to_main_ventilation_shaft_section_a() return dor_circular_door() end
function cxn_tallon_overworld_main_ventilation_shaft_section_b_door_to_main_ventilation_shaft_section_a_to_door_to_main_ventilation_shaft_section_c() return ( Tracker:ProviderCountForCode("event36") > 0 or Tracker:ProviderCountForCode("backwards_frigate") > 0 ) end
function cxn_tallon_overworld_main_ventilation_shaft_section_b_door_to_main_ventilation_shaft_section_a_to_event__main_ventilation_shaft_section_b_conduit_activated() return ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and tpl_shoot_wave_beam() and Tracker:ProviderCountForCode("setting_trick_cbj4") > 0 and Tracker:ProviderCountForCode("setting_trick_oob4") > 0 and Tracker:ProviderCountForCode("backwards_frigate") == 0 ) end
function doc_tallon_overworld_main_ventilation_shaft_section_b_door_to_main_ventilation_shaft_section_c() return dor_circular_door() end
function cxn_tallon_overworld_main_ventilation_shaft_section_b_door_to_main_ventilation_shaft_section_c_to_door_to_main_ventilation_shaft_section_a() return Tracker:ProviderCountForCode("event36") > 0 end
function cxn_tallon_overworld_main_ventilation_shaft_section_b_door_to_main_ventilation_shaft_section_c_to_event__main_ventilation_shaft_section_b_conduit_activated() return ( tpl_shoot_wave_beam() and ( Tracker:ProviderCountForCode("thermal") > 0 or Tracker:ProviderCountForCode("setting_trick_invisibleobjects1") > 0 ) ) end
function cxn_tallon_overworld_main_ventilation_shaft_section_b_event__main_ventilation_shaft_section_b_conduit_activated_to_door_to_main_ventilation_shaft_section_c() return ( true ) end
function cxn_tallon_overworld_biohazard_containment_event__biohazard_containment_conduits_activated_to_room_bottom() return ( true ) end
function doc_tallon_overworld_biohazard_containment_door_to_deck_beta_transit_hall() return dor_normal_door() end
function cxn_tallon_overworld_biohazard_containment_door_to_deck_beta_transit_hall_to_room_bottom() return ( true ) end
function cxn_tallon_overworld_biohazard_containment_door_to_deck_beta_transit_hall_to_event__biohazard_containment_conduits_activated() return ( tpl_shoot_wave_beam() and ( Tracker:ProviderCountForCode("thermal") > 0 or Tracker:ProviderCountForCode("setting_trick_invisibleobjects1") > 0 ) ) end
function doc_tallon_overworld_biohazard_containment_door_to_deck_beta_security_hall() return dor_normal_door() end
function cxn_tallon_overworld_biohazard_containment_door_to_deck_beta_security_hall_to_room_bottom() return ( true ) end
function cxn_tallon_overworld_biohazard_containment_pickup_missile_expansion_to_room_bottom() return ( true ) end
function cxn_tallon_overworld_biohazard_containment_room_bottom_to_door_to_deck_beta_transit_hall() return ( ( Tracker:ProviderCountForCode("gravitysuit") > 0 and ( Tracker:ProviderCountForCode("spacejump") > 0 or ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj1") > 0 and Tracker:ProviderCountForCode("setting_trick_standable1") > 0 ) or ( Tracker:ProviderCountForCode("setting_trick_sjump4") > 0 and Tracker:ProviderCountForCode("setting_trick_standable1") > 0 ) ) ) or ( ( ( Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("setting_trick_standable1") > 0 ) or ( Tracker:ProviderCountForCode("setting_trick_sjump4") > 0 and Tracker:ProviderCountForCode("setting_trick_standable3") > 0 and Tracker:ProviderCountForCode("setting_trick_underwatermovement3") > 0 ) ) ) ) end
function cxn_tallon_overworld_biohazard_containment_room_bottom_to_door_to_deck_beta_security_hall() return ( Tracker:ProviderCountForCode("event41") > 0 ) end
function cxn_tallon_overworld_biohazard_containment_room_bottom_to_pickup_missile_expansion() return ( tpl_shoot_super_missile() ) end
function doc_tallon_overworld_deck_beta_security_hall_door_to_biotech_research_area_1() return dor_normal_door() end
function cxn_tallon_overworld_deck_beta_security_hall_door_to_biotech_research_area_1_to_door_to_biohazard_containment() return ( true ) end
function doc_tallon_overworld_deck_beta_security_hall_door_to_biohazard_containment() return dor_normal_door() end
function cxn_tallon_overworld_deck_beta_security_hall_door_to_biohazard_containment_to_door_to_biotech_research_area_1() return ( true ) end
function cxn_tallon_overworld_transport_to_phazon_mines_east_elevator_to_phazon_mines__transport_to_tallon_overworld_south_to_door_to_transport_tunnel_e() return ( true ) end
function doc_tallon_overworld_transport_to_phazon_mines_east_door_to_transport_tunnel_e() return dor_ice_door() end
function cxn_tallon_overworld_transport_to_phazon_mines_east_door_to_transport_tunnel_e_to_elevator_to_phazon_mines__transport_to_tallon_overworld_south() return ( true ) end
function cxn_tallon_overworld_alcove_pickup_space_jump_boots_to_door_to_landing_site() return ( Tracker:ProviderCountForCode("spacejump") > 0 or Tracker:ProviderCountForCode("setting_trick_sjump1") > 0 or ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj1") > 0 ) ) end
function doc_tallon_overworld_alcove_door_to_landing_site() return dor_normal_door() end
function cxn_tallon_overworld_alcove_door_to_landing_site_to_pickup_space_jump_boots() return ( true ) end
function doc_tallon_overworld_frigate_access_tunnel_door_to_frigate_crash_site() return dor_ice_door() end
function cxn_tallon_overworld_frigate_access_tunnel_door_to_frigate_crash_site_to_door_to_main_ventilation_shaft_section_c() return ( true ) end
function doc_tallon_overworld_frigate_access_tunnel_door_to_main_ventilation_shaft_section_c() return dor_normal_door() end
function cxn_tallon_overworld_frigate_access_tunnel_door_to_main_ventilation_shaft_section_c_to_door_to_frigate_crash_site() return ( true ) end
function doc_tallon_overworld_reactor_access_door_to_reactor_core() return dor_square_door() end
function cxn_tallon_overworld_reactor_access_door_to_reactor_core_to_door_to_cargo_freight_lift_to_deck_gamma() return ( Tracker:ProviderCountForCode("event38") > 0 ) end
function cxn_tallon_overworld_reactor_access_door_to_reactor_core_to_door_to_savestation() return ( true ) end
function cxn_tallon_overworld_reactor_access_door_to_reactor_core_to_event__reactor_access_conduits_activated() return ( tpl_shoot_wave_beam() and ( Tracker:ProviderCountForCode("thermal") > 0 or Tracker:ProviderCountForCode("setting_trick_invisibleobjects1") > 0 ) ) end
function doc_tallon_overworld_reactor_access_door_to_cargo_freight_lift_to_deck_gamma() return dor_square_door() end
function cxn_tallon_overworld_reactor_access_door_to_cargo_freight_lift_to_deck_gamma_to_door_to_reactor_core() return ( true ) end
function doc_tallon_overworld_reactor_access_door_to_savestation() return dor_normal_door() end
function cxn_tallon_overworld_reactor_access_door_to_savestation_to_door_to_reactor_core() return ( true ) end
function cxn_tallon_overworld_reactor_access_event__reactor_access_conduits_activated_to_door_to_reactor_core() return ( true ) end
function doc_tallon_overworld_transport_to_chozo_ruins_east_door_to_transport_tunnel_c() return dor_ice_door() end
function cxn_tallon_overworld_transport_to_chozo_ruins_east_door_to_transport_tunnel_c_to_elevator_to_chozo_ruins__transport_to_tallon_overworld_east() return ( true ) end
function cxn_tallon_overworld_transport_to_chozo_ruins_east_elevator_to_chozo_ruins__transport_to_tallon_overworld_east_to_door_to_transport_tunnel_c() return ( true ) end
function cxn_tallon_overworld_frigate_crash_site_pickup_missile_expansion_to_door_to_waterfall_cavern() return ( true ) end
function doc_tallon_overworld_frigate_crash_site_door_to_overgrown_cavern() return dor_ice_door() end
function cxn_tallon_overworld_frigate_crash_site_door_to_overgrown_cavern_to_door_to_frigate_access_tunnel() return ( true ) end
function doc_tallon_overworld_frigate_crash_site_door_to_waterfall_cavern() return dor_missile_blast_shield() end
function cxn_tallon_overworld_frigate_crash_site_door_to_waterfall_cavern_to_pickup_missile_expansion() return ( ( Tracker:ProviderCountForCode("spacejump") > 0 and ( Tracker:ProviderCountForCode("gravitysuit") > 0 or Tracker:ProviderCountForCode("setting_trick_ljump1") > 0 or ( Tracker:ProviderCountForCode("setting_trick_sjump1") > 0 and Tracker:ProviderCountForCode("setting_trick_underwatermovement1") > 0 ) ) ) or ( Tracker:ProviderCountForCode("scan") > 0 and ( Tracker:ProviderCountForCode("setting_trick_dash2") > 0 or ( Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("setting_trick_dash1") > 0 ) ) ) or ( Tracker:ProviderCountForCode("setting_trick_sjump3") > 0 and Tracker:ProviderCountForCode("nogravity") > 0 and Tracker:ProviderCountForCode("gravitysuit") == 0 and Tracker:ProviderCountForCode("setting_trick_underwatermovement3") > 0 ) or ( tpl_use_grapple_beam() and Tracker:ProviderCountForCode("setting_trick_movement1") > 0 ) or ( Tracker:ProviderCountForCode("gravitysuit") > 0 and Tracker:ProviderCountForCode("setting_trick_standable2") > 0 and Tracker:ProviderCountForCode("setting_trick_ljump2") > 0 ) ) end
function cxn_tallon_overworld_frigate_crash_site_door_to_waterfall_cavern_to_door_to_frigate_access_tunnel() return ( tpl_use_grapple_beam() or ( ( Tracker:ProviderCountForCode("spacejump") > 0 and ( ( Tracker:ProviderCountForCode("morphball") > 0 ) or ( Tracker:ProviderCountForCode("scan") > 0 and Tracker:ProviderCountForCode("setting_trick_standable2") > 0 and Tracker:ProviderCountForCode("setting_trick_dash2") > 0 ) or ( Tracker:ProviderCountForCode("gravitysuit") > 0 and Tracker:ProviderCountForCode("setting_trick_standable1") > 0 ) or ( Tracker:ProviderCountForCode("setting_trick_sjump2") > 0 and Tracker:ProviderCountForCode("setting_trick_standable1") > 0 and Tracker:ProviderCountForCode("setting_trick_ljump1") > 0 and Tracker:ProviderCountForCode("setting_trick_underwatermovement1") > 0 ) ) ) ) or ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("gravitysuit") > 0 or ( Tracker:ProviderCountForCode("setting_trick_sjump3") > 0 and Tracker:ProviderCountForCode("setting_trick_underwatermovement3") > 0 ) ) ) ) end
function doc_tallon_overworld_frigate_crash_site_door_to_frigate_access_tunnel() return dor_ice_door() end
function cxn_tallon_overworld_frigate_crash_site_door_to_frigate_access_tunnel_to_pickup_missile_expansion() return ( Tracker:ProviderCountForCode("setting_trick_standable2") > 0 and Tracker:ProviderCountForCode("setting_trick_ljump2") > 0 ) end
function cxn_tallon_overworld_frigate_crash_site_door_to_frigate_access_tunnel_to_door_to_overgrown_cavern() return ( ( Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("setting_trick_sjump2") > 0 and Tracker:ProviderCountForCode("setting_trick_standable1") > 0 ) or ( Tracker:ProviderCountForCode("scan") > 0 and Tracker:ProviderCountForCode("setting_trick_dash3") > 0 and Tracker:ProviderCountForCode("setting_trick_standable3") > 0 and Tracker:ProviderCountForCode("setting_trick_sjump3") > 0 and Tracker:ProviderCountForCode("setting_trick_ljump3") > 0 ) or ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("setting_trick_wallboost2") > 0 and Tracker:ProviderCountForCode("setting_trick_movement2") > 0 ) or ( Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("setting_trick_standable1") > 0 and Tracker:ProviderCountForCode("setting_trick_ljump2") > 0 ) ) end
function cxn_tallon_overworld_frigate_crash_site_door_to_frigate_access_tunnel_to_door_to_waterfall_cavern() return ( true ) end
function cxn_tallon_overworld_transport_tunnel_b_pickup_missile_expansion_to_door_to_transport_to_magmoor_caverns_east() return ( true ) end
function cxn_tallon_overworld_transport_tunnel_b_pickup_missile_expansion_to_door_to_root_cave() return ( true ) end
function doc_tallon_overworld_transport_tunnel_b_door_to_transport_to_magmoor_caverns_east() return dor_normal_door() end
function cxn_tallon_overworld_transport_tunnel_b_door_to_transport_to_magmoor_caverns_east_to_pickup_missile_expansion() return ( true ) end
function doc_tallon_overworld_transport_tunnel_b_door_to_root_cave() return dor_normal_door() end
function cxn_tallon_overworld_transport_tunnel_b_door_to_root_cave_to_pickup_missile_expansion() return ( true ) end
function doc_tallon_overworld_cargo_freight_lift_to_deck_gamma_door_to_deck_beta_transit_hall() return dor_normal_door() end
function cxn_tallon_overworld_cargo_freight_lift_to_deck_gamma_door_to_deck_beta_transit_hall_to_door_to_reactor_access() return ( true ) end
function cxn_tallon_overworld_cargo_freight_lift_to_deck_gamma_event__conduits_activated_to_door_to_reactor_access() return ( true ) end
function doc_tallon_overworld_cargo_freight_lift_to_deck_gamma_door_to_reactor_access() return dor_square_door() end
function cxn_tallon_overworld_cargo_freight_lift_to_deck_gamma_door_to_reactor_access_to_door_to_deck_beta_transit_hall() return Tracker:ProviderCountForCode("event40") > 0 end
function cxn_tallon_overworld_cargo_freight_lift_to_deck_gamma_door_to_reactor_access_to_event__conduits_activated() return ( tpl_shoot_wave_beam() and ( Tracker:ProviderCountForCode("thermal") > 0 or Tracker:ProviderCountForCode("setting_trick_invisibleobjects1") > 0 ) and ( ( Tracker:ProviderCountForCode("gravitysuit") > 0 and ( Tracker:ProviderCountForCode("spacejump") > 0 or ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_cbj4") > 0 ) ) ) or ( Tracker:ProviderCountForCode("gravitysuit") == 0 and ( ( Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("setting_trick_sjump2") > 0 and Tracker:ProviderCountForCode("setting_trick_ljump2") > 0 and Tracker:ProviderCountForCode("setting_trick_underwatermovement2") > 0 ) or ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("setting_trick_sjump4") > 0 and Tracker:ProviderCountForCode("setting_trick_underwatermovement3") > 0 and ( ( Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj3") > 0 ) or ( Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("setting_trick_wallboost1") > 0 ) ) and Tracker:ProviderCountForCode("nogravity") > 0 ) ) ) ) ) end
function cxn_tallon_overworld_cargo_freight_lift_to_deck_gamma_door_to_reactor_access_to_pickup_energy_tank() return ( tpl_shoot_any_beam() and ( Tracker:ProviderCountForCode("missile") > 0 or Tracker:ProviderCountForCode("charge") > 0 ) ) end
function cxn_tallon_overworld_cargo_freight_lift_to_deck_gamma_pickup_energy_tank_to_door_to_reactor_access() return ( true ) end
function doc_tallon_overworld_transport_tunnel_c_door_to_transport_to_chozo_ruins_east() return dor_ice_door() end
function cxn_tallon_overworld_transport_tunnel_c_door_to_transport_to_chozo_ruins_east_to_door_to_overgrown_cavern() return ( Tracker:ProviderCountForCode("morphball") > 0 ) end
function doc_tallon_overworld_transport_tunnel_c_door_to_overgrown_cavern() return dor_ice_door() end
function cxn_tallon_overworld_transport_tunnel_c_door_to_overgrown_cavern_to_door_to_transport_to_chozo_ruins_east() return ( Tracker:ProviderCountForCode("morphball") > 0 ) end
function doc_tallon_overworld_transport_to_magmoor_caverns_east_door_to_transport_tunnel_b() return dor_normal_door() end
function cxn_tallon_overworld_transport_to_magmoor_caverns_east_door_to_transport_tunnel_b_to_elevator_to_magmoor_caverns__transport_to_tallon_overworld_west() return ( true ) end
function cxn_tallon_overworld_transport_to_magmoor_caverns_east_elevator_to_magmoor_caverns__transport_to_tallon_overworld_west_to_door_to_transport_tunnel_b() return ( true ) end
function doc_tallon_overworld_root_tunnel_door_to_tallon_canyon() return dor_normal_door() end
function cxn_tallon_overworld_root_tunnel_door_to_tallon_canyon_to_door_to_root_cave() return ( true ) end
function doc_tallon_overworld_root_tunnel_door_to_root_cave() return dor_missile_blast_shield() end
function cxn_tallon_overworld_root_tunnel_door_to_root_cave_to_door_to_tallon_canyon() return ( true ) end
function doc_tallon_overworld_transport_to_chozo_ruins_south_door_to_transport_tunnel_d() return dor_ice_door() end
function cxn_tallon_overworld_transport_to_chozo_ruins_south_door_to_transport_tunnel_d_to_elevator_to_chozo_ruins__transport_to_tallon_overworld_south() return ( true ) end
function cxn_tallon_overworld_transport_to_chozo_ruins_south_elevator_to_chozo_ruins__transport_to_tallon_overworld_south_to_door_to_transport_tunnel_d() return ( true ) end
function cxn_tallon_overworld_life_grove_behind_pb_wall_to_front_of_pb_wall() return ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("powerbomb") > 0 ) end
function cxn_tallon_overworld_life_grove_behind_pb_wall_to_morph_ball_door_to_life_grove_tunnel() return ( tpl_shoot_power_beam() and ( Tracker:ProviderCountForCode("spacejump") > 0 or ( ( ( Tracker:ProviderCountForCode("scan") > 0 and Tracker:ProviderCountForCode("setting_trick_dash2") > 0 ) or Tracker:ProviderCountForCode("setting_trick_dash4") > 0 ) and ( ( Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj3") > 0 ) or ( Tracker:ProviderCountForCode("setting_trick_sjump3") > 0 and Tracker:ProviderCountForCode("setting_trick_ljump3") > 0 and Tracker:ProviderCountForCode("setting_trick_rjump3") > 0 and Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("setting_trick_wallboost2") > 0 and Tracker:ProviderCountForCode("setting_trick_standable2") > 0 ) ) ) ) and Tracker:ProviderCountForCode("morphball") > 0 ) end
function cxn_tallon_overworld_life_grove_behind_pb_wall_to_pickup_artifact_of_chozo() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( ( Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("setting_trick_oob3") > 0 and Tracker:ProviderCountForCode("setting_trick_standable3") > 0 ) or ( ( Tracker:ProviderCountForCode("boost") > 0 or Tracker:ProviderCountForCode("setting_trick_boostlessspiner3") > 0 ) and ( Tracker:ProviderCountForCode("bombs") > 0 or ( Tracker:ProviderCountForCode("powerbomb") > 0 and Tracker:ProviderCountForCode("setting_trick_knowledge1") > 0 ) ) and ( Tracker:ProviderCountForCode("spacejump") > 0 or ( Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj2") > 0 ) or ( Tracker:ProviderCountForCode("setting_trick_ljump3") > 0 and Tracker:ProviderCountForCode("setting_trick_standable2") > 0 ) ) ) ) ) end
function cxn_tallon_overworld_life_grove_front_of_pb_wall_to_behind_pb_wall() return ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("powerbomb") > 0 ) end
function cxn_tallon_overworld_life_grove_front_of_pb_wall_to_pickup_xray_visor() return ( true ) end
function cxn_tallon_overworld_life_grove_front_of_pb_wall_to_morph_ball_door_to_life_grove_tunnel() return ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("setting_trick_standable1") > 0 and Tracker:ProviderCountForCode("setting_trick_rjump2") > 0 ) end
function doc_tallon_overworld_life_grove_morph_ball_door_to_life_grove_tunnel() return dor_morph_ball_door() end
function cxn_tallon_overworld_life_grove_morph_ball_door_to_life_grove_tunnel_to_front_of_pb_wall() return ( Tracker:ProviderCountForCode("morphball") > 0 ) end
function cxn_tallon_overworld_life_grove_pickup_xray_visor_to_front_of_pb_wall() return ( true ) end
function cxn_tallon_overworld_life_grove_pickup_artifact_of_chozo_to_behind_pb_wall() return ( true ) end
function doc_tallon_overworld_transport_tunnel_e_door_to_transport_to_phazon_mines_east() return dor_ice_door() end
function cxn_tallon_overworld_transport_tunnel_e_door_to_transport_to_phazon_mines_east_to_door_to_great_tree_hall() return ( true ) end
function doc_tallon_overworld_transport_tunnel_e_door_to_great_tree_hall() return dor_ice_door() end
function cxn_tallon_overworld_transport_tunnel_e_door_to_great_tree_hall_to_door_to_transport_to_phazon_mines_east() return ( true ) end
function cxn_tallon_overworld_life_grove_tunnel_top_of_half_pipe_to_morph_ball_door_to_life_grove() return ( Tracker:ProviderCountForCode("morphball") > 0 ) end
function cxn_tallon_overworld_life_grove_tunnel_top_of_half_pipe_to_pickup_missile_expansion() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("bombs") > 0 or ( Tracker:ProviderCountForCode("powerbomb") > 0 and Tracker:ProviderCountForCode("setting_trick_knowledge1") > 0 ) ) ) end
function cxn_tallon_overworld_life_grove_tunnel_top_of_half_pipe_to_door_to_great_tree_hall() return ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("powerbomb") > 0 and ( Tracker:ProviderCountForCode("bombs") > 0 or ( Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("setting_trick_wallboost2") > 0 ) ) ) end
function doc_tallon_overworld_life_grove_tunnel_morph_ball_door_to_life_grove() return dor_morph_ball_door() end
function cxn_tallon_overworld_life_grove_tunnel_morph_ball_door_to_life_grove_to_top_of_half_pipe() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("boost") > 0 or ( Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj3") > 0 ) ) ) end
function cxn_tallon_overworld_life_grove_tunnel_pickup_missile_expansion_to_morph_ball_door_to_life_grove() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( Tracker:ProviderCountForCode("boost") > 0 or ( Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_cbj5") > 0 ) ) ) end
function cxn_tallon_overworld_life_grove_tunnel_pickup_missile_expansion_to_door_to_great_tree_hall() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( ( Tracker:ProviderCountForCode("boost") > 0 and ( Tracker:ProviderCountForCode("bombs") > 0 or Tracker:ProviderCountForCode("setting_trick_wallboost2") > 0 ) ) or ( Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_cbj5") > 0 ) ) and Tracker:ProviderCountForCode("powerbomb") > 0 ) end
function doc_tallon_overworld_life_grove_tunnel_door_to_great_tree_hall() return dor_ice_door() end
function cxn_tallon_overworld_life_grove_tunnel_door_to_great_tree_hall_to_top_of_half_pipe() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( ( Tracker:ProviderCountForCode("boost") > 0 and ( Tracker:ProviderCountForCode("bombs") > 0 or Tracker:ProviderCountForCode("setting_trick_wallboost2") > 0 ) ) or ( Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj3") > 0 ) ) and Tracker:ProviderCountForCode("powerbomb") > 0 ) end
function doc_tallon_overworld_canyon_cavern_door_to_landing_site() return dor_normal_door() end
function cxn_tallon_overworld_canyon_cavern_door_to_landing_site_to_door_to_tallon_canyon() return ( true ) end
function doc_tallon_overworld_canyon_cavern_door_to_tallon_canyon() return dor_normal_door() end
function cxn_tallon_overworld_canyon_cavern_door_to_tallon_canyon_to_door_to_landing_site() return ( true ) end
function doc_tallon_overworld_transport_tunnel_d_door_to_transport_to_chozo_ruins_south() return dor_ice_door() end
function cxn_tallon_overworld_transport_tunnel_d_door_to_transport_to_chozo_ruins_south_to_door_to_great_tree_hall() return ( true ) end
function doc_tallon_overworld_transport_tunnel_d_door_to_great_tree_hall() return dor_ice_door() end
function cxn_tallon_overworld_transport_tunnel_d_door_to_great_tree_hall_to_door_to_transport_to_chozo_ruins_south() return ( true ) end
function cxn_tallon_overworld_arbor_chamber_pickup_missile_expansion_to_door_to_root_cave() return ( true ) end
function doc_tallon_overworld_arbor_chamber_door_to_root_cave() return dor_normal_door() end
function cxn_tallon_overworld_arbor_chamber_door_to_root_cave_to_pickup_missile_expansion() return ( true ) end
function doc_tallon_overworld_temple_hall_door_to_temple_security_station() return dor_normal_door() end
function cxn_tallon_overworld_temple_hall_door_to_temple_security_station_to_door_to_landing_site() return ( true ) end
function doc_tallon_overworld_temple_hall_door_to_landing_site() return dor_normal_door() end
function cxn_tallon_overworld_temple_hall_door_to_landing_site_to_door_to_temple_security_station() return ( true ) end
function doc_tallon_overworld_connection_elevator_to_deck_beta_door_to_deck_beta_conduit_hall() return dor_normal_door() end
function cxn_tallon_overworld_connection_elevator_to_deck_beta_door_to_deck_beta_conduit_hall_to_door_to_hydro_access_tunnel() return ( Tracker:ProviderCountForCode("gravitysuit") > 0 or Tracker:ProviderCountForCode("spacejump") > 0 or ( Tracker:ProviderCountForCode("setting_trick_sjump1") > 0 and Tracker:ProviderCountForCode("setting_trick_underwatermovement1") > 0 ) ) end
function doc_tallon_overworld_connection_elevator_to_deck_beta_door_to_hydro_access_tunnel() return dor_normal_door() end
function cxn_tallon_overworld_connection_elevator_to_deck_beta_door_to_hydro_access_tunnel_to_door_to_deck_beta_conduit_hall() return ( ( Tracker:ProviderCountForCode("gravitysuit") > 0 and ( Tracker:ProviderCountForCode("spacejump") > 0 or ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj3") > 0 ) ) ) or ( Tracker:ProviderCountForCode("setting_trick_underwatermovement4") > 0 and ( ( Tracker:ProviderCountForCode("spacejump") > 0 and Tracker:ProviderCountForCode("setting_trick_sjump3") > 0 ) or ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("setting_trick_bj3") > 0 and Tracker:ProviderCountForCode("setting_trick_sjump4") > 0 ) ) ) ) end
function cxn_tallon_overworld_tallon_canyon_half_pipe_to_door_to_root_tunnel() return ( true ) end
function cxn_tallon_overworld_tallon_canyon_half_pipe_to_door_to_gully() return ( ( Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("boost") > 0 ) ) end
function cxn_tallon_overworld_tallon_canyon_half_pipe_to_door_to_canyon_cavern() return ( true ) end
function cxn_tallon_overworld_tallon_canyon_half_pipe_to_door_to_transport_tunnel_a() return ( true ) end
function doc_tallon_overworld_tallon_canyon_door_to_transport_tunnel_a() return dor_normal_door() end
function cxn_tallon_overworld_tallon_canyon_door_to_transport_tunnel_a_to_half_pipe() return ( true ) end
function doc_tallon_overworld_tallon_canyon_door_to_root_tunnel() return dor_normal_door() end
function cxn_tallon_overworld_tallon_canyon_door_to_root_tunnel_to_half_pipe() return ( true ) end
function doc_tallon_overworld_tallon_canyon_door_to_canyon_cavern() return dor_normal_door() end
function cxn_tallon_overworld_tallon_canyon_door_to_canyon_cavern_to_half_pipe() return ( true ) end
function doc_tallon_overworld_tallon_canyon_door_to_gully() return dor_normal_door() end
function cxn_tallon_overworld_tallon_canyon_door_to_gully_to_half_pipe() return ( ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("spacejump") > 0 ) ) end
function cxn_tallon_overworld_transport_to_chozo_ruins_west_elevator_to_chozo_ruins__transport_to_tallon_overworld_north_to_door_to_transport_tunnel_a() return ( true ) end
function doc_tallon_overworld_transport_to_chozo_ruins_west_door_to_transport_tunnel_a() return dor_normal_door() end
function cxn_tallon_overworld_transport_to_chozo_ruins_west_door_to_transport_tunnel_a_to_elevator_to_chozo_ruins__transport_to_tallon_overworld_north() return ( true ) end
function doc_tallon_overworld_waterfall_cavern_door_to_frigate_crash_site() return dor_missile_blast_shield() end
function cxn_tallon_overworld_waterfall_cavern_door_to_frigate_crash_site_to_door_to_landing_site() return ( Tracker:ProviderCountForCode("morphball") > 0 ) end
function doc_tallon_overworld_waterfall_cavern_door_to_landing_site() return dor_normal_door() end
function cxn_tallon_overworld_waterfall_cavern_door_to_landing_site_to_door_to_frigate_crash_site() return ( Tracker:ProviderCountForCode("morphball") > 0 ) end
function doc_tallon_overworld_temple_lobby_door_to_temple_security_station() return dor_normal_door() end
function cxn_tallon_overworld_temple_lobby_door_to_temple_security_station_to_door_to_artifact_temple() return ( true ) end
function doc_tallon_overworld_temple_lobby_door_to_artifact_temple() return dor_normal_door() end
function cxn_tallon_overworld_temple_lobby_door_to_artifact_temple_to_door_to_temple_security_station() return ( true ) end
function doc_tallon_overworld_hydro_access_tunnel_door_to_connection_elevator_to_deck_beta() return dor_normal_door() end
function cxn_tallon_overworld_hydro_access_tunnel_door_to_connection_elevator_to_deck_beta_to_pickup_energy_tank() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( ( Tracker:ProviderCountForCode("gravitysuit") > 0 and Tracker:ProviderCountForCode("bombs") > 0 ) or ( Tracker:ProviderCountForCode("gravitysuit") == 0 and Tracker:ProviderCountForCode("nogravity") > 0 and Tracker:ProviderCountForCode("setting_trick_underwatermovement1") > 0 ) ) ) end
function cxn_tallon_overworld_hydro_access_tunnel_door_to_connection_elevator_to_deck_beta_to_door_to_great_tree_hall() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( ( Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("gravitysuit") > 0 ) or ( Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("setting_trick_wallboost3") > 0 ) ) ) end
function cxn_tallon_overworld_hydro_access_tunnel_pickup_energy_tank_to_door_to_connection_elevator_to_deck_beta() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( ( Tracker:ProviderCountForCode("gravitysuit") > 0 and Tracker:ProviderCountForCode("bombs") > 0 ) or ( Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("setting_trick_wallboost3") > 0 ) ) ) end
function doc_tallon_overworld_hydro_access_tunnel_door_to_great_tree_hall() return dor_normal_door() end
function cxn_tallon_overworld_hydro_access_tunnel_door_to_great_tree_hall_to_door_to_connection_elevator_to_deck_beta() return ( Tracker:ProviderCountForCode("morphball") > 0 and ( ( Tracker:ProviderCountForCode("gravitysuit") > 0 and Tracker:ProviderCountForCode("bombs") > 0 ) or ( Tracker:ProviderCountForCode("boost") > 0 and Tracker:ProviderCountForCode("setting_trick_wallboost3") > 0 ) ) ) end
function cxn_tallon_overworld_hydro_access_tunnel_door_to_great_tree_hall_to_pickup_energy_tank() return ( Tracker:ProviderCountForCode("morphball") > 0 and Tracker:ProviderCountForCode("bombs") > 0 and Tracker:ProviderCountForCode("gravitysuit") > 0 ) end
function doc_tallon_overworld_overgrown_cavern_door_to_transport_tunnel_c() return dor_ice_door() end
function cxn_tallon_overworld_overgrown_cavern_door_to_transport_tunnel_c_to_pickup_missile_expansion() return ( Tracker:ProviderCountForCode("morphball") > 0 ) end
function doc_tallon_overworld_overgrown_cavern_door_to_frigate_crash_site() return dor_ice_door() end
function cxn_tallon_overworld_overgrown_cavern_door_to_frigate_crash_site_to_pickup_missile_expansion() return ( Tracker:ProviderCountForCode("morphball") > 0 ) end
function cxn_tallon_overworld_overgrown_cavern_pickup_missile_expansion_to_door_to_transport_tunnel_c() return ( Tracker:ProviderCountForCode("morphball") > 0 ) end
function cxn_tallon_overworld_overgrown_cavern_pickup_missile_expansion_to_door_to_frigate_crash_site() return ( Tracker:ProviderCountForCode("morphball") > 0 ) end
