#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect dropping
execute if entity @e[predicate=mad:system/begin/gui/throw_item] run function mad:system/begin/gui/world_border/change_to
kill @e[predicate=mad:system/begin/gui/throw_item]

## Detect inventory
execute as @p[predicate=mad:system/begin/gui/world_border/master] run function mad:system/begin/gui/world_border/change_to
execute as @p[predicate=mad:system/begin/gui/world_border/digit_1000] run function mad:system/begin/gui/world_border/add_1000
execute as @p[predicate=mad:system/begin/gui/world_border/digit_0100] run function mad:system/begin/gui/world_border/add_0100
execute as @p[predicate=mad:system/begin/gui/world_border/digit_0010] run function mad:system/begin/gui/world_border/add_0010
execute as @p[predicate=mad:system/begin/gui/world_border/digit_0001] run function mad:system/begin/gui/world_border/add_0001
execute as @p[predicate=mad:system/begin/gui/world_border/center] run function mad:system/begin/gui/world_border/center
execute as @p[predicate=mad:system/begin/gui/world_border/cancel] run function mad:system/begin/gui/world_border/cancel
execute as @p[predicate=mad:system/begin/gui/world_border/reset] run function mad:system/begin/gui/world_border/reset
execute as @p[predicate=mad:system/begin/gui/world_border/ok] run function mad:system/begin/gui/world_border/ok