#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Log in the mid of the game
execute as @a[predicate=mad:system/trial/login_midtime] run function mad:system/common/login_midtime

## Position
function mad:system/common/set_position/main

## Give item
execute as @a[predicate=mad:system/trial/use_item] run function mad:system/trial/supply_item

## Reset scoreboard
scoreboard players set @a Death 0