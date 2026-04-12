#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム数変更時メッセージ表示
function mad:message/setting/team_member/leave_team/change_number_of_teams

## チーム数変更時に無いチームは解体
#### 2チーム以下へ変更
execute if predicate mad:gamerule/team_rules/number_of_teams/le_2 if score #mad_team_c NumberOfPlayers matches 1.. run function mad:system/setting/team_member/manual/display/leave_team/change_number_of_teams/dismantle_team with storage mad: team.c
#### 3チーム以下へ変更
execute if predicate mad:gamerule/team_rules/number_of_teams/le_3 if score #mad_team_d NumberOfPlayers matches 1.. run function mad:system/setting/team_member/manual/display/leave_team/change_number_of_teams/dismantle_team with storage mad: team.d