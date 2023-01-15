#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Set banner
setblock ~ ~1 ~ minecraft:blue_banner

## Set data
data modify block ~ ~1 ~ CustomName set from entity @p[predicate=mad:player/dead/b,sort=random] Inventory[0].tag.display.Name