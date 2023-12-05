#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Calculate time
scoreboard players remove @s Second 1

## Execute time for beacon
execute as @s[predicate=mad:system/item/mobile_respawn_beacon/time/second/lt_zero] at @s run function mad:system/item/mobile_respawn_beacon/time/execute_beacon