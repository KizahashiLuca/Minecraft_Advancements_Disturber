#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @s OnGround 2

## Clear effect
effect clear @s minecraft:slow_falling

## Add a tag
tag @s add Teleportee

## Teleport
summon minecraft:marker ~ ~ ~ {Tags:["Teleporter"],NoGravity:1b,Invulnerable:1b}
execute as @e[predicate=mad:preparation/teleport/teleporter] run scoreboard players operation @s ParticipantNumber = @p[predicate=mad:preparation/teleport/teleportee] ParticipantNumber

## Remove a tag
tag @p[predicate=mad:preparation/teleport/teleportee] remove Teleportee