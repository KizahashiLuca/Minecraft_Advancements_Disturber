#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ削除
data remove storage mad: position.angle

## ストレージ格納
execute store result storage mad: position.angle int 1 run scoreboard players get @s Angle

## ポジション表示
function mad:message/common/position/ with storage mad: position

## ストレージ削除
data remove storage mad: position.angle