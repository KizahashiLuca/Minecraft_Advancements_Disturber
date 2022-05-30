#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Set position
execute store result score @s PosX run data get entity @s Pos[0] 1
execute store result score @s PosY run data get entity @s Pos[1] 1
execute store result score @s PosZ run data get entity @s Pos[2] 1
execute store result score @s Angle run data get entity @s Rotation[0] 1
scoreboard players add @s Angle 22
scoreboard players add @s[scores={Angle=..0}] Angle 360
scoreboard players operation @s Angle /= #mad 45