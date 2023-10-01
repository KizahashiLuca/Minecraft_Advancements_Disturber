#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Add 100m
scoreboard players add #mad WorldBorder 100
execute if predicate mad:system/begin/gui/world_border/gt_2k run scoreboard players set #mad WorldBorder 59999968
execute if predicate mad:system/begin/gui/world_border/unlimited run scoreboard players set #mad WorldBorder 59999968
execute if predicate mad:system/begin/gui/world_border/gt_60k run scoreboard players set #mad WorldBorder 0
function mad:system/begin/gui/world_border/change_to