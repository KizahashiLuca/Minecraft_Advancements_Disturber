#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Stop game
execute if score #mad Phase matches 1..100 if score #mad IsTeam matches 0 run function mad:system/finish_indivisual/game_stop
execute if score #mad Phase matches 1..100 if score #mad IsTeam matches 1 run function mad:system/finish_team/game_stop