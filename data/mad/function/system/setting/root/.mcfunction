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
#### 対戦形式変更
execute as @e[tag=MAD_Interaction_MatchModeLink] at @s on target run function mad:system/setting/root/detect/ {phase:'match_mode'}
#### 初期時間変更
execute as @e[tag=MAD_Interaction_InitialTimeLink] at @s on target run function mad:system/setting/root/detect/ {phase:'initial_time'}
#### 追加時間変更
execute as @e[tag=MAD_Interaction_BonusTimeOfAdvancementsLink] at @s on target run function mad:system/setting/root/detect/ {phase:'bonus_time_of_advancements'}
#### 支援物資間隔変更
execute as @e[tag=MAD_Interaction_CarePackageIntervalLink] at @s on target run function mad:system/setting/root/detect/ {phase:'care_package_interval'}
#### ワールド範囲変更
execute as @e[tag=MAD_Interaction_WorldBorderLink] at @s on target run function mad:system/setting/root/detect/ {phase:'world_border'}
#### その他ルール変更
execute as @e[tag=MAD_Interaction_OtherRulesLink] at @s on target run function mad:system/setting/root/detect/rules {phase:'other_rules',stem:''}
#### チーム戦ルール変更
execute as @e[tag=MAD_Interaction_TeamRulesLink] at @s on target run function mad:system/setting/root/detect/rules {phase:'team_rules',stem:'/1'}
#### ゲーム中止
execute as @e[tag=MAD_Interaction_CancelLink] at @s on target run function mad:system/setting/root/detect/cancel
#### ゲーム開始
execute as @e[tag=MAD_Interaction_OKLink] at @s on target run function mad:system/setting/root/detect/ok/