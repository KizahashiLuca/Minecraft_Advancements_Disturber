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
#### ピースフルへ変更
execute as @e[tag=MAD_Interaction_PeacefulDifficultyButton] at @s on target run function mad:system/setting/other_rules/difficulty/detect/ {number:'0'}
#### イージーへ変更
execute as @e[tag=MAD_Interaction_EasyDifficultyButton] at @s on target run function mad:system/setting/other_rules/difficulty/detect/ {number:'1'}
#### ノーマルへ変更
execute as @e[tag=MAD_Interaction_NormalDifficultyButton] at @s on target run function mad:system/setting/other_rules/difficulty/detect/ {number:'2'}
#### ハードへ変更
execute as @e[tag=MAD_Interaction_HardDifficultyButton] at @s on target run function mad:system/setting/other_rules/difficulty/detect/ {number:'3'}
#### ハードコアへ変更
execute as @e[tag=MAD_Interaction_HardcoreDifficultyButton] at @s on target run function mad:system/setting/other_rules/difficulty/detect/ {number:'4'}
#### 戻る
execute as @e[tag=MAD_Interaction_ReturnLink] at @s on target run function mad:system/setting/other_rules/difficulty/detect/return