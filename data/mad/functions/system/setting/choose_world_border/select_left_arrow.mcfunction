#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Left arrow
scoreboard players remove #mad WorldBorder 100
execute if score #mad WorldBorder matches -100 run scoreboard players set #mad WorldBorder 2000

function mad:system/setting/choose_world_border/change_to