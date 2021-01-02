#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Add a tag
tag @s add RespawnBeaconTick

## Calculate time every tick
execute as @a[scores={Phase=21,Death=0,Sneak=1..},distance=..2] run scoreboard players remove @e[tag=RespawnBeaconTick] Tick 1
scoreboard players set @s[tag=RespawnBeaconTick,scores={Tick=..-1}] Tick 19

## Calculate time every second
execute as @s[tag=RespawnBeaconTick,scores={Tick=0}] run function mad:system/ongame/mobile_respawn_beacon/time/second

tag @s remove RespawnBeaconTick