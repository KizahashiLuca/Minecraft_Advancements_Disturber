#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Mid log in
gamemode spectator @s
team leave @s

## Set scoreboard
scoreboard players set @s DeadOwnTeam 1
scoreboard players set @s TeleportMinecart 0
scoreboard players set @s TeleportCenter 0
scoreboard players enable @s TeleportMinecart
scoreboard players enable @s TeleportCenter

## Give effect
effect give @s minecraft:night_vision 1000000 1 true