#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Detect teleport
execute as @a[gamemode=!survival,scores={TeleportMessage=1}] at @e[type=minecraft:chest_minecart,nbt={Tags:["Minecart"]}] run tp @s ~ ~10 ~
execute as @a[gamemode=!survival,scores={TeleportMessage=2}] at @e[type=minecraft:area_effect_cloud,nbt={Tags:["Minecart"]}] run tp @s ~ ~ ~
scoreboard players set @a TeleportMessage 0
scoreboard players enable @a TeleportMessage