#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect landing
execute if entity @e[type=minecraft:area_effect_cloud,tag=Minecart] run function mad:system/ongame/minecart/detect_minecart_landed

## Detect minecart
execute store success score @s HasLootTable run data get entity @s LootTable
execute as @s[predicate=mad:ongame/minecart/chest_minecart_exist] run function mad:system/ongame/minecart/explode_minecart