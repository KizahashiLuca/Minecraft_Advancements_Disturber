#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.17
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set world spawn
setworldspawn ~ ~ ~
spawnpoint @a ~ ~ ~

## Set world border & cloud
worldborder center ~ ~
execute if score #mad WorldBorder matches 1100 run function mad:system/pre_preparation/world_border/1100
execute if score #mad WorldBorder matches 1200 run function mad:system/pre_preparation/world_border/1200
execute if score #mad WorldBorder matches 1300 run function mad:system/pre_preparation/world_border/1300
execute if score #mad WorldBorder matches 1400 run function mad:system/pre_preparation/world_border/1400
execute if score #mad WorldBorder matches 1500 run function mad:system/pre_preparation/world_border/1500
execute if score #mad WorldBorder matches 1600 run function mad:system/pre_preparation/world_border/1600
execute if score #mad WorldBorder matches 1700 run function mad:system/pre_preparation/world_border/1700
execute if score #mad WorldBorder matches 1800 run function mad:system/pre_preparation/world_border/1800
execute if score #mad WorldBorder matches 1900 run function mad:system/pre_preparation/world_border/1900
execute if score #mad WorldBorder matches 2000 run function mad:system/pre_preparation/world_border/2000