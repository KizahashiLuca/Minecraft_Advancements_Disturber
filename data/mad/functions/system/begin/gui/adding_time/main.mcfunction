#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect dropping
execute if entity @e[predicate=mad:system/begin/gui/throw_item] run function mad:system/begin/gui/adding_time/change_to
kill @e[predicate=mad:system/begin/gui/throw_item]

## Detect inventory
execute as @p[predicate=mad:system/begin/gui/adding_time/master] run function mad:system/begin/gui/adding_time/change_to
execute as @p[predicate=mad:system/begin/gui/adding_time/digit_0100] run function mad:system/begin/gui/adding_time/add_0100
execute as @p[predicate=mad:system/begin/gui/adding_time/digit_0010] run function mad:system/begin/gui/adding_time/add_0010
execute as @p[predicate=mad:system/begin/gui/adding_time/digit_0001] run function mad:system/begin/gui/adding_time/add_0001
execute as @p[predicate=mad:system/begin/gui/adding_time/second] run function mad:system/begin/gui/adding_time/change_to
execute as @p[predicate=mad:system/begin/gui/adding_time/cancel] run function mad:system/begin/gui/adding_time/cancel
execute as @p[predicate=mad:system/begin/gui/adding_time/reset] run function mad:system/begin/gui/adding_time/reset
execute as @p[predicate=mad:system/begin/gui/adding_time/ok] run function mad:system/begin/gui/adding_time/ok