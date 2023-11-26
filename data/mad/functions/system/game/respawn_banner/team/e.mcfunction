#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set respawn structure
item replace block ~ ~ ~ container.13 with minecraft:purple_banner

## Join team
team join TeamE @e[predicate=mad:armor_stand/respawn_banner/not_set_customname,limit=1]