#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 13 Sep 2022
## Version   : β-2.0.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Clear inventory
clear @p[predicate=mad:player/host]

## Set scoreboard
scoreboard players operation #mad Digit1000 = #mad WorldBorder
scoreboard players operation #mad Digit1000 /= #mad 1000
scoreboard players operation #mad Digit0100 = #mad WorldBorder
scoreboard players operation #mad Digit0100 %= #mad 1000
scoreboard players operation #mad Digit0100 /= #mad 100
scoreboard players operation #mad Digit0010 = #mad WorldBorder
scoreboard players operation #mad Digit0010 %= #mad 1000
scoreboard players operation #mad Digit0010 %= #mad 100
scoreboard players operation #mad Digit0010 /= #mad 10
scoreboard players operation #mad Digit0001 = #mad WorldBorder
scoreboard players operation #mad Digit0001 %= #mad 1000
scoreboard players operation #mad Digit0001 %= #mad 100
scoreboard players operation #mad Digit0001 %= #mad 10

## Replace inventory
loot replace entity @p[predicate=mad:player/host] inventory.4 loot mad:system/begin/gui/root/world_border
execute if predicate mad:system/begin/gui/world_border/eq_zero run function mad:system/begin/gui/world_border/limited
execute if predicate mad:system/begin/gui/world_border/limited run function mad:system/begin/gui/world_border/limited
execute if predicate mad:system/begin/gui/world_border/gt_2k run function mad:system/begin/gui/world_border/limited
execute if predicate mad:system/begin/gui/world_border/unlimited run function mad:system/begin/gui/world_border/unlimited
execute if predicate mad:system/begin/gui/world_border/gt_60k run function mad:system/begin/gui/world_border/unlimited
loot replace entity @p[predicate=mad:player/host] inventory.19 loot mad:system/begin/gui/common/cancel
loot replace entity @p[predicate=mad:player/host] inventory.22 loot mad:system/begin/gui/common/reset
loot replace entity @p[predicate=mad:player/host,predicate=mad:system/begin/gui/world_border/ne_zero] inventory.25 loot mad:system/begin/gui/world_border/ok

## Change phase
scoreboard players set #mad Phase 6