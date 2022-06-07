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
scoreboard players remove @s[tag=RespawnBeaconTick] Second 1
scoreboard players set @s[tag=RespawnBeaconTick,scores={Second=..-1}] Second 0

## Execute time for beacon
execute as @s[tag=RespawnBeaconTick,scores={Second=0}] at @s run function mad:system/ongame/mobile_respawn_beacon/time/execute_beacon