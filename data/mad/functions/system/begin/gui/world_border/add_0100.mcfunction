#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Add 100m
scoreboard players add #mad WorldBorder 100
execute if predicate mad:system/begin/gui/world_border/gt_2k run scoreboard players set #mad WorldBorder 59999968
execute if predicate mad:system/begin/gui/world_border/unlimited run scoreboard players set #mad WorldBorder 59999968
execute if predicate mad:system/begin/gui/world_border/gt_60k run scoreboard players set #mad WorldBorder 0
function mad:system/begin/gui/world_border/change_to