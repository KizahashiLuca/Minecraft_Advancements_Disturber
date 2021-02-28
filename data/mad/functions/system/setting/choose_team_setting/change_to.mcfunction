#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
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