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
#### 上矢印
execute as @e[tag=MAD_Interaction_NumberOfCarePackagesUpArrow] at @s on target run function mad:system/setting/other_rules/number_of_care_packages/detect/ {operator:'add'}
#### 下矢印
execute as @e[tag=MAD_Interaction_NumberOfCarePackagesDownArrow] at @s on target run function mad:system/setting/other_rules/number_of_care_packages/detect/ {operator:'remove'}
#### リセットボタン
execute as @e[tag=MAD_Interaction_ResetButton] at @s on target run function mad:system/setting/other_rules/number_of_care_packages/detect/ {operator:'set',number:'300'}
#### 戻る
execute as @e[tag=MAD_Interaction_ReturnLink] at @s on target run function mad:system/setting/other_rules/number_of_care_packages/detect/return