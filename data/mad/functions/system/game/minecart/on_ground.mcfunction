#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 28 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect landing
execute as @e[predicate=mad:marker/minecart/summoned_minecart,sort=nearest,limit=1] run function mad:system/game/minecart/detect_minecart_landed

## Detect minecart
execute store success score @s HasLootTable run data get entity @s LootTable
execute as @s[predicate=mad:minecart/chest_minecart_exist] run function mad:system/game/minecart/explode_minecart