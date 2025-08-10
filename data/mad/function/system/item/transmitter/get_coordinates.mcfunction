#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 座標算出
data modify storage mad: item.transmitter.dimension set from entity @s Dimension
$execute store result storage mad: item.transmitter.x int 1 run scoreboard players get @p[tag=MAD_Player$(player_number)] PosX
$execute store result storage mad: item.transmitter.y int 1 run scoreboard players get @p[tag=MAD_Player$(player_number)] PosY
$execute store result storage mad: item.transmitter.z int 1 run scoreboard players get @p[tag=MAD_Player$(player_number)] PosZ