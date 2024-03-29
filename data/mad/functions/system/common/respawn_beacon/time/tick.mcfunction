#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag
tag @s add MAD_TickOfRespawnBeacon

## Calculate time every tick
execute as @a[predicate=mad:player/alive/on_sneak,distance=..2] run scoreboard players remove @e[predicate=mad:system/common/respawn_beacon/time/tick_of_respawn_beacon,sort=nearest,limit=1] Tick 1

## Calculate time every second
execute as @s[predicate=mad:system/common/respawn_beacon/time/tick/lt_zero] run function mad:system/common/respawn_beacon/time/second
scoreboard players add @s[predicate=mad:system/common/respawn_beacon/time/tick/lt_zero] Tick 20

## Remove a tag
tag @s remove MAD_TickOfRespawnBeacon