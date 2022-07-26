#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Position
function mad:system/common/set_position/main

## Give item
execute as @a[predicate=mad:system/trial/use_item] run function mad:system/trial/supply_item

## Reset scoreboard
scoreboard players set @a Death 0