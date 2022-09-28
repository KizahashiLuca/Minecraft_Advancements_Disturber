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
execute if predicate mad:gamerules/world_border/0100 in minecraft:overworld run spreadplayers ~ ~ 0 50 false @a[predicate=mad:system/item/teleport_arrow/teleporter]
execute if predicate mad:gamerules/world_border/0200 in minecraft:overworld run spreadplayers ~ ~ 0 100 false @a[predicate=mad:system/item/teleport_arrow/teleporter]
execute if predicate mad:gamerules/world_border/0300 in minecraft:overworld run spreadplayers ~ ~ 0 150 false @a[predicate=mad:system/item/teleport_arrow/teleporter]
execute if predicate mad:gamerules/world_border/0400 in minecraft:overworld run spreadplayers ~ ~ 0 200 false @a[predicate=mad:system/item/teleport_arrow/teleporter]
execute if predicate mad:gamerules/world_border/0500 in minecraft:overworld run spreadplayers ~ ~ 0 250 false @a[predicate=mad:system/item/teleport_arrow/teleporter]