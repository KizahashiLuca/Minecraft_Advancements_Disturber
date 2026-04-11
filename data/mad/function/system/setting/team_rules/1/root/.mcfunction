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
#### チーム数変更
execute as @e[tag=MAD_Interaction_NumberOfTeamsLink] at @s on target run function mad:system/setting/team_rules/1/root/detect/ {phase:'number_of_teams'}
#### チーム編成設定変更
execute as @e[tag=MAD_Interaction_SetTeamManualLink] at @s on target run function mad:system/setting/team_rules/1/root/detect/ {phase:'set_team_manual'}
#### 死亡ペナルティ変更
execute as @e[tag=MAD_Interaction_DeathPenaltyTimeLink] at @s on target run function mad:system/setting/team_rules/1/root/detect/ {phase:'death_penalty_time'}
#### 戻る
execute as @e[tag=MAD_Interaction_ReturnLink] at @s on target run function mad:system/setting/team_rules/1/root/detect/return
#### 次へ
execute as @e[tag=MAD_Interaction_NextLink] at @s on target run function mad:system/setting/team_rules/1/root/detect/next