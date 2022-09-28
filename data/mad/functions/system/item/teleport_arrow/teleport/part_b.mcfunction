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
execute if predicate mad:gamerules/world_border/0600 in minecraft:overworld run spreadplayers ~ ~ 0 300 false @a[predicate=mad:system/item/teleport_arrow/teleporter]
execute if predicate mad:gamerules/world_border/0700 in minecraft:overworld run spreadplayers ~ ~ 0 350 false @a[predicate=mad:system/item/teleport_arrow/teleporter]
execute if predicate mad:gamerules/world_border/0800 in minecraft:overworld run spreadplayers ~ ~ 0 400 false @a[predicate=mad:system/item/teleport_arrow/teleporter]
execute if predicate mad:gamerules/world_border/0900 in minecraft:overworld run spreadplayers ~ ~ 0 450 false @a[predicate=mad:system/item/teleport_arrow/teleporter]
execute if predicate mad:gamerules/world_border/1000 in minecraft:overworld run spreadplayers ~ ~ 0 500 false @a[predicate=mad:system/item/teleport_arrow/teleporter]