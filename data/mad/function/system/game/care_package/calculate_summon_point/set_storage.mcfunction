#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 召喚番号
$data modify storage mad: care_package.$(number).number set value $(number)

## 召喚地点算出
$execute store result storage mad: care_package.$(number).x int 1 run function mad:system/game/care_package/calculate_summon_point/get_random_value/x with storage mad: rules.world_size
$data modify storage mad: care_package.$(number).y set value 320
$execute store result storage mad: care_package.$(number).z int 1 run function mad:system/game/care_package/calculate_summon_point/get_random_value/z with storage mad: rules.world_size

## 召喚完了フラグ
$data modify storage mad: care_package.$(number).flag set value 0

## スコアボード設定
$execute store result score #mad_care_package_$(number) Second run \
  data get storage mad: rules.care_package_interval 1
$execute store result storage mad: care_package.$(number).second int 1 run scoreboard players get #mad_care_package_$(number) Second