#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect Gamemode
execute if entity @p[predicate=mad:player/host] run function mad:system/trial/set_trial/reject
execute unless entity @p[predicate=mad:player/host] run function mad:system/trial/set_trial/main