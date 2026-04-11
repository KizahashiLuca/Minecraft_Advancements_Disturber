#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 水面検出
data modify entity @s[predicate=mad:care_package/detect_on_ground/is_in_fluids] NoGravity set value 1b
data modify entity @s[predicate=mad:care_package/detect_on_ground/is_in_fluids] Motion set value [0,0,0]

## ストレージ格納
execute store result storage mad: care_package.drop.number int 1 run data get entity @s UUID[0] 1

## 着陸済みサイドバー設定
function mad:message/game/care_package/after_drop/sidebar/landed with storage mad: care_package.drop

## 強制読み込み解除
forceload remove ~ ~ ~ ~