#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.21
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ゲームルール
data modify storage mad: rules set value \
  {\
    is_team: 1,\
    initial_time: 300,\
    bonus_time_of_advancements: 100,\
    care_package_interval: 300,\
    world_border: 1500,\
    difficulty: 'normal',\
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
  }
