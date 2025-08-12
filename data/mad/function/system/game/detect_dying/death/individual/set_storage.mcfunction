#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ格納
data modify storage mad: death.address set value ''
data modify storage mad: death.dimension set from entity @s LastDeathLocation.dimension
execute store result storage mad: death.absolute_x int 1.0 run data get entity @s LastDeathLocation.pos[0] 1.0
execute store result storage mad: death.absolute_y int 1.0 run data get entity @s LastDeathLocation.pos[0] 1.0
execute store result storage mad: death.absolute_z int 1.0 run data get entity @s LastDeathLocation.pos[0] 1.0
execute store result score @s TmpX run data get entity @s LastDeathLocation.pos[0] 1.0
execute store result score @s TmpY run data get entity @s LastDeathLocation.pos[1] 1.0
execute store result score @s TmpZ run data get entity @s LastDeathLocation.pos[2] 1.0
scoreboard players operation @s TmpX -= #mad PosX
scoreboard players operation @s TmpZ -= #mad PosZ
execute store result storage mad: death.x int 1.0 run scoreboard players get @s TmpX
execute store result storage mad: death.y int 1.0 run scoreboard players get @s TmpY
execute store result storage mad: death.z int 1.0 run scoreboard players get @s TmpZ
data modify storage mad: death.message set value ''
data modify storage mad: death.text set value '非プレイヤーキル'