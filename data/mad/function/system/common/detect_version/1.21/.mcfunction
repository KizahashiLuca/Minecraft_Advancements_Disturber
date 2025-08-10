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
scoreboard players set #mad MajorVersion 21
execute if predicate mad:version/1.21/0/ run function mad:system/common/detect_version/1.21/0
execute if predicate mad:version/1.21/1/ run function mad:system/common/detect_version/1.21/1
execute if predicate mad:version/1.21/2/ run function mad:system/common/detect_version/1.21/2
execute if predicate mad:version/1.21/3/ run function mad:system/common/detect_version/1.21/3
execute if predicate mad:version/1.21/4/ run function mad:system/common/detect_version/1.21/4
execute if predicate mad:version/1.21/5/ run function mad:system/common/detect_version/1.21/5
execute if predicate mad:version/1.21/5/ run function mad:system/common/detect_version/1.21/6
execute if predicate mad:version/1.21/5/ run function mad:system/common/detect_version/1.21/7
execute if predicate mad:version/1.21/5/ run function mad:system/common/detect_version/1.21/8