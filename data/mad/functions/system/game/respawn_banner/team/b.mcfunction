#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set respawn structure
item replace block ~ ~ ~ container.13 with minecraft:blue_banner

## Join team
team join TeamB @e[predicate=mad:armor_stand/respawn_banner/not_set_customname,limit=1]