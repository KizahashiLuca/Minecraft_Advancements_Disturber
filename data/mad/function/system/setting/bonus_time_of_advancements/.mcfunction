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
execute as @e[tag=MAD_Interaction_BonusTimeOfAdvancementsUpArrow3] at @s on target run function mad:system/setting/bonus_time_of_advancements/detect/ {operator:'add',number:'100'}
#### 2桁目 上矢印
execute as @e[tag=MAD_Interaction_BonusTimeOfAdvancementsUpArrow2] at @s on target run function mad:system/setting/bonus_time_of_advancements/detect/ {operator:'add',number:'10'}
#### 1桁目 上矢印
execute as @e[tag=MAD_Interaction_BonusTimeOfAdvancementsUpArrow1] at @s on target run function mad:system/setting/bonus_time_of_advancements/detect/ {operator:'add',number:'1'}
#### 3桁目 下矢印
execute as @e[tag=MAD_Interaction_BonusTimeOfAdvancementsDownArrow3] at @s on target run function mad:system/setting/bonus_time_of_advancements/detect/ {operator:'remove',number:'100'}
#### 2桁目 下矢印
execute as @e[tag=MAD_Interaction_BonusTimeOfAdvancementsDownArrow2] at @s on target run function mad:system/setting/bonus_time_of_advancements/detect/ {operator:'remove',number:'10'}
#### 1桁目 下矢印
execute as @e[tag=MAD_Interaction_BonusTimeOfAdvancementsDownArrow1] at @s on target run function mad:system/setting/bonus_time_of_advancements/detect/ {operator:'remove',number:'1'}
#### リセットボタン
execute as @e[tag=MAD_Interaction_ResetButton] at @s on target run function mad:system/setting/bonus_time_of_advancements/detect/ {operator:'set',number:'100'}
#### 戻る
execute as @e[tag=MAD_Interaction_ReturnLink] at @s on target run function mad:system/setting/bonus_time_of_advancements/detect/return