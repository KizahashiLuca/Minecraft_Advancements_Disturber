#####################################
## Minecraft Advancements Difturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Calculate
execute at @s run forceload remove ~ ~ ~ ~
execute as @s[scores={1_meter=1}] at @s run tp @s ~-1 ~ ~
execute as @s[scores={1_meter=1}] at @s run tp @s ~-1 ~ ~
execute as @s[scores={1_meter=2}] at @s run tp @s ~-2 ~ ~
execute as @s[scores={1_meter=3}] at @s run tp @s ~-3 ~ ~
execute as @s[scores={1_meter=4}] at @s run tp @s ~-4 ~ ~
execute as @s[scores={1_meter=5}] at @s run tp @s ~-5 ~ ~
execute as @s[scores={1_meter=6}] at @s run tp @s ~-6 ~ ~
execute as @s[scores={1_meter=7}] at @s run tp @s ~-7 ~ ~
execute as @s[scores={1_meter=8}] at @s run tp @s ~-8 ~ ~
execute as @s[scores={1_meter=9}] at @s run tp @s ~-9 ~ ~
execute at @s run forceload add ~ ~ ~ ~
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn] run forceload add ~ ~ ~ ~