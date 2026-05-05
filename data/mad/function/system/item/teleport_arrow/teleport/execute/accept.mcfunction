#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## テレポート処理
$execute in minecraft:overworld run \
  spreadplayers $(absolute_x) $(absolute_z) 0 1 true @s

## パーティクル
particle minecraft:sonic_boom ~ ~1 ~ 0.1 -3 0.1 1 10 normal @a

## エフェクト
effect give @s minecraft:resistance 5 6 false

## サウンドイベント
playsound minecraft:block.portal.travel block @s ~ ~ ~ 0.5 2.0 1.0

## メッセージ表示
function mad:message/item/teleport_arrow/accept \
  with storage mad: item.teleport_arrow.tmp
