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
#### 3桁目 上矢印
execute as @e[tag=MAD_Interaction_CarePackageIntervalUpArrow3] at @s on target run function mad:system/setting/care_package_interval/detect/ {operator:'add',number:'100'}
#### 2桁目 上矢印
execute as @e[tag=MAD_Interaction_CarePackageIntervalUpArrow2] at @s on target run function mad:system/setting/care_package_interval/detect/ {operator:'add',number:'10'}
#### 1桁目 上矢印
execute as @e[tag=MAD_Interaction_CarePackageIntervalUpArrow1] at @s on target run function mad:system/setting/care_package_interval/detect/ {operator:'add',number:'1'}
#### 3桁目 下矢印
execute as @e[tag=MAD_Interaction_CarePackageIntervalDownArrow3] at @s on target run function mad:system/setting/care_package_interval/detect/ {operator:'remove',number:'100'}
#### 2桁目 下矢印
execute as @e[tag=MAD_Interaction_CarePackageIntervalDownArrow2] at @s on target run function mad:system/setting/care_package_interval/detect/ {operator:'remove',number:'10'}
#### 1桁目 下矢印
execute as @e[tag=MAD_Interaction_CarePackageIntervalDownArrow1] at @s on target run function mad:system/setting/care_package_interval/detect/ {operator:'remove',number:'1'}
#### リセットボタン
execute as @e[tag=MAD_Interaction_ResetButton] at @s on target run function mad:system/setting/care_package_interval/detect/ {operator:'set',number:'100'}
#### 戻る
execute as @e[tag=MAD_Interaction_ReturnLink] at @s on target run function mad:system/setting/care_package_interval/detect/return