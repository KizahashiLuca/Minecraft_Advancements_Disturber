#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set inventory
loot replace entity @p[tag=Host] inventory.11 loot mad:setting/choose_world_border/left_arrow
loot replace entity @p[tag=Host] inventory.15 loot mad:setting/choose_world_border/right_arrow

loot replace entity @p[tag=Host] inventory.19 loot mad:setting/common/cancel
loot replace entity @p[tag=Host] inventory.25 loot mad:setting/common/determine

## Set inventory of map
execute if score #mad WorldBorder matches 0 run loot replace entity @p[tag=Host] inventory.13 loot mad:setting/choose_world_border/choose_unlimit
execute if score #mad WorldBorder matches 100 run loot replace entity @p[tag=Host] inventory.13 loot mad:setting/choose_world_border/choose_100x100
execute if score #mad WorldBorder matches 200 run loot replace entity @p[tag=Host] inventory.13 loot mad:setting/choose_world_border/choose_200x200
execute if score #mad WorldBorder matches 300 run loot replace entity @p[tag=Host] inventory.13 loot mad:setting/choose_world_border/choose_300x300
execute if score #mad WorldBorder matches 400 run loot replace entity @p[tag=Host] inventory.13 loot mad:setting/choose_world_border/choose_400x400
execute if score #mad WorldBorder matches 500 run loot replace entity @p[tag=Host] inventory.13 loot mad:setting/choose_world_border/choose_500x500
execute if score #mad WorldBorder matches 600 run loot replace entity @p[tag=Host] inventory.13 loot mad:setting/choose_world_border/choose_600x600
execute if score #mad WorldBorder matches 700 run loot replace entity @p[tag=Host] inventory.13 loot mad:setting/choose_world_border/choose_700x700
execute if score #mad WorldBorder matches 800 run loot replace entity @p[tag=Host] inventory.13 loot mad:setting/choose_world_border/choose_800x800
execute if score #mad WorldBorder matches 900 run loot replace entity @p[tag=Host] inventory.13 loot mad:setting/choose_world_border/choose_900x900
execute if score #mad WorldBorder matches 1000 run loot replace entity @p[tag=Host] inventory.13 loot mad:setting/choose_world_border/choose_1000x1000
execute if score #mad WorldBorder matches 1100 run loot replace entity @p[tag=Host] inventory.13 loot mad:setting/choose_world_border/choose_1100x1100
execute if score #mad WorldBorder matches 1200 run loot replace entity @p[tag=Host] inventory.13 loot mad:setting/choose_world_border/choose_1200x1200
execute if score #mad WorldBorder matches 1300 run loot replace entity @p[tag=Host] inventory.13 loot mad:setting/choose_world_border/choose_1300x1300
execute if score #mad WorldBorder matches 1400 run loot replace entity @p[tag=Host] inventory.13 loot mad:setting/choose_world_border/choose_1400x1400
execute if score #mad WorldBorder matches 1500 run loot replace entity @p[tag=Host] inventory.13 loot mad:setting/choose_world_border/choose_1500x1500
execute if score #mad WorldBorder matches 1600 run loot replace entity @p[tag=Host] inventory.13 loot mad:setting/choose_world_border/choose_1600x1600
execute if score #mad WorldBorder matches 1700 run loot replace entity @p[tag=Host] inventory.13 loot mad:setting/choose_world_border/choose_1700x1700
execute if score #mad WorldBorder matches 1800 run loot replace entity @p[tag=Host] inventory.13 loot mad:setting/choose_world_border/choose_1800x1800
execute if score #mad WorldBorder matches 1900 run loot replace entity @p[tag=Host] inventory.13 loot mad:setting/choose_world_border/choose_1900x1900
execute if score #mad WorldBorder matches 2000 run loot replace entity @p[tag=Host] inventory.13 loot mad:setting/choose_world_border/choose_2000x2000
