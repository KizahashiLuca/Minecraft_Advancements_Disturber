#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Change RespawnTime
scoreboard players add #mad RespawnTime 30
execute if score #mad RespawnTime matches 330 run scoreboard players set #mad RespawnTime 0

## Set inventory
function mad:system/setting/choose_team_setting/change_to