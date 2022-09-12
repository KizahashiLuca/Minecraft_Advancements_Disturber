#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 13 Sep 2022
## Version   : β-2.0.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Change number of respawn beacons
scoreboard players add #mad NumberOfBeacons 1
execute if score #mad NumberOfBeacons matches 6.. run scoreboard players set #mad NumberOfBeacons 1

## Set inventory
function mad:system/begin/gui/team_match/change_to