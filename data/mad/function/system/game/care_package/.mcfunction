#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 着地判定
execute as @s[predicate=mad:care_package/detect_on_ground/not_on_ground] at @s run function mad:system/game/care_package/detect_on_ground/

## スコアボード設定
execute store success score @s UnsetLootTable run data get entity @s LootTable
execute as @s[predicate=mad:care_package/explode] at @s run function mad:system/game/care_package/explode/