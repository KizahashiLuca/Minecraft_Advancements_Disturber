#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## データ算出
execute store result score @s PosX run data get entity @s Pos[0] 1
scoreboard players operation @s PosX -= #mad PosX
execute store result score @s PosY run data get entity @s Pos[1] 1
execute store result score @s PosZ run data get entity @s Pos[2] 1
scoreboard players operation @s PosZ -= #mad PosZ
execute store result score @s Angle run data get entity @s Rotation[0] 10