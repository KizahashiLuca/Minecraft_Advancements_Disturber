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
execute if score #mad Phase matches 21..22 run function mad:system/ongame/main
execute if score #mad Phase matches 20 run function mad:system/preparation/main
execute if score #mad Phase matches 13 run function mad:system/setting/choose_world_border/main
execute if score #mad Phase matches 12 run function mad:system/setting/choose_difficulty/main
execute if score #mad Phase matches 11 run function mad:system/setting/choose_initial_time/main
execute if score #mad Phase matches 10 run function mad:system/setting/choose_setting/main