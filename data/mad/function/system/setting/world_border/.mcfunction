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
#### 4桁目 上矢印
execute as @e[tag=MAD_Interaction_WorldBorderUpArrow4] at @s on target run function mad:system/setting/world_border/detect/ {operator:'add',number:'1000'}
#### 3桁目 上矢印
execute as @e[tag=MAD_Interaction_WorldBorderUpArrow3] at @s on target run function mad:system/setting/world_border/detect/ {operator:'add',number:'100'}
#### 2桁目 上矢印
execute as @e[tag=MAD_Interaction_WorldBorderUpArrow2] at @s on target run function mad:system/setting/world_border/detect/ {operator:'add',number:'10'}
#### 1桁目 上矢印
execute as @e[tag=MAD_Interaction_WorldBorderUpArrow1] at @s on target run function mad:system/setting/world_border/detect/ {operator:'add',number:'1'}
#### 4桁目 下矢印
execute as @e[tag=MAD_Interaction_WorldBorderDownArrow4] at @s on target run function mad:system/setting/world_border/detect/ {operator:'remove',number:'1000'}
#### 3桁目 下矢印
execute as @e[tag=MAD_Interaction_WorldBorderDownArrow3] at @s on target run function mad:system/setting/world_border/detect/ {operator:'remove',number:'100'}
#### 2桁目 下矢印
execute as @e[tag=MAD_Interaction_WorldBorderDownArrow2] at @s on target run function mad:system/setting/world_border/detect/ {operator:'remove',number:'10'}
#### 1桁目 下矢印
execute as @e[tag=MAD_Interaction_WorldBorderDownArrow1] at @s on target run function mad:system/setting/world_border/detect/ {operator:'remove',number:'1'}
#### リセットボタン
execute as @e[tag=MAD_Interaction_ResetButton] at @s on target run function mad:system/setting/world_border/detect/ {operator:'set',number:'1500'}
#### 戻る
execute as @e[tag=MAD_Interaction_ReturnLink] at @s on target run function mad:system/setting/world_border/detect/return