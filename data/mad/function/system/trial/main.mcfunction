#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Log in the mid of the game
execute as @a[predicate=mad:system/trial/login_midtime] run function mad:system/common/login_midtime

## Position
function mad:system/common/position/

## Give item
execute as @a[predicate=mad:system/trial/use_item] run function mad:system/trial/supply_item

## Reset scoreboard
scoreboard players set @a NumOfDeaths 0