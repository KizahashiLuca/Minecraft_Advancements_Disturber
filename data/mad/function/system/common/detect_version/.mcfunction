#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## MCVersion   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## マインクラフトバージョン検出
execute store result score #mad DataVersion run data get entity @p DataVersion
execute if predicate mad:version/1.21/ run function mad:system/common/detect_version/1.21/
execute if predicate mad:version/1.22/ run function mad:system/common/detect_version/1.22/