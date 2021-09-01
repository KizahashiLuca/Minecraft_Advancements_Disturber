#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Sep 2021
## Version   : β-1.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Add 1000m
execute if score #mad WorldBorder matches 0 run scoreboard players set #mad WorldBorder 100
execute if score #mad WorldBorder matches 2001.. run scoreboard players set #mad WorldBorder 0
function mad:system/setting/choose_world_border/change_to