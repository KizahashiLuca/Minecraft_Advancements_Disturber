#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ格納
#### 試合形式
$execute if predicate mad:gamerule/match_mode/individual/solo run data modify storage mad: care_package.$(number).type set value 'solo'
$execute if predicate mad:gamerule/match_mode/individual/not_solo run data modify storage mad: care_package.$(number).type set value 'individual'
$execute if predicate mad:gamerule/match_mode/team run data modify storage mad: care_package.$(number).type set value 'team'
#### ワールド範囲 範囲内にエンド大陸が存在
$execute if predicate mad:gamerule/care_package/without_end run data modify storage mad: care_package.$(number).with set value 'without'
$execute if predicate mad:gamerule/care_package/with_end run data modify storage mad: care_package.$(number).with set value 'with'