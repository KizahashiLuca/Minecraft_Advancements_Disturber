#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Calculate time
scoreboard players remove @s Second 1

## Execute time for beacon
execute as @s[predicate=mad:system/common/respawn_beacon/time/second/lt_zero] at @s run function mad:system/common/respawn_beacon/time/execute_beacon