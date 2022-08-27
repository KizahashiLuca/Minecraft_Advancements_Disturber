#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 28 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @s TeleportCenter 0
scoreboard players enable @s TeleportCenter

## Teleport to center of world
execute at @e[predicate=mad:marker/world_spawn,limit=1] run tp @s[predicate=mad:system/common/teleport/player] ~ ~ ~