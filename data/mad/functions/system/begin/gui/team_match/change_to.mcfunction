#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 04 Dec 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Clear inventory
clear @p[predicate=mad:player/host]

## Set inventory
loot replace entity @p[predicate=mad:player/host] inventory.4 loot mad:system/begin/gui/root/team_match
loot replace entity @p[predicate=mad:player/host] inventory.11 loot mad:system/begin/gui/team_match/team_member_select
loot replace entity @p[predicate=mad:player/host] inventory.12 loot mad:system/begin/gui/team_match/number_of_teams
loot replace entity @p[predicate=mad:player/host] inventory.13 loot mad:system/begin/gui/team_match/number_of_respawn_beacons
loot replace entity @p[predicate=mad:player/host] inventory.14 loot mad:system/begin/gui/team_match/kill_time
loot replace entity @p[predicate=mad:player/host] inventory.15 loot mad:system/begin/gui/team_match/death_penalty_time
loot replace entity @p[predicate=mad:player/host] inventory.17 loot mad:system/begin/gui/team_match/other_rules

loot replace entity @p[predicate=mad:player/host] inventory.19 loot mad:system/begin/gui/common/cancel
loot replace entity @p[predicate=mad:player/host] inventory.22 loot mad:system/begin/gui/common/reset
loot replace entity @p[predicate=mad:player/host] inventory.25 loot mad:system/begin/gui/common/ok

## Change phase
scoreboard players set #mad Phase 10