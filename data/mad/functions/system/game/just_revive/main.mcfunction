#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Give common items
loot give @s loot mad:system/game/first_items

## Spread players
execute at @e[predicate=mad:marker/world_spawn,limit=1] run function mad:system/game/just_revive/random_teleport/main