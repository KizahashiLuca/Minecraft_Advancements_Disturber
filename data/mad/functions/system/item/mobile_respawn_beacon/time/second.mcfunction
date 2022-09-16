#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Calculate time
scoreboard players remove @s Second 1

## Execute time for beacon
execute as @s[predicate=mad:system/item/mobile_respawn_beacon/time/second/lt_zero] at @s run function mad:system/item/mobile_respawn_beacon/time/execute_beacon