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
#### 昼夜サイクルありへ変更
execute as @e[tag=MAD_Interaction_DaylightCycleTrueButton] at @s on target run function mad:system/setting/other_rules/daylight_cycle/detect/ {number:'1'}
#### 昼夜サイクルなしへ変更
execute as @e[tag=MAD_Interaction_DaylightCycleFalseButton] at @s on target run function mad:system/setting/other_rules/daylight_cycle/detect/ {number:'0'}
#### 戻る
execute as @e[tag=MAD_Interaction_ReturnLink] at @s on target run function mad:system/setting/other_rules/daylight_cycle/detect/return