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
$data modify storage mad: rules merge value \
  {\
    is_team: $(is_team),\
    initial_time: $(initial_time),\
    bonus_time_of_advancements: $(bonus_time_of_advancements),\
    care_package_interval: $(care_package_interval),\
    world_border: $(world_border),\
  }

## ルートフェーズ移行/初期化
function mad:system/setting/root/initialize
