#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Jun 2020
## Version   : α-0.2
#####################################

## Add tag
tag @s add TeleportToMinecart

## Teleport
execute at @e[type=minecraft:chest_minecart,nbt={Tags:["Minecart"]}] run tp @p[tag=TeleportToMinecart] ~ ~10 ~

## Remove tag
tag @p[tag=Teleport] remove TeleportToMinecart