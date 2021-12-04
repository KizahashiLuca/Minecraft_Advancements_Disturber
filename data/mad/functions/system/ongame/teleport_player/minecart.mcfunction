#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.17
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect teleport
execute at @e[type=minecraft:chest_minecart,tag=Minecart] if entity @e[type=minecraft:chest_minecart,tag=Minecart] run tp @s[scores={DeadOwnTeam=1}] ~ ~ ~
execute at @e[type=minecraft:area_effect_cloud,tag=Minecart] unless entity @e[type=minecraft:chest_minecart,tag=Minecart] run tp @s[scores={DeadOwnTeam=1}] ~ ~ ~
scoreboard players set @s TeleportMinecart 0
scoreboard players enable @s TeleportMinecart