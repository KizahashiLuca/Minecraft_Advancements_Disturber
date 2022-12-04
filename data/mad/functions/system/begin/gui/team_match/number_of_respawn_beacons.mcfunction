#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Change number of respawn beacons
scoreboard players add #mad NumberOfBeacons 1
execute if score #mad NumberOfBeacons matches 6.. run scoreboard players set #mad NumberOfBeacons 1

## Set inventory
function mad:system/begin/gui/team_match/change_to