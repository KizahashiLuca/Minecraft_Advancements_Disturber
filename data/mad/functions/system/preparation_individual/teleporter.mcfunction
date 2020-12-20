#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set scoreboard
scoreboard players set @s OnGround 2

## Clear effect
effect clear @s minecraft:slow_falling

## Add a tag
tag @s add Teleporter

## Teleport
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["Teleporter"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
execute as @e[type=minecraft:area_effect_cloud,tag=Teleporter] run scoreboard players operation @s Participant = @p[team=Participant,tag=Teleporter] Participant

## Remove a tag
tag @p[team=Participant,tag=Teleporter] remove Teleporter