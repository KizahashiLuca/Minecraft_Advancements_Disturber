#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Jun 2020
## Version   : α-0.2
#####################################

## Teleport x axis
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run tp @s ~ 160 ~
function mad:system/preparation/random_teleport/calculate
execute as @s[scores={1_meter=1..,PlusMinus=0}] run function mad:system/preparation/random_teleport/teleport_x_axis_plus_1_meter
execute as @s[scores={10_meter=1..,PlusMinus=0}] run function mad:system/preparation/random_teleport/teleport_x_axis_plus_10_meter
execute as @s[scores={100_meter=1..,PlusMinus=0}] run function mad:system/preparation/random_teleport/teleport_x_axis_plus_100_meter
execute as @s[scores={1_meter=1..,PlusMinus=1}] run function mad:system/preparation/random_teleport/teleport_x_axis_minus_1_meter
execute as @s[scores={10_meter=1..,PlusMinus=1}] run function mad:system/preparation/random_teleport/teleport_x_axis_minus_10_meter
execute as @s[scores={100_meter=1..,PlusMinus=1}] run function mad:system/preparation/random_teleport/teleport_x_axis_minus_100_meter

## Teleport z axis
function mad:system/preparation/random_teleport/calculate
execute as @s[scores={1_meter=1..,PlusMinus=0}] run function mad:system/preparation/random_teleport/teleport_z_axis_plus_1_meter
execute as @s[scores={10_meter=1..,PlusMinus=0}] run function mad:system/preparation/random_teleport/teleport_z_axis_plus_10_meter
execute as @s[scores={100_meter=1..,PlusMinus=0}] run function mad:system/preparation/random_teleport/teleport_z_axis_plus_100_meter
execute as @s[scores={1_meter=1..,PlusMinus=1}] run function mad:system/preparation/random_teleport/teleport_z_axis_minus_1_meter
execute as @s[scores={10_meter=1..,PlusMinus=1}] run function mad:system/preparation/random_teleport/teleport_z_axis_minus_10_meter
execute as @s[scores={100_meter=1..,PlusMinus=1}] run function mad:system/preparation/random_teleport/teleport_z_axis_minus_100_meter

## Detect air 
execute at @s if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run tag @s add Teleported