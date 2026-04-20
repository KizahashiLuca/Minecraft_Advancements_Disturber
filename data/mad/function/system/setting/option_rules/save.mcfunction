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
    advance_weather: '$(advance_weather)',\
    advance_time: '$(advance_time)',\
    difficulty: '$(difficulty)',\
    number_of_care_packages: $(number_of_care_packages),\
    bonus_time_of_kill: $(bonus_time_of_kill),\
    death_penalty_time: $(death_penalty_time),\
  }
function mad:system/setting/option_rules/set_color \
  with storage mad: rules

## ルートフェーズ移行/初期化
function mad:system/setting/root/initialize
