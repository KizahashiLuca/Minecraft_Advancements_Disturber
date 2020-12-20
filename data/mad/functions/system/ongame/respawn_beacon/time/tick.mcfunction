#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Add a tag
tag @s add RespawnBeaconTick

## Calculate time every tick
execute as @a[scores={Phase=21,Death=0,Sneak=1..},distance=..2] run scoreboard players remove @e[tag=RespawnBeaconTick] Tick 1
scoreboard players set @s[tag=RespawnBeaconTick,scores={Tick=..-1}] Tick 19

## Calculate time every second
execute as @s[scores={Tick=0}] run function mad:system/ongame/respawn_beacon/time/second

tag @s remove RespawnBeaconTick