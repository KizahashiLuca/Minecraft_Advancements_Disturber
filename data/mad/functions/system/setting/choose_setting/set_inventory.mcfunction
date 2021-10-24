#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Set inventory
loot replace entity @p[tag=Host] inventory.3 loot mad:setting/choose_setting/choose_initial_time
loot replace entity @p[tag=Host] inventory.4 loot mad:setting/choose_setting/choose_adding_time
loot replace entity @p[tag=Host] inventory.5 loot mad:setting/choose_setting/choose_minecart_interval
loot replace entity @p[tag=Host] inventory.12 loot mad:setting/choose_setting/choose_gamerule
loot replace entity @p[tag=Host] inventory.13 loot mad:setting/choose_setting/choose_difficulty
loot replace entity @p[tag=Host] inventory.14 loot mad:setting/choose_setting/choose_world_border

execute if score #mad IsTeam matches 0 run loot replace entity @p[tag=Host] inventory.8 loot mad:setting/choose_setting/is_individual
execute if score #mad IsTeam matches 1 run loot replace entity @p[tag=Host] inventory.8 loot mad:setting/choose_setting/is_team

execute if score #mad IsTeam matches 1 run loot replace entity @p[tag=Host] inventory.17 loot mad:setting/choose_setting/choose_team_setting

loot replace entity @p[tag=Host] inventory.19 loot mad:setting/choose_setting/cancel_game
loot replace entity @p[tag=Host] inventory.25 loot mad:setting/choose_setting/start_game