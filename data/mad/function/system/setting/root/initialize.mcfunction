#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## フェーズ設定
function mad:phase/setting/root

## スコアボードのリセット
function mad:system/setting/scoreboards

## ルートダイアログ表示
#### 個人戦の場合
execute if predicate mad:gamerule/match_mode/individual/ run \
  function mad:dialog/system/setting/root \
    {\
      label: 'ゲーム開始',\
      translate: 'ゲームを開始します。',\
      score: 50,\
    }
#### チームメンバー選択がランダムの場合
execute if predicate mad:gamerule/team_rules/set_team_manual/false run \
  function mad:dialog/system/setting/root \
    {\
      label: 'ゲーム開始',\
      translate: 'ゲームを開始します。',\
      score: 50,\
    }
#### チームメンバー選択がマニュアルの場合
execute if predicate mad:gamerule/team_rules/set_team_manual/true run \
  function mad:dialog/system/setting/root \
    {\
      label: 'チームメンバー選択',\
      translate: 'チームメンバー手動設定に移ります。',\
      score: 40,\
    }
