#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Sep 2021
## Version   : β-1.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Initialize a seed
scoreboard players set #mad RandomSeed 0
execute as @a store result score @s RandomSeed run data get entity @s Rotation[0] 1
execute as @a[scores={RandomSeed=..0}] run scoreboard players add @s RandomSeed 360
execute as @a run scoreboard players operation #mad RandomSeed += @s RandomSeed
