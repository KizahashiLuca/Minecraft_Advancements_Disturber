#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect Gamemode
execute if entity @p[predicate=mad:player/host] run function mad:system/trial/set_trial/reject
execute unless entity @p[predicate=mad:player/host] run function mad:system/trial/set_trial/main