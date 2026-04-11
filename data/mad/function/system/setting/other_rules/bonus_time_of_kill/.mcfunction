#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 右クリック検知
#### 3桁目 上矢印
execute as @e[tag=MAD_Interaction_BonusTimeOfKillUpArrow3] at @s on target run function mad:system/setting/other_rules/bonus_time_of_kill/detect/ {operator:'add',number:'100'}
#### 2桁目 上矢印
execute as @e[tag=MAD_Interaction_BonusTimeOfKillUpArrow2] at @s on target run function mad:system/setting/other_rules/bonus_time_of_kill/detect/ {operator:'add',number:'10'}
#### 1桁目 上矢印
execute as @e[tag=MAD_Interaction_BonusTimeOfKillUpArrow1] at @s on target run function mad:system/setting/other_rules/bonus_time_of_kill/detect/ {operator:'add',number:'1'}
#### 3桁目 下矢印
execute as @e[tag=MAD_Interaction_BonusTimeOfKillDownArrow3] at @s on target run function mad:system/setting/other_rules/bonus_time_of_kill/detect/ {operator:'remove',number:'100'}
#### 2桁目 下矢印
execute as @e[tag=MAD_Interaction_BonusTimeOfKillDownArrow2] at @s on target run function mad:system/setting/other_rules/bonus_time_of_kill/detect/ {operator:'remove',number:'10'}
#### 1桁目 下矢印
execute as @e[tag=MAD_Interaction_BonusTimeOfKillDownArrow1] at @s on target run function mad:system/setting/other_rules/bonus_time_of_kill/detect/ {operator:'remove',number:'1'}
#### リセットボタン
execute as @e[tag=MAD_Interaction_ResetButton] at @s on target run function mad:system/setting/other_rules/bonus_time_of_kill/detect/ {operator:'set',number:'300'}
#### 戻る
execute as @e[tag=MAD_Interaction_ReturnLink] at @s on target run function mad:system/setting/other_rules/bonus_time_of_kill/detect/return