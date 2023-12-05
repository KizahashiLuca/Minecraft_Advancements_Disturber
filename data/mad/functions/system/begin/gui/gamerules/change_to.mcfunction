#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Clear inventory
clear @p[predicate=mad:player/host]

## Replace inventory
loot replace entity @p[predicate=mad:player/host] inventory.4 loot mad:system/begin/gui/root/gamerules
loot replace entity @p[predicate=mad:player/host] inventory.12 loot mad:system/begin/gui/gamerules/weather_cycle
loot replace entity @p[predicate=mad:player/host] inventory.13 loot mad:system/begin/gui/gamerules/daylight_cycle
loot replace entity @p[predicate=mad:player/host] inventory.14 loot mad:system/begin/gui/gamerules/difficulty
loot replace entity @p[predicate=mad:player/host] inventory.19 loot mad:system/begin/gui/common/cancel
loot replace entity @p[predicate=mad:player/host] inventory.22 loot mad:system/begin/gui/common/reset
loot replace entity @p[predicate=mad:player/host] inventory.25 loot mad:system/begin/gui/common/ok

## Change phase
scoreboard players set #mad Phase 5