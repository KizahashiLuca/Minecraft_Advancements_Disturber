#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect Gamemode
execute if entity @p[tag=Host] run function mad:system/finish/game_reject
execute unless entity @p[tag=Host] run function mad:system/setting/initial/set_game