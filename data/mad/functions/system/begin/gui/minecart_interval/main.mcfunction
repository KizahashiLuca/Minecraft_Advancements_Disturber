#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect dropping
execute if entity @e[predicate=mad:system/begin/gui/throw_item] run function mad:system/begin/gui/minecart_interval/change_to
kill @e[predicate=mad:system/begin/gui/throw_item]

## Detect inventory
execute as @p[predicate=mad:system/begin/gui/minecart_interval/master] run function mad:system/begin/gui/minecart_interval/change_to
execute as @p[predicate=mad:system/begin/gui/minecart_interval/digit_0100] run function mad:system/begin/gui/minecart_interval/add_0100
execute as @p[predicate=mad:system/begin/gui/minecart_interval/digit_0010] run function mad:system/begin/gui/minecart_interval/add_0010
execute as @p[predicate=mad:system/begin/gui/minecart_interval/digit_0001] run function mad:system/begin/gui/minecart_interval/add_0001
execute as @p[predicate=mad:system/begin/gui/minecart_interval/second] run function mad:system/begin/gui/minecart_interval/change_to
execute as @p[predicate=mad:system/begin/gui/minecart_interval/cancel] run function mad:system/begin/gui/minecart_interval/cancel
execute as @p[predicate=mad:system/begin/gui/minecart_interval/reset] run function mad:system/begin/gui/minecart_interval/reset
execute as @p[predicate=mad:system/begin/gui/minecart_interval/ok] run function mad:system/begin/gui/minecart_interval/ok