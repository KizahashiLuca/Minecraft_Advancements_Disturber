#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Clear inventory
clear @p[predicate=mad:player/host]

## Set inventory
loot replace entity @p[predicate=mad:player/host] inventory.4 loot mad:system/begin/gui/root/team_match
loot replace entity @p[predicate=mad:player/host] inventory.9 loot mad:system/begin/gui/team_match/friendly_fire
loot replace entity @p[predicate=mad:player/host] inventory.10 loot mad:system/begin/gui/team_match/collision_rule
loot replace entity @p[predicate=mad:player/host] inventory.11 loot mad:system/begin/gui/team_match/nametag_visibility
loot replace entity @p[predicate=mad:player/host] inventory.12 loot mad:system/begin/gui/team_match/see_friendly_invisibles
loot replace entity @p[predicate=mad:player/host] inventory.13 loot mad:system/begin/gui/team_match/death_message_visibility
loot replace entity @p[predicate=mad:player/host] inventory.14 loot mad:system/begin/gui/team_match/team_member
loot replace entity @p[predicate=mad:player/host] inventory.15 loot mad:system/begin/gui/team_match/number_of_teams
loot replace entity @p[predicate=mad:player/host] inventory.16 loot mad:system/begin/gui/team_match/number_of_respawn_beacons
loot replace entity @p[predicate=mad:player/host] inventory.17 loot mad:system/begin/gui/team_match/respawn_banner_time

loot replace entity @p[predicate=mad:player/host] inventory.19 loot mad:system/begin/gui/common/cancel
loot replace entity @p[predicate=mad:player/host] inventory.22 loot mad:system/begin/gui/common/reset
loot replace entity @p[predicate=mad:player/host] inventory.25 loot mad:system/begin/gui/common/ok

## Change phase
scoreboard players set #mad Phase 15