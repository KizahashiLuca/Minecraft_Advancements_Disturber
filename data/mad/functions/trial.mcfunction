#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect Gamemode
execute if entity @p[predicate=mad:player/host] run function mad:system/trial/set_trial/reject
execute unless entity @p[predicate=mad:player/host] run function mad:system/trial/set_trial/main