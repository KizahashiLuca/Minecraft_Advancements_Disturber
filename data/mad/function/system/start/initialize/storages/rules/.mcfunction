#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ゲームルール
data modify storage mad: rules \
  set value \
  {\
    is_team: 1,\
    initial_time: 300,\
    bonus_time_of_advancements: 100,\
    care_package_interval: 300,\
    world_border: 1500,\
    difficulty: 'normal',\
    difficulty_color: -16733696,\
    advance_weather: 'true',\
    advance_time: 'true',\
    number_of_care_packages: 1,\
    bonus_time_of_kill: 200,\
    number_of_teams: 2,\
    set_team_manual: 0,\
    death_penalty_time: 0,\
    friendly_fire: 'true',\
    collision_rule: 'true',\
    nametag_visibility: 'true',\
    see_friendly_invisibles: 'true',\
    death_message_visibility: 'true',\
    is_team_string: '$(is_team)',\
    initial_time_string: '$(initial_time)',\
    bonus_time_of_advancements_string: '$(bonus_time_of_advancements)',\
    care_package_interval_string: '$(care_package_interval)',\
    world_border_string: '$(world_border)',\
    difficulty_string: '$(difficulty)',\
    advance_weather_string: '$(advance_weather)',\
    advance_time_string: '$(advance_time)',\
    number_of_care_packages_string: '$(number_of_care_packages)',\
    bonus_time_of_kill_string: '$(bonus_time_of_kill)',\
    number_of_teams_string: '$(number_of_teams)',\
    set_team_manual_string: '$(set_team_manual)',\
    death_penalty_time_string: '$(death_penalty_time)',\
    friendly_fire_string: '$(friendly_fire)',\
    collision_rule_string: '$(collision_rule)',\
    nametag_visibility_string: '$(nametag_visibility)',\
    see_friendly_invisibles_string: '$(see_friendly_invisibles)',\
    death_message_visibility_string: '$(death_message_visibility)',\
    difficulty_color_list: {\
      peaceful: -5635926,\
      easy: -16777046,\
      normal: -16733696,\
      hard: -5636096,\
      hardcore: -16777216,\
    },\
    care_package: {\
      enable_elytra: 1,\
      enable_trident: 1,\
      enable_efficiency_pickaxe: 1,\
      enable_fortune_pickaxe: 1,\
      enable_armor_upgrader: 1,\
      enable_tool_upgrader: 1,\
      enable_emergency_call: 1,\
      enable_end_portal_frame: 1,\
      enable_energy_drink: 1,\
      enable_golden_boots: 1,\
      enable_notice_of_thief: 1,\
      enable_teleport_arrow: 1,\
      enable_totem_of_undying: 1,\
      enable_transmitter: 1,\
      enable_elytra_string: '$(enable_elytra)',\
      enable_trident_string: '$(enable_trident)',\
      enable_efficiency_pickaxe_string: '$(enable_efficiency_pickaxe)',\
      enable_fortune_pickaxe_string: '$(enable_fortune_pickaxe)',\
      enable_armor_upgrader_string: '$(enable_armor_upgrader)',\
      enable_tool_upgrader_string: '$(enable_tool_upgrader)',\
      enable_emergency_call_string: '$(enable_emergency_call)',\
      enable_end_portal_frame_string: '$(enable_end_portal_frame)',\
      enable_energy_drink_string: '$(enable_energy_drink)',\
      enable_golden_boots_string: '$(enable_golden_boots)',\
      enable_notice_of_thief_string: '$(enable_notice_of_thief)',\
      enable_teleport_arrow_string: '$(enable_teleport_arrow)',\
      enable_totem_of_undying_string: '$(enable_totem_of_undying)',\
      enable_transmitter_string: '$(enable_transmitter)',\
    },\
  }
