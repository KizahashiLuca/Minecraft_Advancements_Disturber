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
#### 死亡メッセージありへ変更
execute as @e[tag=MAD_Interaction_deathMessageVisibilityTrueButton] at @s on target run function mad:system/setting/team_rules/2/death_message_visibility/detect/ {number:'1'}
#### 死亡メッセージなしへ変更
execute as @e[tag=MAD_Interaction_deathMessageVisibilityFalseButton] at @s on target run function mad:system/setting/team_rules/2/death_message_visibility/detect/ {number:'0'}
#### 戻る
execute as @e[tag=MAD_Interaction_ReturnLink] at @s on target run function mad:system/setting/team_rules/2/death_message_visibility/detect/return