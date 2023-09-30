#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Change number of respawn beacons
scoreboard players add #mad NumberOfBeacons 1
execute if score #mad NumberOfBeacons matches 6.. run scoreboard players set #mad NumberOfBeacons 1

## Set inventory
function mad:system/begin/gui/team_match/change_to