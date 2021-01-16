#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Left arrow
scoreboard players remove #mad WorldBorder 100
execute if score #mad WorldBorder matches -100 run scoreboard players set #mad WorldBorder 2000

function mad:system/setting/choose_world_border/change_to