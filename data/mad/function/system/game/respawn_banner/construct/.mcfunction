#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## リスポーンバナー設置
#### マーカー
function mad:system/game/respawn_banner/construct/marker \
  with storage mad: death
#### アーマースタンド
$execute as @e[type=minecraft:marker,tag=mad_player$(victim_number),limit=1] \
  at @s run \
  function mad:system/game/respawn_banner/construct/armor_stand \
    with storage mad: death
#### ストレージ
$execute as @p[tag=mad_player$(victim_number)] run \
  function mad:system/game/respawn_banner/construct/storage
#### プレイヤーの頭
$execute as @e[type=minecraft:marker,tag=mad_player$(victim_number),limit=1] \
  at @s run \
  function mad:system/game/respawn_banner/construct/player_head \
    with storage mad: death
#### テキストディスプレイ
$execute as @e[type=minecraft:marker,tag=mad_player$(victim_number),limit=1] \
  at @s run \
  function mad:system/game/respawn_banner/construct/text_display \
    with storage mad: death

## サイドバー
function mad:system/game/respawn_banner/construct/sidebar \
  with storage mad: death
