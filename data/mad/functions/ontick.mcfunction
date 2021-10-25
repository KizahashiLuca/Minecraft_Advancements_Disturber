#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## ongame main
execute if score #mad Phase matches 99 run function mad:system/onpause/main
execute if score #mad Phase matches 22 run function mad:system/finish/game_exit
execute if score #mad Phase matches 21 if score #mad IsTeam matches 0 run function mad:system/ongame_individual/main
execute if score #mad Phase matches 21 if score #mad IsTeam matches 1 run function mad:system/ongame_team/main
execute if score #mad Phase matches 20 run function mad:system/preparation/main
execute if score #mad Phase matches 19 run function mad:system/pre_preparation/main
execute if score #mad Phase matches 0..17 run function mad:system/setting/branch

## Detect teleporter
execute as @a[predicate=mad:ongame/teleporter/main] at @s run function mad:system/ongame/teleporter/main
execute as @e[tag=TeleporterDest] at @s run function mad:system/ongame/teleporter/time/tick