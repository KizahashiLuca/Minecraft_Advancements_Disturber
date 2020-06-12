#####################################
## Minecraft Advancements Difturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Jun 2020
## Version   : α-0.2
#####################################

## Calculate
execute at @s run forceload remove ~ ~ ~ ~
execute as @s[scores={10_meter=1}] at @s run tp @s ~ ~ ~10
execute as @s[scores={10_meter=2}] at @s run tp @s ~ ~ ~20
execute as @s[scores={10_meter=3}] at @s run tp @s ~ ~ ~30
execute as @s[scores={10_meter=4}] at @s run tp @s ~ ~ ~40
execute as @s[scores={10_meter=5}] at @s run tp @s ~ ~ ~50
execute as @s[scores={10_meter=6}] at @s run tp @s ~ ~ ~60
execute as @s[scores={10_meter=7}] at @s run tp @s ~ ~ ~70
execute as @s[scores={10_meter=8}] at @s run tp @s ~ ~ ~80
execute as @s[scores={10_meter=9}] at @s run tp @s ~ ~ ~90
execute at @s run forceload add ~ ~ ~ ~
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn] run forceload add ~ ~ ~ ~