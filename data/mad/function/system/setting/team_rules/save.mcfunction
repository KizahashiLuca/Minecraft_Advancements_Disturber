#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 設定値保存
$data modify storage mad: rules \
  merge value \
  {\
    set_team_manual: $(set_team_manual),\
    number_of_teams: $(number_of_teams),\
    death_penalty_time: $(death_penalty_time),\
    friendly_fire: '$(friendly_fire)',\
    collision_rule: '$(collision_rule)',\
    nametag_visibility: '$(nametag_visibility)',\
    see_friendly_invisibles: '$(see_friendly_invisibles)',\
    death_message_visibility: '$(death_message_visibility)',\
  }

## ルートフェーズ移行/初期化
function mad:system/setting/root/initialize
