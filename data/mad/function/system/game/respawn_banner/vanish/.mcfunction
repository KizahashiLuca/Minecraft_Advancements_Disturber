#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ削除
data remove storage mad: death

## 削除する死体のプレイヤーのタグを取得
tag @s remove mad_death_point
data modify storage mad: death.head_tag \
  set from entity @s Tags[0]

## ストレージ格納
#### 削除する死体のプレイヤーのチーム名とサイドバーの変数を取得
function mad:system/game/respawn_banner/vanish/set_storage \
  with storage mad: death

## サイドバー削除
function mad:system/game/respawn_banner/vanish/reset_scoreboard \
  with storage mad: death

## マーカー削除
function mad:system/game/respawn_banner/vanish/kill_entity \
  with storage mad: death

## ストレージ削除
data remove storage mad: death
