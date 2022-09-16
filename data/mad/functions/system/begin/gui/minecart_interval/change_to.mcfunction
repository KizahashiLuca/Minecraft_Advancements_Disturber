#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Clear inventory
clear @p[predicate=mad:player/host]

## Set scoreboard
scoreboard players operation #mad Digit0100 = #mad CartInterval
scoreboard players operation #mad Digit0100 /= #mad 100
scoreboard players operation #mad Digit0010 = #mad CartInterval
scoreboard players operation #mad Digit0010 %= #mad 100
scoreboard players operation #mad Digit0010 /= #mad 10
scoreboard players operation #mad Digit0001 = #mad CartInterval
scoreboard players operation #mad Digit0001 %= #mad 100
scoreboard players operation #mad Digit0001 %= #mad 10

## Replace inventory
loot replace entity @p[predicate=mad:player/host] inventory.4 loot mad:system/begin/gui/root/minecart_interval
loot replace entity @p[predicate=mad:player/host] inventory.12 loot mad:system/begin/gui/number/digit_0100
loot replace entity @p[predicate=mad:player/host] inventory.13 loot mad:system/begin/gui/number/digit_0010
loot replace entity @p[predicate=mad:player/host] inventory.14 loot mad:system/begin/gui/number/digit_0001
loot replace entity @p[predicate=mad:player/host] inventory.15 loot mad:system/begin/gui/number/alphabet_s
loot replace entity @p[predicate=mad:player/host] inventory.19 loot mad:system/begin/gui/common/cancel
loot replace entity @p[predicate=mad:player/host] inventory.22 loot mad:system/begin/gui/common/reset
loot replace entity @p[predicate=mad:player/host,predicate=mad:system/begin/gui/minecart_interval/gt_zero] inventory.25 loot mad:system/begin/gui/minecart_interval/ok

## Change phase
scoreboard players set #mad Phase 4