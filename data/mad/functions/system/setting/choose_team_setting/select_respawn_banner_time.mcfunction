#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Change RespawnTime
scoreboard players add #mad RespawnTime 30
execute if score #mad RespawnTime matches 330 run scoreboard players set #mad RespawnTime 0

## Set inventory
function mad:system/setting/choose_team_setting/change_to