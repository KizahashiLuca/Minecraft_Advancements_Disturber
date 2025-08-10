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
#### フレンドリーファイアありへ変更
execute as @e[tag=MAD_Interaction_friendlyFireTrueButton] at @s on target run function mad:system/setting/team_rules/2/friendly_fire/detect/ {number:'1'}
#### フレンドリーファイアなしへ変更
execute as @e[tag=MAD_Interaction_friendlyFireFalseButton] at @s on target run function mad:system/setting/team_rules/2/friendly_fire/detect/ {number:'0'}
#### 戻る
execute as @e[tag=MAD_Interaction_ReturnLink] at @s on target run function mad:system/setting/team_rules/2/friendly_fire/detect/return