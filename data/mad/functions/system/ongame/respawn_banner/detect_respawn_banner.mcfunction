#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
#####################################

## Detect respawn structure
fill ~ ~ ~ ~ ~1 ~ minecraft:air destroy
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:chest"}},sort=nearest,limit=1]
kill @e[type=minecraft:area_effect_cloud,tag=RespawnBanner,sort=nearest,limit=1]

## Kill armor stand
kill @s