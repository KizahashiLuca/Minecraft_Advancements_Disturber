#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ削除
data remove storage mad: position.angle

## ストレージ格納
execute store result storage mad: position.angle int 1 run \
  scoreboard players get @s Angle

## ポジション表示
function mad:message/common/position/ \
  with storage mad: position

## ストレージ削除
data remove storage mad: position.angle
