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
#### 透明化の視認ありへ変更
execute as @e[tag=MAD_Interaction_seeFriendlyInvisiblesTrueButton] at @s on target run function mad:system/setting/team_rules/2/see_friendly_invisibles/detect/ {number:'1'}
#### 透明化の視認なしへ変更
execute as @e[tag=MAD_Interaction_seeFriendlyInvisiblesFalseButton] at @s on target run function mad:system/setting/team_rules/2/see_friendly_invisibles/detect/ {number:'0'}
#### 戻る
execute as @e[tag=MAD_Interaction_ReturnLink] at @s on target run function mad:system/setting/team_rules/2/see_friendly_invisibles/detect/return