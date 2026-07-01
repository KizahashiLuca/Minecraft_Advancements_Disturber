#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 設定値保存
$data modify storage mad: rules \
  merge value \
  {\
    set_team_manual: $(set_team_manual),\
    number_of_teams: $(number_of_teams),\
    friendly_fire: '$(friendly_fire)',\
    collision_rule: '$(collision_rule)',\
    nametag_visibility: '$(nametag_visibility)',\
    see_friendly_invisibles: '$(see_friendly_invisibles)',\
    death_message_visibility: '$(death_message_visibility)',\
  }

## ルートフェーズ移行/初期化
function mad:system/setting/root/initialize
