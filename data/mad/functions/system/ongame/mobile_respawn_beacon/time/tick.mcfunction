#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag
tag @s add RespawnBeaconTick

## Calculate time every tick
execute as @a[predicate=mad:ongame/player/participant_alive_on_sneak,distance=..2] run scoreboard players remove @e[tag=RespawnBeaconTick] Tick 1

## Calculate time every second
execute as @s[tag=RespawnBeaconTick,scores={Tick=..-1}] run function mad:system/ongame/mobile_respawn_beacon/time/second

scoreboard players add @s[tag=RespawnBeaconTick,scores={Tick=..-1}] Tick 20

tag @s remove RespawnBeaconTick