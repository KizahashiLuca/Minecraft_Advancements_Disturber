#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Right arrow
scoreboard players add #mad WorldBorder 100
execute if score #mad WorldBorder matches 2100 run scoreboard players set #mad WorldBorder 0

function mad:system/setting/choose_world_border/change_to