#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Detect teleport
execute at @e[type=minecraft:chest_minecart,nbt={Tags:["Minecart"]}] run tp @s ~ ~10 ~
scoreboard players set @s TeleportMessage 0
scoreboard players enable @s TeleportMessage