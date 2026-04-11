#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 支援物資へのテレポート
execute as @s[predicate=mad:system/common/teleport/care_package] run function mad:system/common/teleport/care_package/

## ワールド中心へのテレポート
execute as @s[predicate=mad:system/common/teleport/center] run function mad:system/common/teleport/center