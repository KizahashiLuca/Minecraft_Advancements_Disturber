#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Set world spawn
setworldspawn ~ ~ ~
spawnpoint @a ~ ~ ~

## Set world border & cloud
worldborder center ~ ~
execute if score #mad WorldBorder matches 0 run worldborder set 60000000
execute if score #mad WorldBorder matches 100 run function mad:system/pre_preparation/world_border/0100
execute if score #mad WorldBorder matches 200 run function mad:system/pre_preparation/world_border/0200
execute if score #mad WorldBorder matches 300 run function mad:system/pre_preparation/world_border/0300
execute if score #mad WorldBorder matches 400 run function mad:system/pre_preparation/world_border/0400
execute if score #mad WorldBorder matches 500 run function mad:system/pre_preparation/world_border/0500
execute if score #mad WorldBorder matches 600 run function mad:system/pre_preparation/world_border/0600
execute if score #mad WorldBorder matches 700 run function mad:system/pre_preparation/world_border/0700
execute if score #mad WorldBorder matches 800 run function mad:system/pre_preparation/world_border/0800
execute if score #mad WorldBorder matches 900 run function mad:system/pre_preparation/world_border/0900
execute if score #mad WorldBorder matches 1000 run function mad:system/pre_preparation/world_border/1000