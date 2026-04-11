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
#### チーム編成手動設定へ変更
execute as @e[tag=MAD_Interaction_SetTeamManualTrueButton] at @s on target run function mad:system/setting/team_rules/1/set_team_manual/detect/ {number:'1'}
#### チーム編成ランダム設定へ変更
execute as @e[tag=MAD_Interaction_SetTeamManualFalseButton] at @s on target run function mad:system/setting/team_rules/1/set_team_manual/detect/ {number:'0'}
#### 戻る
execute as @e[tag=MAD_Interaction_ReturnLink] at @s on target run function mad:system/setting/team_rules/1/set_team_manual/detect/return