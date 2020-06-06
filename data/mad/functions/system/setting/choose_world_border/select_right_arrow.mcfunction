#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Jun 2020
## Version   : α-0.2
#####################################

## Right arrow
scoreboard players add #mad WorldBorder 100
execute if score #mad WorldBorder matches 2100 run scoreboard players set #mad WorldBorder 0

function mad:system/setting/choose_world_border/change_to