#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 04 Dec 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Log in the mid of the game
#### Spectator
gamemode spectator @s
team leave @s
scoreboard players reset @s

## Set player
#### Set bossbar
bossbar set minecraft:bossbar players @a[predicate=mad:player/not_participant]
#### Reset inventory
clear @s
#### Reset experience
experience set @s 0 levels
experience set @s 0 points
#### Set effect
effect clear @s
effect give @s minecraft:resistance 1000000 6 true
effect give @s minecraft:fire_resistance 1000000 6 true
effect give @s minecraft:water_breathing 1000000 6 true
effect give @s minecraft:saturation 1000000 10 true
effect give @s minecraft:regeneration 1000000 10 true
effect give @s minecraft:night_vision 1000000 1 true
## Set scoreboard
scoreboard players set @s TeleportMinecart 0
scoreboard players enable @s TeleportMinecart
scoreboard players set @s TeleportCenter 0
scoreboard players enable @s TeleportCenter
#### Remove advancements
advancement revoke @s everything