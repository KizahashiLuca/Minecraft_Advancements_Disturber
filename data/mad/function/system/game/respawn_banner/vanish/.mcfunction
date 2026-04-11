#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ削除
data remove storage mad: death

## 消すプレイヤーのタグを取得
tag @s remove MAD_DeathPoint
data modify storage mad: death.head_tag set from entity @s Tags[0]

## ストレージ格納
function mad:system/game/respawn_banner/vanish/set_storage with storage mad: death

## サイドバー削除
function mad:system/game/respawn_banner/vanish/reset_scoreboard with storage mad: death

## マーカー削除
function mad:system/game/respawn_banner/vanish/kill_entity with storage mad: death

## ストレージ削除
data remove storage mad: death