#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Set respawn structure
item replace block ~ ~ ~ container.13 with minecraft:red_banner

## Join team
team join TeamA @e[predicate=mad:armor_stand/respawn_banner/not_set_customname,limit=1]