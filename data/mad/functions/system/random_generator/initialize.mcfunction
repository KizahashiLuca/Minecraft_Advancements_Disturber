#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Initialize a seed
scoreboard players set #mad RandomSeed 0
execute as @a store result score @s RandomSeed run data get entity @s Rotation[0] 1
execute as @a[scores={RandomSeed=..0}] run scoreboard players add @s RandomSeed 360
execute as @a run scoreboard players operation #mad RandomSeed += @s RandomSeed
