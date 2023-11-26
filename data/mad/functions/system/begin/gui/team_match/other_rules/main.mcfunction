#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect dropping
execute if entity @e[predicate=mad:system/begin/gui/throw_item] run function mad:system/begin/gui/team_match/other_rules/change_to
kill @e[predicate=mad:system/begin/gui/throw_item]

## Detect inventory
execute as @p[predicate=mad:system/begin/gui/team_match/other_rules/master] run function mad:system/begin/gui/team_match/change_to
execute as @p[predicate=mad:system/begin/gui/team_match/other_rules/friendly_fire] run function mad:system/begin/gui/team_match/other_rules/friendly_fire
execute as @p[predicate=mad:system/begin/gui/team_match/other_rules/collision_rule] run function mad:system/begin/gui/team_match/other_rules/collision_rule
execute as @p[predicate=mad:system/begin/gui/team_match/other_rules/nametag_visibility] run function mad:system/begin/gui/team_match/other_rules/nametag_visibility
execute as @p[predicate=mad:system/begin/gui/team_match/other_rules/see_friendly_invisibles] run function mad:system/begin/gui/team_match/other_rules/see_friendly_invisibles
execute as @p[predicate=mad:system/begin/gui/team_match/other_rules/death_message_visibility] run function mad:system/begin/gui/team_match/other_rules/death_message_visibility

execute as @p[predicate=mad:system/begin/gui/team_match/other_rules/cancel] run function mad:system/begin/gui/team_match/other_rules/cancel
execute as @p[predicate=mad:system/begin/gui/team_match/other_rules/reset] run function mad:system/begin/gui/team_match/other_rules/reset
execute as @p[predicate=mad:system/begin/gui/team_match/other_rules/ok] run function mad:system/begin/gui/team_match/other_rules/ok