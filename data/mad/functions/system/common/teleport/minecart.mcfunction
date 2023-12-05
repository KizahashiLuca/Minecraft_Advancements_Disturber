#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @s TeleportMinecart 0
scoreboard players enable @s TeleportMinecart

## Teleport to minecart
execute if entity @e[predicate=mad:minecart/minecart] at @e[predicate=mad:minecart/minecart,limit=1] run tp @s[predicate=mad:system/common/teleport/player] ~ ~ ~
execute unless entity @e[predicate=mad:minecart/minecart] at @e[predicate=mad:marker/minecart/where_summon_minecart,limit=1] run tp @s[predicate=mad:system/common/teleport/player] ~ ~ ~