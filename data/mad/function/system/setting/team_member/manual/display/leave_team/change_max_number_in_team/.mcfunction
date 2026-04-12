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
function mad:message/setting/team_member/leave_team/change_max_number_in_team

## 初期設定
data modify storage mad: team.a.limit set value 0
data modify storage mad: team.b.limit set value 0
data modify storage mad: team.c.limit set value 0
data modify storage mad: team.d.limit set value 0

## チーム数変更時にチームメンバー上限を超過していた場合、離脱させるメンバー数を算出
#### 3チームへ変更
execute if predicate mad:gamerule/team_rules/number_of_teams/3 if score #mad_team_a NumberOfPlayers > #mad_team_a MaxNumberOfPlayers run function mad:system/setting/team_member/manual/display/leave_team/change_max_number_in_team/calculate with storage mad: team.a
execute if predicate mad:gamerule/team_rules/number_of_teams/3 if score #mad_team_b NumberOfPlayers > #mad_team_b MaxNumberOfPlayers run function mad:system/setting/team_member/manual/display/leave_team/change_max_number_in_team/calculate with storage mad: team.b
#### 4チームへ変更
execute if predicate mad:gamerule/team_rules/number_of_teams/4 if score #mad_team_a NumberOfPlayers > #mad_team_a MaxNumberOfPlayers run function mad:system/setting/team_member/manual/display/leave_team/change_max_number_in_team/calculate with storage mad: team.a
execute if predicate mad:gamerule/team_rules/number_of_teams/4 if score #mad_team_b NumberOfPlayers > #mad_team_b MaxNumberOfPlayers run function mad:system/setting/team_member/manual/display/leave_team/change_max_number_in_team/calculate with storage mad: team.b
execute if predicate mad:gamerule/team_rules/number_of_teams/4 if score #mad_team_c NumberOfPlayers > #mad_team_c MaxNumberOfPlayers run function mad:system/setting/team_member/manual/display/leave_team/change_max_number_in_team/calculate with storage mad: team.c

## メンバーを離脱
function mad:system/setting/team_member/manual/display/leave_team/change_max_number_in_team/leave_team_randomly with storage mad: team.a
function mad:system/setting/team_member/manual/display/leave_team/change_max_number_in_team/leave_team_randomly with storage mad: team.b
function mad:system/setting/team_member/manual/display/leave_team/change_max_number_in_team/leave_team_randomly with storage mad: team.c