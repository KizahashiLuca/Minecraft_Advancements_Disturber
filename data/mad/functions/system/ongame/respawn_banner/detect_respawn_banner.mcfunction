#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect respawn structure
fill ~ ~ ~ ~ ~1 ~ minecraft:air destroy
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:chest"}},sort=nearest,limit=1]
kill @e[type=minecraft:area_effect_cloud,tag=RespawnBanner,sort=nearest,limit=1]

## Kill armor stand
kill @s