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
scoreboard players set @s TeleportMinecart 0
scoreboard players enable @s TeleportMinecart

## Teleport to minecart
execute if entity @e[predicate=mad:minecart/minecart] at @e[predicate=mad:minecart/minecart,limit=1] run tp @s[predicate=mad:system/common/teleport/player] ~ ~ ~
execute unless entity @e[predicate=mad:minecart/minecart] at @e[predicate=mad:marker/minecart/where_summon_minecart,limit=1] run tp @s[predicate=mad:system/common/teleport/player] ~ ~ ~