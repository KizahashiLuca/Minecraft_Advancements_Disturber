#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect Gamemode
execute if entity @p[tag=Host] run function mad:system/finish/game_reject
execute unless entity @p[tag=Host] run function mad:system/setting/initial/set_game