#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## ゲームシステム
#### 停止フェーズ
execute if predicate mad:phase/stop run function mad:system/end/stop
#### 終了フェーズ
execute if predicate mad:phase/exit run function mad:system/end/exit/
#### ゲームフェーズ
execute if predicate mad:phase/game run function mad:system/game/ with storage mad: gamerule.match_mode
execute if predicate mad:phase/game run function mad:system/item/
#### 落下フェーズ
execute if predicate mad:phase/fall run function mad:system/fall/
#### 待機フェーズ
execute if predicate mad:phase/wait run function mad:system/wait/
#### チーム編成設定フェーズ
execute if predicate mad:phase/setting/team_member/ run function mad:system/setting/team_member/
#### 初期設定フェーズ
execute if predicate mad:phase/setting/ run function mad:system/setting/