#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 終了用メッセージ表示
execute if predicate mad:gamerule/match_mode/individual/solo run \
  function mad:message/game/exit/ \
    {\
      text: 'プレイヤーが死亡',\
    }
execute if predicate mad:gamerule/match_mode/individual/not_solo run \
  function mad:message/game/exit/ \
    {\
      text: '勝者が決定',\
    }
execute if predicate mad:gamerule/match_mode/team run \
  function mad:message/game/exit/ \
    {\
      text: '勝者が決定',\
    }

## ゲーム全体終了トリガーをセット
#### 以下の両方のフラグが経たないとゲームは終了しない
####  - ゲーム全体終了トリガー
####  - 個人終了トリガー
scoreboard players set #mad ExitTrigger 1
