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
execute as @s[scores={100_meter=1}] at @s run tp @s ~ ~ ~100
execute as @s[scores={100_meter=2}] at @s run tp @s ~ ~ ~200
execute as @s[scores={100_meter=3}] at @s run tp @s ~ ~ ~300
execute as @s[scores={100_meter=4}] at @s run tp @s ~ ~ ~400
execute as @s[scores={100_meter=5}] at @s run tp @s ~ ~ ~500
execute as @s[scores={100_meter=6}] at @s run tp @s ~ ~ ~600
execute as @s[scores={100_meter=7}] at @s run tp @s ~ ~ ~700
execute as @s[scores={100_meter=8}] at @s run tp @s ~ ~ ~800
execute as @s[scores={100_meter=9}] at @s run tp @s ~ ~ ~900
execute at @s run forceload add ~ ~ ~ ~
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn] run forceload add ~ ~ ~ ~