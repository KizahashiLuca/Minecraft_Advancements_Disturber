#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
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

execute as @a[scores={UseFungusStick=1..}] at @s run function mad:system/ongame/evoker_fangs_wand/main