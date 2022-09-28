#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 27 Sep 2022
## Version   : β-2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect dropping
execute if entity @e[predicate=mad:system/begin/gui/throw_item] run function mad:system/begin/gui/team_match/change_to
kill @e[predicate=mad:system/begin/gui/throw_item]

## Detect inventory
execute as @p[predicate=mad:system/begin/gui/team_match/master] run function mad:system/begin/gui/team_match/change_to
execute as @p[predicate=mad:system/begin/gui/team_match/team_member_select] run function mad:system/begin/gui/team_match/team_member_select
execute as @p[predicate=mad:system/begin/gui/team_match/number_of_teams] run function mad:system/begin/gui/team_match/number_of_teams
execute as @p[predicate=mad:system/begin/gui/team_match/number_of_respawn_beacons] run function mad:system/begin/gui/team_match/number_of_respawn_beacons
execute as @p[predicate=mad:system/begin/gui/team_match/kill_time] run function mad:system/begin/gui/team_match/kill_time/change_to
execute as @p[predicate=mad:system/begin/gui/team_match/death_penalty_time] run function mad:system/begin/gui/team_match/death_penalty_time/change_to
execute as @p[predicate=mad:system/begin/gui/team_match/other_rules] run function mad:system/begin/gui/team_match/other_rules/change_to

execute as @p[predicate=mad:system/begin/gui/team_match/cancel] run function mad:system/begin/gui/team_match/cancel
execute as @p[predicate=mad:system/begin/gui/team_match/reset] run function mad:system/begin/gui/team_match/reset
execute as @p[predicate=mad:system/begin/gui/team_match/ok] run function mad:system/begin/gui/team_match/ok