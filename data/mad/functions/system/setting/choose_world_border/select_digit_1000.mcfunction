#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.17
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Add 1000m
scoreboard players add #mad WorldBorder 1000
execute if score #mad WorldBorder matches 2001.. run scoreboard players set #mad WorldBorder 0
function mad:system/setting/choose_world_border/change_to