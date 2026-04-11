#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect Gamemode
execute if entity @p[predicate=mad:player/host] run function mad:system/trial/set_trial/reject
execute unless entity @p[predicate=mad:player/host] run function mad:system/trial/set_trial/main