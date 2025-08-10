#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## MCVersion   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## マインクラフトバージョン検出
execute store result score #mad DataVersion run data get entity @p DataVersion
execute if predicate mad:version/1.21/ run function mad:system/common/detect_version/1.21/
execute if predicate mad:version/1.22/ run function mad:system/common/detect_version/1.22/