#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Clear inventory
clear @p[predicate=mad:player/host]

## Replace inventory
loot replace entity @p[predicate=mad:player/host] inventory.11 loot mad:system/begin/gui/root/initial_time
loot replace entity @p[predicate=mad:player/host] inventory.12 loot mad:system/begin/gui/root/adding_time
loot replace entity @p[predicate=mad:player/host] inventory.13 loot mad:system/begin/gui/root/minecart_interval
loot replace entity @p[predicate=mad:player/host] inventory.14 loot mad:system/begin/gui/root/gamerules
loot replace entity @p[predicate=mad:player/host] inventory.15 loot mad:system/begin/gui/root/world_border

loot replace entity @p[predicate=mad:player/host] inventory.8 loot mad:system/begin/gui/root/match_mode
loot replace entity @p[predicate=mad:player/host,predicate=mad:gamerules/match_mode/team] inventory.17 loot mad:system/begin/gui/root/team_match

loot replace entity @p[predicate=mad:player/host] inventory.19 loot mad:system/begin/gui/root/cancel_game
loot replace entity @p[predicate=mad:player/host] inventory.25 loot mad:system/begin/gui/root/start_game

## Set scoreboards for add-on
execute if predicate mad:phase/beginning run scoreboard players set #mad LoadAddon 2

## Change phase
scoreboard players set #mad Phase 1