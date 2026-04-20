#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ドロップしたリスポーンバナーの挙動
#### デスポーンしないように設定
####  - 対象：リスポーンバナーのタグがあるアイテムだが、
####          経過時間が -32768 ではないアイテムエンティティ
####          (プレイヤーの頭を壊すとドロップするリスポーンバナー本体)
####  - 処理：ドロップしてからの経過時間を -32768 に設定
execute as @e[predicate=mad:respawn_banner/item/not_initialized] run \
  function mad:system/game/respawn_banner/reinitialize/initialize
#### モデルを設定
####  - 対象：リスポーンバナーのタグがあり、
####          アーマースタンドのアイテムエンティティで、
####          モデルがプレイヤーの頭になっていないアイテムに対して実行
####  - 処理：アーマースタンドの見かけをプレイヤーの頭に設定
execute as @e[predicate=mad:respawn_banner/item/not_reinitialized] run \
  function mad:system/game/respawn_banner/reinitialize/reset
#### その他アイテムの削除
####  - 対象：アーマースタンドのアイテムエンティティでコンポーネントに中身があるが、
####          リスポーンバナーのタグが無いもの
####          もしくは プレイヤーの頭のアイテムエンティティで消滅の呪いがあるもの
####  - 処理：削除
execute as @e[predicate=mad:respawn_banner/item/discard] run \
  function mad:system/game/respawn_banner/reinitialize/discard

## 設置されたリスポーンビーコンの挙動
#### リスポーンビーコンの初期化
####  - 対象：リスポーンバナーのデータタグのあるアーマースタンドだが、
####          初期化のデータタグがついていないアーマースタンド
####          (設置された直後のリスポーンビーコン本体)
####  - 処理：蘇生検知用のアーマースタンド(本体とは異なる)を召喚
execute as @e[predicate=mad:respawn_banner/armor_stand/not_initialized] \
  at @s run \
  function mad:system/game/respawn_banner/revive/initialize \
    with entity @s data
#### リスポーンビーコンの本処理
####  - 対象：リスポーンバナーのタグのあるアーマースタンド
####          (蘇生検知用のアーマースタンド)
####  - 処理：蘇生検知処理
execute as @e[predicate=mad:respawn_banner/armor_stand/detector] \
  at @s run \
  function mad:system/game/respawn_banner/revive/ \
    with entity @s data

## プレイヤーの頭が取得されればマーカー削除
#### リスポーンバナーのある場所の死体を削除
execute as @e[predicate=mad:respawn_banner/corpse] run \
  function mad:system/game/respawn_banner/vanish/
