#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 04 Dec 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Add 1000m
scoreboard players add #mad WorldBorder 1000
execute if predicate mad:system/begin/gui/world_border/gt_2k run scoreboard players set #mad WorldBorder 59999968
execute if predicate mad:system/begin/gui/world_border/unlimited run scoreboard players set #mad WorldBorder 59999968
execute if predicate mad:system/begin/gui/world_border/gt_60k run scoreboard players set #mad WorldBorder 0
function mad:system/begin/gui/world_border/change_to