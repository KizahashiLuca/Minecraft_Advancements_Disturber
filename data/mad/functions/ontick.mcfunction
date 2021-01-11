#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Log in the mid of the game
execute if score #mad Phase matches 1..100 run function mad:system/midgame

## ongame main
execute if score #mad Phase matches 21..22 if score #mad IsTeam matches 0 run function mad:system/ongame_individual/main
execute if score #mad Phase matches 21..22 if score #mad IsTeam matches 1 run function mad:system/ongame_team/main
execute if score #mad Phase matches 20 run function mad:system/preparation/main
execute if score #mad Phase matches 19 run function mad:system/pre_preparation/main
execute if score #mad Phase matches 17 run function mad:system/team_member_setting/main
execute if score #mad Phase matches 16 run function mad:system/setting/choose_team_setting/main
execute if score #mad Phase matches 12 run function mad:system/setting/choose_respawn_beacon_number/main
execute if score #mad Phase matches 11 run function mad:system/setting/choose_respawn_banner_time/main
execute if score #mad Phase matches 10 run function mad:system/setting/choose_world_border/main
execute if score #mad Phase matches 9 run function mad:system/setting/choose_difficulty/main
execute if score #mad Phase matches 8 run function mad:system/setting/choose_gamerule/main
execute if score #mad Phase matches 7 run function mad:system/setting/choose_adding_time/main
execute if score #mad Phase matches 6 run function mad:system/setting/choose_initial_time/main
execute if score #mad Phase matches 5 run function mad:system/setting/choose_setting/main