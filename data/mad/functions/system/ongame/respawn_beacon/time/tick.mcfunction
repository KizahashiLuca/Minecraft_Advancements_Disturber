#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Add a tag
tag @s add RespawnBeaconTick

## Calculate time every tick
execute as @a[scores={Phase=21,Death=0,Sneak=1..},distance=..2] run scoreboard players remove @e[tag=RespawnBeaconTick] Tick 1

## Calculate time every second
execute as @s[tag=RespawnBeaconTick,scores={Tick=..-1}] run function mad:system/ongame/respawn_beacon/time/second

scoreboard players add @s[tag=RespawnBeaconTick,scores={Tick=..-1}] Tick 20

tag @s remove RespawnBeaconTick