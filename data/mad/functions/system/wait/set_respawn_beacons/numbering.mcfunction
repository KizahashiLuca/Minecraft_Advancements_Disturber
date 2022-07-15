#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Number the players
scoreboard players operation @e[predicate=mad:system/wait/set_respawn_beacons/not_numbered,sort=random] BeaconNumber = #mad BeaconNumber
tag @a[predicate=mad:system/wait/set_respawn_beacons/add_number] add MAD_Numbered

## Loop
scoreboard players add #mad BeaconNumber 1
execute if score #mad BeaconNumber <= #mad NumberOfBeacons run function mad:system/wait/set_respawn_beacons/numbering