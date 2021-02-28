#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
#####################################

## Detect teleport
execute at @e[type=minecraft:chest_minecart,tag=Minecart] if entity @e[type=minecraft:chest_minecart,tag=Minecart] run tp @s[scores={DeadOwnTeam=1}] ~ ~ ~
execute at @e[type=minecraft:area_effect_cloud,tag=Minecart] unless entity @e[type=minecraft:chest_minecart,tag=Minecart] run tp @s[scores={DeadOwnTeam=1}] ~ ~ ~
scoreboard players set @s TeleportMessage 0
scoreboard players enable @s TeleportMessage