#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect version
execute store result score #mad DataVersion run data get entity @p DataVersion
execute if predicate mad:version/1.13 run scoreboard players set #mad Version 13
execute if predicate mad:version/1.14 run scoreboard players set #mad Version 14
execute if predicate mad:version/1.15 run scoreboard players set #mad Version 15
execute if predicate mad:version/1.16 run scoreboard players set #mad Version 16
execute if predicate mad:version/1.17 run scoreboard players set #mad Version 17
execute if predicate mad:version/1.18 run scoreboard players set #mad Version 18
execute if predicate mad:version/1.19 run scoreboard players set #mad Version 19
execute if predicate mad:version/1.19.3 run scoreboard players set #mad Version 193