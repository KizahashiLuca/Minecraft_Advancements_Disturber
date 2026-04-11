#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## フェーズ分岐
#### ルートフェーズ
execute if predicate mad:phase/setting/team_rules/1/root run function mad:system/setting/team_rules/1/root/
#### チーム数変更フェーズ
execute if predicate mad:phase/setting/team_rules/1/number_of_teams run function mad:system/setting/team_rules/1/number_of_teams/
#### チーム編成設定変更フェーズ
execute if predicate mad:phase/setting/team_rules/1/set_team_manual run function mad:system/setting/team_rules/1/set_team_manual/
#### 死亡ペナルティ変更フェーズ
execute if predicate mad:phase/setting/team_rules/1/death_penalty_time run function mad:system/setting/team_rules/1/death_penalty_time/