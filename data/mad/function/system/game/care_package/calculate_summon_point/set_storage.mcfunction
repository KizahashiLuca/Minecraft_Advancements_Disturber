#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 召喚番号
$data modify storage mad: care_package.$(number).number set value $(number)

## 召喚地点算出
$execute store result storage mad: care_package.$(number).x int 1 run function mad:system/game/care_package/calculate_summon_point/get_random_value/x with storage mad: gamerule.world_border
$data modify storage mad: care_package.$(number).y set value 320
$execute store result storage mad: care_package.$(number).z int 1 run function mad:system/game/care_package/calculate_summon_point/get_random_value/z with storage mad: gamerule.world_border

## 召喚完了フラグ
$data modify storage mad: care_package.$(number).flag set value 0

## スコアボード設定
$scoreboard players operation #mad_care_package_$(number) Second = #mad CarePackageInterval
$execute store result storage mad: care_package.$(number).second int 1 run scoreboard players get #mad_care_package_$(number) Second