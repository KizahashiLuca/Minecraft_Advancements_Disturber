#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Change respawn banner time
scoreboard players add #mad RespawnBannerTime 60
execute if score #mad RespawnBannerTime matches 360.. run scoreboard players set #mad RespawnBannerTime -60

## Set inventory
function mad:system/begin/gui/team_match/change_to