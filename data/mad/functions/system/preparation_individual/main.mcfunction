#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Detect onground
execute as @a[scores={OnGround=0}] store result score @s OnGround run data get entity @s OnGround 1
execute as @a[scores={OnGround=0}] at @s if block ~ ~ ~ minecraft:water if block ~ ~1 ~ minecraft:water run function mad:system/preparation_individual/teleporter
execute as @a[scores={OnGround=1}] at @s run function mad:system/preparation_individual/teleporter

## Teleport
execute as @a[scores={OnGround=2}] run function mad:system/preparation_individual/teleport

## Change phase
execute unless entity @p[scores={OnGround=0..1}] run function mad:system/preparation_individual/send_message