#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Detect onground
execute as @a[scores={OnGround=0},tag=Participant] store result score @s OnGround run data get entity @s OnGround 1
execute as @a[scores={OnGround=0},tag=Participant] at @s if block ~ ~ ~ minecraft:water if block ~ ~1 ~ minecraft:water run function mad:system/preparation_team/teleporter
execute as @a[scores={OnGround=1},tag=Participant] at @s run function mad:system/preparation_team/teleporter

## Teleport
execute as @a[scores={OnGround=2},tag=Participant] run function mad:system/preparation_team/teleport

## Change phase
execute unless entity @p[scores={OnGround=0..1},tag=Participant] run function mad:system/preparation_team/send_message