#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Detect respawn structure
setblock ~ ~ ~ air destroy
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:chest"}},sort=nearest,limit=1]
kill @e[type=minecraft:villager,nbt={Tags:["RespawnStructure"]},sort=nearest,limit=1]

## Kill cloud
kill @s