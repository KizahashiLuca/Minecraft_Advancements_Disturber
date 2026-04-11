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
#### 個人戦へ変更
execute if predicate mad:gamerule/match_mode/team as @e[tag=MAD_Interaction_IndividualMatchButton] at @s on target run function mad:system/setting/match_mode/detect/ {number:'0',mode:'individual'}
#### チーム戦へ変更
execute if predicate mad:gamerule/match_mode/individual/not_solo as @e[tag=MAD_Interaction_TeamMatchButton] at @s on target run function mad:system/setting/match_mode/detect/ {number:'1',mode:'team'}
#### 戻る
execute as @e[tag=MAD_Interaction_ReturnLink] at @s on target run function mad:system/setting/match_mode/detect/return