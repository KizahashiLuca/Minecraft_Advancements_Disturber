#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect dropping
execute if entity @e[predicate=mad:system/begin/gui/throw_item] run function mad:system/begin/gui/team_match/change_to
kill @e[predicate=mad:system/begin/gui/throw_item]

## Detect inventory
execute as @p[predicate=mad:system/begin/gui/team_match/master] run function mad:system/begin/gui/team_match/change_to
execute as @p[predicate=mad:system/begin/gui/team_match/friendly_fire] run function mad:system/begin/gui/team_match/friendly_fire
execute as @p[predicate=mad:system/begin/gui/team_match/collision_rule] run function mad:system/begin/gui/team_match/collision_rule
execute as @p[predicate=mad:system/begin/gui/team_match/nametag_visibility] run function mad:system/begin/gui/team_match/nametag_visibility
execute as @p[predicate=mad:system/begin/gui/team_match/see_friendly_invisibles] run function mad:system/begin/gui/team_match/see_friendly_invisibles
execute as @p[predicate=mad:system/begin/gui/team_match/death_message_visibility] run function mad:system/begin/gui/team_match/death_message_visibility
execute as @p[predicate=mad:system/begin/gui/team_match/team_member] run function mad:system/begin/gui/team_match/team_member
execute as @p[predicate=mad:system/begin/gui/team_match/number_of_teams] run function mad:system/begin/gui/team_match/number_of_teams
execute as @p[predicate=mad:system/begin/gui/team_match/number_of_respawn_beacons] run function mad:system/begin/gui/team_match/number_of_respawn_beacons
execute as @p[predicate=mad:system/begin/gui/team_match/respawn_banner_time] run function mad:system/begin/gui/team_match/respawn_banner_time
execute as @p[predicate=mad:system/begin/gui/team_match/cancel] run function mad:system/begin/gui/team_match/cancel
execute as @p[predicate=mad:system/begin/gui/team_match/reset] run function mad:system/begin/gui/team_match/reset
execute as @p[predicate=mad:system/begin/gui/team_match/ok] run function mad:system/begin/gui/team_match/ok