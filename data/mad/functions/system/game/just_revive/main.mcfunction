#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Give common items
loot give @s loot mad:system/game/first_items

## Spread players
execute unless data entity @s SpawnX at @e[predicate=mad:marker/world_spawn,limit=1] run function mad:system/game/just_revive/random_teleport/main