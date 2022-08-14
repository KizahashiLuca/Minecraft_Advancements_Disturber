#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Number the players
scoreboard players operation @e[predicate=mad:system/wait/set_respawn_beacons/not_numbered,sort=random,limit=1] BeaconNumber = #mad BeaconNumber
execute as @e[predicate=mad:system/wait/set_respawn_beacons/not_numbered] if score @s BeaconNumber = #mad BeaconNumber run tag @s add MAD_Numbered

## Loop
scoreboard players add #mad BeaconNumber 1
execute if score #mad BeaconNumber <= #mad NumberOfBeacons run function mad:system/wait/set_respawn_beacons/numbering