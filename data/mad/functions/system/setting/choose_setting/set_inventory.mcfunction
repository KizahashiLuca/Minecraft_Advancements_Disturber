#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set inventory
execute if score #mad IsTeam matches 0 run loot replace entity @p[tag=Host] inventory.4 loot mad:setting/choose_setting/is_individual
execute if score #mad IsTeam matches 1 run loot replace entity @p[tag=Host] inventory.4 loot mad:setting/choose_setting/is_team

loot replace entity @p[tag=Host] inventory.11 loot mad:setting/choose_setting/choose_initial_time
loot replace entity @p[tag=Host] inventory.12 loot mad:setting/choose_setting/choose_difficulty
loot replace entity @p[tag=Host] inventory.13 loot mad:setting/choose_setting/choose_world_border
loot replace entity @p[tag=Host] inventory.14 loot mad:setting/choose_setting/choose_gamerule
loot replace entity @p[tag=Host] inventory.15 loot mad:setting/choose_setting/choose_adding_time

execute if score #mad IsTeam matches 1 run loot replace entity @p[tag=Host] inventory.17 loot mad:setting/choose_setting/choose_team_setting

loot replace entity @p[tag=Host] inventory.19 loot mad:setting/choose_setting/cancel_game
loot replace entity @p[tag=Host] inventory.25 loot mad:setting/choose_setting/start_game