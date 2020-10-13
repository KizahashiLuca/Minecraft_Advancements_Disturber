#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set inventory
loot replace entity @p[tag=Host] inventory.11 loot mad:setting/choose_initial_time/choose_100secs
loot replace entity @p[tag=Host] inventory.12 loot mad:setting/choose_initial_time/choose_100secs
loot replace entity @p[tag=Host] inventory.13 loot mad:setting/choose_initial_time/choose_100secs
loot replace entity @p[tag=Host] inventory.14 loot mad:setting/choose_initial_time/choose_100secs
loot replace entity @p[tag=Host] inventory.15 loot mad:setting/choose_initial_time/choose_100secs
loot replace entity @p[tag=Host] inventory.19 loot mad:setting/common/cancel
loot replace entity @p[tag=Host] inventory.25 loot mad:setting/common/determine

## Set nether_star above selected time limit
execute if score #mad TimeLimit matches 100 run loot replace entity @p[tag=Host] inventory.2 loot mad:setting/common/selected
execute if score #mad TimeLimit matches 200 run loot replace entity @p[tag=Host] inventory.3 loot mad:setting/common/selected
execute if score #mad TimeLimit matches 300 run loot replace entity @p[tag=Host] inventory.4 loot mad:setting/common/selected
execute if score #mad TimeLimit matches 400 run loot replace entity @p[tag=Host] inventory.5 loot mad:setting/common/selected
execute if score #mad TimeLimit matches 500 run loot replace entity @p[tag=Host] inventory.6 loot mad:setting/common/selected