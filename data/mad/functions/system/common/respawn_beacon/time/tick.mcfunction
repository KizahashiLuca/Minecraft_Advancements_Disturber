#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag
tag @s add MAD_TickOfRespawnBeacon

## Calculate time every second
execute as @s[predicate=mad:system/common/respawn_beacon/time/tick/eq_zero] run function mad:system/common/respawn_beacon/time/second

## Calculate time every tick
execute as @a[predicate=mad:player/alive/on_sneak,distance=..2] run scoreboard players remove @e[predicate=mad:system/common/respawn_beacon/time/tick_of_respawn_beacon,sort=nearest,limit=1] Tick 1
scoreboard players add @s[predicate=mad:system/common/respawn_beacon/time/tick/lt_zero] Tick 20

## Remove a tag
tag @s remove MAD_TickOfRespawnBeacon