#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボードのリセット
function mad:system/setting/scoreboards

## 設定値保存
$data modify storage mad: rules merge value \
  {\
    set_team_manual: $(set_team_manual),\
    number_of_teams: $(number_of_teams),\
    death_penalty_time: $(death_penalty_time),\
    friendly_fire: $(friendly_fire),\
    collision_rule: $(collision_rule),\
    nametag_visibility: $(nametag_visibility),\
    see_friendly_invisibles: $(see_friendly_invisibles),\
    death_message_visibility: $(death_message_visibility),\
  }

## ルートダイアログ表示
#### 個人戦の場合
execute if predicate mad:gamerule/match_mode/individual/ run \
  function mad:dialog/system/setting/root \
    {\
      label: 'ゲーム開始',\
      text: 'ゲームを開始します。',\
      score: 20,\
    }
#### チームメンバー選択がランダムの場合
execute if predicate mad:gamerule/team_rules/set_team_manual/false run \
  function mad:dialog/system/setting/root \
    {\
      label: 'ゲーム開始',\
      text: 'ゲームを開始します。',\
      score: 20,\
    }
#### チームメンバー選択がマニュアルの場合
execute if predicate mad:gamerule/team_rules/set_team_manual/true run \
  function mad:dialog/system/setting/root \
    {\
      label: 'チームメンバー選択',\
      text: 'チームメンバー手動設定に移ります。',\
      score: 21,\
    }
