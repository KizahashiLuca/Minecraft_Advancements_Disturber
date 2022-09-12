#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 13 Sep 2022
## Version   : β-2.0.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Clear inventory
clear @p[predicate=mad:player/host]

## Replace inventory
loot replace entity @p[predicate=mad:player/host] inventory.4 loot mad:system/begin/gui/team_match/other_rules
loot replace entity @p[predicate=mad:player/host] inventory.11 loot mad:system/begin/gui/team_match/other_rules/friendly_fire
loot replace entity @p[predicate=mad:player/host] inventory.12 loot mad:system/begin/gui/team_match/other_rules/collision_rule
loot replace entity @p[predicate=mad:player/host] inventory.13 loot mad:system/begin/gui/team_match/other_rules/nametag_visibility
loot replace entity @p[predicate=mad:player/host] inventory.14 loot mad:system/begin/gui/team_match/other_rules/see_friendly_invisibles
loot replace entity @p[predicate=mad:player/host] inventory.15 loot mad:system/begin/gui/team_match/other_rules/death_message_visibility

loot replace entity @p[predicate=mad:player/host] inventory.19 loot mad:system/begin/gui/common/cancel
loot replace entity @p[predicate=mad:player/host] inventory.22 loot mad:system/begin/gui/common/reset
loot replace entity @p[predicate=mad:player/host] inventory.25 loot mad:system/begin/gui/common/ok

## Change phase
scoreboard players set #mad Phase 13