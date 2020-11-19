#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Add scoreboard
scoreboard objectives add CompareResult dummy
scoreboard players set #mad CompareResult 0

## Add a tag
tag @s add CompareArmorStand

## Compare result
execute as @e[type=minecraft:armor_stand,tag=NotSetPlayer] run function mad:system/ongame/respawn_beacon/compare_armor_stand

## Teleport
execute as @e[type=minecraft:armor_stand] if score @s Participant = @p[tag=CompareArmorStand] Participant run tp @p[tag=CompareArmorStand] @s

## Remove a tag
tag @s remove CompareArmorStand
tag @s remove NotSetPlayerResBeacon

## Remove scoreboard
scoreboard objectives remove CompareResult