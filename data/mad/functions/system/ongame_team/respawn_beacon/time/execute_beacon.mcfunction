#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Add a tag
tag @s add RespawnBeacon

## Setblock
fill ~ ~ ~ ~ ~1 ~ minecraft:air replace minecraft:observer

## Execute a beacon
execute as @a[tag=Participant] if score @s Participant = @e[tag=RespawnBeacon,limit=1] NumOfRespawn run tp @s ~ ~ ~
execute as @a[tag=Participant] if score @s Participant = @e[tag=RespawnBeacon,limit=1] NumOfRespawn run gamemode adventure @s
execute as @a[tag=Participant] if score @s Participant = @e[tag=RespawnBeacon,limit=1] NumOfRespawn run scoreboard players set @s Phase 21
execute as @a[tag=Participant] if score @s Participant = @e[tag=RespawnBeacon,limit=1] NumOfRespawn run scoreboard players set @s Death 0
particle minecraft:soul_fire_flame ~ ~ ~ 0.2 0.8 0.2 0.05 1000 normal @a
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1.0 2.0

## Kill
kill @s