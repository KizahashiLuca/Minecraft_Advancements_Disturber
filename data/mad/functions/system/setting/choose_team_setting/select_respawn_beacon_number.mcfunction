#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Change BeaconNumber
scoreboard players add #mad BeaconNumber 1
execute if score #mad BeaconNumber matches 6 run scoreboard players set #mad BeaconNumber 1

## Set inventory
function mad:system/setting/choose_team_setting/change_to