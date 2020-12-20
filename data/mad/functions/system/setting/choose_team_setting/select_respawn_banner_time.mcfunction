#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Change RespawnTime
scoreboard players add #mad RespawnTime 30
execute if score #mad RespawnTime matches 330 run scoreboard players set #mad RespawnTime 0

## Set inventory
function mad:system/setting/choose_team_setting/change_to