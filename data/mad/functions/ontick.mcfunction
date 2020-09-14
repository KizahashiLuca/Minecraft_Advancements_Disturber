#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Log in the mid of the game
execute if score #mad Phase matches 1..100 run function mad:system/midgame

## ongame main
execute if score #mad Phase matches 21..22 if score #mad IsTeam matches 0 run function mad:system/ongame_indivisual/main
execute if score #mad Phase matches 20 if score #mad IsTeam matches 0 run function mad:system/preparation_indivisual/main
execute if score #mad Phase matches 21..22 if score #mad IsTeam matches 1 run function mad:system/ongame_team/main
execute if score #mad Phase matches 20 if score #mad IsTeam matches 1 run function mad:system/preparation_team/main
execute if score #mad Phase matches 17 run function mad:system/team_member_setting/main
execute if score #mad Phase matches 16 run function mad:system/setting/choose_team_setting/main
execute if score #mad Phase matches 15 run function mad:system/setting/choose_adding_time/main
execute if score #mad Phase matches 14 run function mad:system/setting/choose_gamerule/main
execute if score #mad Phase matches 13 run function mad:system/setting/choose_world_border/main
execute if score #mad Phase matches 12 run function mad:system/setting/choose_difficulty/main
execute if score #mad Phase matches 11 run function mad:system/setting/choose_initial_time/main
execute if score #mad Phase matches 10 run function mad:system/setting/choose_setting/main