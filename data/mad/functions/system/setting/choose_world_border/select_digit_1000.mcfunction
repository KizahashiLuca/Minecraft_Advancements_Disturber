#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Add 1000m
scoreboard players add #mad WorldBorder 1000
execute if score #mad WorldBorder matches 2001.. run scoreboard players set #mad WorldBorder 0
function mad:system/setting/choose_world_border/change_to