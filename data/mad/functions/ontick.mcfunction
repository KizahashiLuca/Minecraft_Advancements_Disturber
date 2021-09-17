#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
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

## Lavawalker
execute as @e[predicate=mad:ongame/lavawalker/magma_block] at @s run function mad:system/ongame/lavawalker/remove_block
execute as @a[predicate=mad:ongame/lavawalker/main] at @s align xyz positioned ~0.5 ~ ~0.5 run function mad:system/ongame/lavawalker/main