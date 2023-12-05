#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
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
effect give @s minecraft:resistance infinite 6 true
effect give @s minecraft:fire_resistance infinite 6 true
effect give @s minecraft:water_breathing infinite 6 true
effect give @s minecraft:saturation infinite 10 true
effect give @s minecraft:regeneration infinite 10 true
effect give @s minecraft:invisibility infinite 1 true
effect give @s minecraft:night_vision infinite 1 true
## Set scoreboard
scoreboard players set @s TeleportMinecart 0
scoreboard players enable @s TeleportMinecart
scoreboard players set @s TeleportCenter 0
scoreboard players enable @s TeleportCenter
#### Remove advancements
advancement revoke @s everything