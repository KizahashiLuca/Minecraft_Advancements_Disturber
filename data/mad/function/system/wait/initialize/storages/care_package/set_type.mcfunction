#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ格納
#### 試合形式の格納
$execute if predicate mad:gamerule/match_mode/individual/solo run \
  data modify storage mad: care_package.$(number).type \
    set value 'solo'
$execute if predicate mad:gamerule/match_mode/individual/not_solo run \
  data modify storage mad: care_package.$(number).type \
    set value 'individual'
$execute if predicate mad:gamerule/match_mode/team run \
  data modify storage mad: care_package.$(number).type \
    set value 'team'
#### 範囲内にエンド大陸が存在するか - 支援物資「エンドポータルフレーム」判定用
$execute if predicate mad:gamerule/care_package/without_end run \
  data modify storage mad: care_package.$(number).with \
    set value 'without'
$execute if predicate mad:gamerule/care_package/with_end run \
  data modify storage mad: care_package.$(number).with \
    set value 'with'
