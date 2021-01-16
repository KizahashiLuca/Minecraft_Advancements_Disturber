#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Log in the mid of the game
gamemode spectator @a[team=!Participant,team=!TeamA,team=!TeamB,team=!TeamC,team=!TeamD,team=!TeamE,gamemode=!spectator]
team leave @a[team=!Participant,team=!TeamA,team=!TeamB,team=!TeamC,team=!TeamD,team=!TeamE,team=]
team leave @a[scores={Participant=1..},team=]
scoreboard players reset @a[scores={Participant=1..}]

## main branc
execute if score #mad Phase matches 17 run function mad:system/setting/team_member_setting/main
execute if score #mad Phase matches 16 run function mad:system/setting/choose_team_setting/main
execute if score #mad Phase matches 10 run function mad:system/setting/choose_world_border/main
execute if score #mad Phase matches 9 run function mad:system/setting/choose_difficulty/main
execute if score #mad Phase matches 8 run function mad:system/setting/choose_gamerule/main
execute if score #mad Phase matches 7 run function mad:system/setting/choose_adding_time/main
execute if score #mad Phase matches 6 run function mad:system/setting/choose_initial_time/main
execute if score #mad Phase matches 5 run function mad:system/setting/choose_setting/main