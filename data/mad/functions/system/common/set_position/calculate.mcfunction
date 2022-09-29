#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set position
execute store result score @s PosX run data get entity @s Pos[0] 1
execute store result score @s PosY run data get entity @s Pos[1] 1
execute store result score @s PosZ run data get entity @s Pos[2] 1
execute store result score @s Angle run data get entity @s Rotation[0] 1
scoreboard players add @s Angle 22
scoreboard players add @s[predicate=mad:system/common/set_position/le_zero] Angle 360
scoreboard players operation @s Angle /= #mad 45