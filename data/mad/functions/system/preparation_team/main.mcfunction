#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Detect onground
execute as @a[scores={OnGround=0},tag=Participant] store result score @s OnGround run data get entity @s OnGround 1
execute as @a[scores={OnGround=0},tag=Participant] at @s if block ~ ~ ~ minecraft:water if block ~ ~1 ~ minecraft:water run function mad:system/preparation_team/teleporter
execute as @a[scores={OnGround=1},tag=Participant] at @s run function mad:system/preparation_team/teleporter

## Teleport
execute as @a[scores={OnGround=2},tag=Participant] run function mad:system/preparation_team/teleport

## Change phase
execute unless entity @p[scores={OnGround=0..1},tag=Participant] run function mad:system/preparation_team/send_message