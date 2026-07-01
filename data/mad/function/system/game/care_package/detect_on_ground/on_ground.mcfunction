#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 水面検出
#### 水面/溶岩面に降着した場合は重力と動きを無効化
data modify entity @s[predicate=mad:care_package/detect_on_ground/is_in_fluids] NoGravity \
  set value 1b
data modify entity @s[predicate=mad:care_package/detect_on_ground/is_in_fluids] Motion \
  set value [0, 0, 0]

## 降着時サイドバー設定
#### 降着した支援物資の番号を取得してストレージに格納
execute store result storage mad: care_package.drop.number int 1 run \
  data get entity @s UUID[0] 1
#### 支援物資の番号を基にサイドバーを設定
function mad:message/game/care_package/sidebar/landed \
  with storage mad: care_package.drop

## 強制読み込み解除
forceload remove ~ ~ ~ ~
