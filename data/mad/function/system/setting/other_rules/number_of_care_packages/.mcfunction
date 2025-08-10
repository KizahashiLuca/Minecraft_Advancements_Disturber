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
#### 上矢印
execute as @e[tag=MAD_Interaction_NumberOfCarePackagesUpArrow] at @s on target run function mad:system/setting/other_rules/number_of_care_packages/detect/ {operator:'add'}
#### 下矢印
execute as @e[tag=MAD_Interaction_NumberOfCarePackagesDownArrow] at @s on target run function mad:system/setting/other_rules/number_of_care_packages/detect/ {operator:'remove'}
#### リセットボタン
execute as @e[tag=MAD_Interaction_ResetButton] at @s on target run function mad:system/setting/other_rules/number_of_care_packages/detect/ {operator:'set',number:'300'}
#### 戻る
execute as @e[tag=MAD_Interaction_ReturnLink] at @s on target run function mad:system/setting/other_rules/number_of_care_packages/detect/return