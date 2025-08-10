#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## フェーズ分岐
#### ルートフェーズ
execute if predicate mad:phase/setting/other_rules/root run function mad:system/setting/other_rules/root/
#### 難易度変更フェーズ
execute if predicate mad:phase/setting/other_rules/difficulty run function mad:system/setting/other_rules/difficulty/
#### 天気サイクル変更フェーズ
execute if predicate mad:phase/setting/other_rules/weather_cycle run function mad:system/setting/other_rules/weather_cycle/
#### 昼夜サイクル変更フェーズ
execute if predicate mad:phase/setting/other_rules/daylight_cycle run function mad:system/setting/other_rules/daylight_cycle/
#### 支援物資投下数変更フェーズ
execute if predicate mad:phase/setting/other_rules/number_of_care_packages run function mad:system/setting/other_rules/number_of_care_packages/
#### 撃破ボーナス変更フェーズ
execute if predicate mad:phase/setting/other_rules/bonus_time_of_kill run function mad:system/setting/other_rules/bonus_time_of_kill/