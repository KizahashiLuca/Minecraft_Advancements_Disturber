#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 27 Sep 2022
## Version   : β-2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Teleport
execute if predicate mad:gamerules/world_border/1600 in minecraft:overworld run spreadplayers ~ ~ 0 800 false @a[predicate=mad:system/item/teleport_arrow/teleporter]
execute if predicate mad:gamerules/world_border/1700 in minecraft:overworld run spreadplayers ~ ~ 0 850 false @a[predicate=mad:system/item/teleport_arrow/teleporter]
execute if predicate mad:gamerules/world_border/1800 in minecraft:overworld run spreadplayers ~ ~ 0 900 false @a[predicate=mad:system/item/teleport_arrow/teleporter]
execute if predicate mad:gamerules/world_border/1900 in minecraft:overworld run spreadplayers ~ ~ 0 950 false @a[predicate=mad:system/item/teleport_arrow/teleporter]
execute if predicate mad:gamerules/world_border/2000 in minecraft:overworld run spreadplayers ~ ~ 0 1000 false @a[predicate=mad:system/item/teleport_arrow/teleporter]
execute if predicate mad:gamerules/world_border/unlimited in minecraft:overworld run spreadplayers ~ ~ 0 1000 false @a[predicate=mad:system/item/teleport_arrow/teleporter]