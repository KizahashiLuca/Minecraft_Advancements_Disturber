#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
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