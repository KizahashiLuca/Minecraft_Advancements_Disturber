#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 右クリック検知
#### 難易度変更
execute as @e[tag=MAD_Interaction_DifficultyLink] at @s on target run function mad:system/setting/other_rules/root/detect/ {phase:'difficulty'}
#### 天気サイクル変更
execute as @e[tag=MAD_Interaction_WeatherCycleLink] at @s on target run function mad:system/setting/other_rules/root/detect/ {phase:'weather_cycle'}
#### 昼夜サイクル変更
execute as @e[tag=MAD_Interaction_DaylightCycleLink] at @s on target run function mad:system/setting/other_rules/root/detect/ {phase:'daylight_cycle'}
#### 支援物資投下数変更
execute as @e[tag=MAD_Interaction_NumberOfCarePackagesLink] at @s on target run function mad:system/setting/other_rules/root/detect/ {phase:'number_of_care_packages'}
#### 撃破ボーナス変更
execute as @e[tag=MAD_Interaction_BonusTimeOfKillLink] at @s on target run function mad:system/setting/other_rules/root/detect/ {phase:'bonus_time_of_kill'}
#### 戻る
execute as @e[tag=MAD_Interaction_ReturnLink] at @s on target run function mad:system/setting/other_rules/root/detect/return