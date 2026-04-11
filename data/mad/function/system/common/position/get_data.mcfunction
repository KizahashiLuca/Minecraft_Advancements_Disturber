#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## データ算出
execute store result score @s PosX run data get entity @s Pos[0] 1
scoreboard players operation @s PosX -= #mad PosX
execute store result score @s PosY run data get entity @s Pos[1] 1
execute store result score @s PosZ run data get entity @s Pos[2] 1
scoreboard players operation @s PosZ -= #mad PosZ
execute store result score @s Angle run data get entity @s Rotation[0] 10