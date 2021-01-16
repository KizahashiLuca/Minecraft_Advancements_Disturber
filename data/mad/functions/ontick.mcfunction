#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## ongame main
execute if score #mad Phase matches 21..22 if score #mad IsTeam matches 0 run function mad:system/ongame_individual/main
execute if score #mad Phase matches 21..22 if score #mad IsTeam matches 1 run function mad:system/ongame_team/main
execute if score #mad Phase matches 20 run function mad:system/preparation/main
execute if score #mad Phase matches 19 run function mad:system/pre_preparation/main
execute if score #mad Phase matches 0..17 run function mad:system/setting/branch