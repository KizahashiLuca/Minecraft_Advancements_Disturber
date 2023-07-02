#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
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