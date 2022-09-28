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
execute if predicate mad:gamerules/world_border/1100 in minecraft:overworld run spreadplayers ~ ~ 0 550 false @a[predicate=mad:system/item/teleport_arrow/teleporter]
execute if predicate mad:gamerules/world_border/1200 in minecraft:overworld run spreadplayers ~ ~ 0 600 false @a[predicate=mad:system/item/teleport_arrow/teleporter]
execute if predicate mad:gamerules/world_border/1300 in minecraft:overworld run spreadplayers ~ ~ 0 650 false @a[predicate=mad:system/item/teleport_arrow/teleporter]
execute if predicate mad:gamerules/world_border/1400 in minecraft:overworld run spreadplayers ~ ~ 0 700 false @a[predicate=mad:system/item/teleport_arrow/teleporter]
execute if predicate mad:gamerules/world_border/1500 in minecraft:overworld run spreadplayers ~ ~ 0 750 false @a[predicate=mad:system/item/teleport_arrow/teleporter]