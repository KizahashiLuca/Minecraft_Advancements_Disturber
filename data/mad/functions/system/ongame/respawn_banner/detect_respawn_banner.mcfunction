#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect respawn structure
fill ~ ~ ~ ~ ~1 ~ minecraft:air destroy
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:chest"}},sort=nearest,limit=1]
kill @e[type=minecraft:area_effect_cloud,tag=RespawnBanner,sort=nearest,limit=1]

## Kill armor stand
kill @s