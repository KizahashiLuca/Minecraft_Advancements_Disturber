#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect Gamemode
execute if entity @p[predicate=mad:player/host] run function mad:system/finish/reject_game/main
execute unless entity @p[predicate=mad:player/host] run function mad:system/begin/start_game/team/set_game