#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Right arrow
scoreboard players add #mad WorldBorder 100
execute if score #mad WorldBorder matches 2100 run scoreboard players set #mad WorldBorder 0

function mad:system/setting/choose_world_border/change_to