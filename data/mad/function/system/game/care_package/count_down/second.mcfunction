#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボード設定
$scoreboard players remove #mad_care_package_$(number) Second 1

## ストレージ格納
$execute store result storage mad: care_package.$(number).second int 1 run scoreboard players get #mad_care_package_$(number) Second

## サイドバー設定
$execute if score #mad_care_package_$(number) Second matches 1.. run function mad:message/game/care_package/before_drop/sidebar/time with storage mad: care_package.$(number)
$execute if score #mad_care_package_$(number) Second matches 0 run function mad:system/game/care_package/count_down/forceload with storage mad: care_package.$(number)

## 支援物資召喚
$execute if score #mad_care_package_$(number) Second matches ..0 at @e[predicate=mad:marker/world_spawn,limit=1] run function mad:system/game/care_package/count_down/summon with storage mad: care_package.$(number)