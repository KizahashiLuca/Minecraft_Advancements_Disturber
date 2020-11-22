#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Detect teleport
execute at @e[type=minecraft:chest_minecart,nbt={Tags:["Minecart"]}] run tp @s ~ ~10 ~
scoreboard players set @s TeleportMessage 0
scoreboard players enable @s TeleportMessage