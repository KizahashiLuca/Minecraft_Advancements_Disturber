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
execute as @e[tag=MAD_Interaction_InitialTimeUpArrow3] at @s on target run function mad:system/setting/initial_time/detect/ {operator:'add',number:'100'}
#### 2桁目 上矢印
execute as @e[tag=MAD_Interaction_InitialTimeUpArrow2] at @s on target run function mad:system/setting/initial_time/detect/ {operator:'add',number:'10'}
#### 1桁目 上矢印
execute as @e[tag=MAD_Interaction_InitialTimeUpArrow1] at @s on target run function mad:system/setting/initial_time/detect/ {operator:'add',number:'1'}
#### 3桁目 下矢印
execute as @e[tag=MAD_Interaction_InitialTimeDownArrow3] at @s on target run function mad:system/setting/initial_time/detect/ {operator:'remove',number:'100'}
#### 2桁目 下矢印
execute as @e[tag=MAD_Interaction_InitialTimeDownArrow2] at @s on target run function mad:system/setting/initial_time/detect/ {operator:'remove',number:'10'}
#### 1桁目 下矢印
execute as @e[tag=MAD_Interaction_InitialTimeDownArrow1] at @s on target run function mad:system/setting/initial_time/detect/ {operator:'remove',number:'1'}
#### リセットボタン
execute as @e[tag=MAD_Interaction_ResetButton] at @s on target run function mad:system/setting/initial_time/detect/ {operator:'set',number:'300'}
#### 戻る
execute as @e[tag=MAD_Interaction_ReturnLink] at @s on target run function mad:system/setting/initial_time/detect/return