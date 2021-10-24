#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect teleport
execute at @e[predicate=mad:ongame/entity/world_spawn,limit=1] run tp @s[scores={DeadOwnTeam=1}] ~ ~ ~
scoreboard players set @s TeleportCenter 0
scoreboard players enable @s TeleportCenter