#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ゲームシステム
#### 停止フェーズ
execute if predicate mad:phase/stop run \
  function mad:system/end/stop
#### 終了フェーズ
execute if predicate mad:phase/exit run \
  function mad:system/end/exit/
#### ゲームフェーズ
execute if predicate mad:phase/game run \
  function mad:system/game/ with storage mad: rules.match_mode
execute if predicate mad:phase/game run \
  function mad:system/item/
#### 落下フェーズ
execute if predicate mad:phase/fall run \
  function mad:system/fall/
#### 待機フェーズ
execute if predicate mad:phase/wait run \
  function mad:system/wait/
#### 初期設定フェーズ
execute if predicate mad:phase/setting/ run \
  function mad:system/setting/

## ゲーム外フェーズ
execute if predicate mad:phase/not_in_game run \
  function mad:system/not_in_game/
