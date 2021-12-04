#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.17
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set inventory
loot replace entity @p[tag=Host] inventory.4 loot mad:setting/choose_setting/choose_world_border
execute if score #mad WorldBorder matches 1.. run function mad:system/setting/choose_world_border/set_world_border_number
execute if score #mad WorldBorder matches 0 run function mad:system/setting/choose_world_border/set_world_border_limitless
loot replace entity @p[tag=Host] inventory.19 loot mad:setting/common/cancel
loot replace entity @p[tag=Host] inventory.22 loot mad:setting/common/reset
loot replace entity @p[tag=Host] inventory.25 loot mad:setting/common/determine