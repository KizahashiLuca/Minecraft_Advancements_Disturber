#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Change BeaconNumber
scoreboard players add #mad BeaconNumber 1
execute if score #mad BeaconNumber matches 6 run scoreboard players set #mad BeaconNumber 1

## Set inventory
function mad:system/setting/choose_team_setting/change_to