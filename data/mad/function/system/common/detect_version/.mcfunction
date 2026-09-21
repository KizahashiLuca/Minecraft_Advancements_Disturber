#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 21 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## マインクラフトバージョン検出
#### データバージョンをスコアに保存
execute store result score #mad DataVersion run \
  data get entity @p DataVersion
#### データバージョンに応じてスコアボード設定
execute if predicate mad:version/26.1/ run \
  function mad:system/common/detect_version/26/1
execute if predicate mad:version/26.3/ run \
  function mad:system/common/detect_version/26/2
execute if predicate mad:version/26.3/ run \
  function mad:system/common/detect_version/26/3
