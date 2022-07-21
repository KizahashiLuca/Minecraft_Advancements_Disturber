#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Calculate time
scoreboard players remove @s Second 1
scoreboard players set @s[predicate=mad:system/common/respawn_beacon/time/second/lt_zero] Second 0

## Execute time for beacon
execute as @s[predicate=mad:system/common/respawn_beacon/time/second/eq_zero] at @s run function mad:system/common/respawn_beacon/time/execute_beacon