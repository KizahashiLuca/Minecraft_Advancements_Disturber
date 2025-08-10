#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム数変更時メッセージ表示
function mad:message/setting/team_member/leave_team/change_number_of_teams

## チーム数変更時に無いチームは解体
#### 2チーム以下へ変更
execute if predicate mad:gamerule/team_rules/1/number_of_teams/le_2 if score #mad_team_c NumberOfPlayers matches 1.. run function mad:system/setting/team_member/manual/display/leave_team/change_number_of_teams/dismantle_team with storage mad: team.c
#### 3チーム以下へ変更
execute if predicate mad:gamerule/team_rules/1/number_of_teams/le_3 if score #mad_team_d NumberOfPlayers matches 1.. run function mad:system/setting/team_member/manual/display/leave_team/change_number_of_teams/dismantle_team with storage mad: team.d