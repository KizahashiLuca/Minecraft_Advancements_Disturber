#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Set inventory
loot replace entity @p[tag=Host] inventory.12 loot mad:setting/choose_difficulty/choose_easy
loot replace entity @p[tag=Host] inventory.13 loot mad:setting/choose_difficulty/choose_normal
loot replace entity @p[tag=Host] inventory.14 loot mad:setting/choose_difficulty/choose_hard
loot replace entity @p[tag=Host] inventory.19 loot mad:setting/common/cancel
loot replace entity @p[tag=Host] inventory.25 loot mad:setting/common/determine

## Set nether_star above selected difficulty
execute if score #mad Difficulty matches 1 run loot replace entity @p[tag=Host] inventory.3 loot mad:setting/common/selected
execute if score #mad Difficulty matches 2 run loot replace entity @p[tag=Host] inventory.4 loot mad:setting/common/selected
execute if score #mad Difficulty matches 3 run loot replace entity @p[tag=Host] inventory.5 loot mad:setting/common/selected