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
execute store result storage mad: teleport.care_package.number int 1 run scoreboard players get @s TeleportToCarePackage
function mad:system/common/teleport/care_package/set_storage with storage mad: teleport.care_package
function mad:system/common/teleport/care_package/get_storage with storage mad: teleport.pos

## スコアボード設定
scoreboard players set @s TeleportToCarePackage 0
scoreboard players enable @s TeleportToCarePackage

## ストレージ削除
data remove storage mad: teleport