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
clear @p[tag=Host]

## Set scoreboard
scoreboard players operation @p[tag=Host] TeamNumber = #mad TeamNumber
scoreboard players operation @p[tag=Host] BeaconNumber = #mad BeaconNumber
scoreboard players operation @p[tag=Host] RespawnTime = #mad RespawnTime

## Set inventory
function mad:system/setting/choose_team_setting/set_inventory

## Change phase
scoreboard players set #mad Phase 16