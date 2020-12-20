#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Stop game
execute if score #mad Phase matches 1..100 if score #mad IsTeam matches 0 run function mad:system/finish_individual/game_stop
execute if score #mad Phase matches 1..100 if score #mad IsTeam matches 1 run function mad:system/finish_team/game_stop