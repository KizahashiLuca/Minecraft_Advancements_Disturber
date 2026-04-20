#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## リスポーンバナー設置
#### マーカー
function mad:system/game/respawn_banner/construct/marker \
  with storage mad: death
#### アーマースタンド
function mad:system/game/respawn_banner/construct/armor_stand \
  with storage mad: death
#### ストレージ
function mad:system/game/respawn_banner/construct/storage \
  with storage mad: death
#### プレイヤーの頭
function mad:system/game/respawn_banner/construct/player_head \
  with storage mad: death
#### テキストディスプレイ
function mad:system/game/respawn_banner/construct/text_display \
  with storage mad: death

## メッセージ
function mad:message/game/respawn_banner/construct \
  with storage mad: death

## サイドバー
function mad:system/game/respawn_banner/construct/sidebar \
  with storage mad: death
