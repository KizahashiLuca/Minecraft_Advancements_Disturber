#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Calculate time
scoreboard players remove @s[tag=RespawnBeaconTick] Second 1
scoreboard players set @s[tag=RespawnBeaconTick,scores={Second=..-1}] Second 0

## Execute time for beacon
execute as @s[tag=RespawnBeaconTick,scores={Second=0}] at @s run function mad:system/ongame/respawn_beacon/time/execute_beacon