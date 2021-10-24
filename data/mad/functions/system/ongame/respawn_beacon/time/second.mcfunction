#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Calculate time
scoreboard players remove @s[tag=RespawnBeaconTick] Second 1
scoreboard players set @s[tag=RespawnBeaconTick,scores={Second=..-1}] Second 0

## Execute time for beacon
execute as @s[tag=RespawnBeaconTick,scores={Second=0}] at @s run function mad:system/ongame/respawn_beacon/time/execute_beacon