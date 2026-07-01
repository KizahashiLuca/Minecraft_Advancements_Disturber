#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## MCVersion   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## マインクラフトバージョン検出
#### データバージョンをスコアに保存
execute store result score #mad DataVersion run \
  data get entity @p DataVersion
#### データバージョンに応じてスコアボード設定
execute if predicate mad:version/26.1/ run \
  function mad:system/common/detect_version/26/1
execute if predicate mad:version/26.2/ run \
  function mad:system/common/detect_version/26/2
