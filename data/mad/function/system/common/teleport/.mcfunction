#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 支援物資へのテレポート
execute as @s[predicate=mad:system/common/teleport/care_package] run function mad:system/common/teleport/care_package/

## ワールド中心へのテレポート
execute as @s[predicate=mad:system/common/teleport/center] run function mad:system/common/teleport/center