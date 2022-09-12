#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 13 Sep 2022
## Version   : β-2.0.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Initialize a seed
scoreboard players set #mad RandomSeed 0
execute as @a store result score @s RandomSeed run data get entity @s Rotation[0] 1.0
execute as @a[scores={RandomSeed=..0}] run scoreboard players add @s RandomSeed 360
execute as @a run scoreboard players operation #mad RandomSeed += @s RandomSeed
