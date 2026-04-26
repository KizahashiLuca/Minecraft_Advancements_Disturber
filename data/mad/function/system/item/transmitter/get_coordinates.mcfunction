#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ディメンション算出
$data modify storage mad: item.transmitter.dimension \
  set from entity @p[tag=mad_player$(player_number)] Dimension

## 座標算出
$execute store result storage mad: item.transmitter.x int 1 run \
  scoreboard players get @p[tag=mad_player$(player_number)] PosX
$execute store result storage mad: item.transmitter.y int 1 run \
  scoreboard players get @p[tag=mad_player$(player_number)] PosY
$execute store result storage mad: item.transmitter.z int 1 run \
  scoreboard players get @p[tag=mad_player$(player_number)] PosZ
