#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## プレイヤー計数
function mad:system/common/count_players/

## メンバーランダム設定
execute if predicate mad:gamerule/team_rules/1/number_of_teams/ge_1 if score #mad_team_a NumberOfPlayers < #mad_team_a MaxNumberOfPlayers as @p[predicate=mad:player/team/no,sort=random] run function mad:system/setting/team_member/manual/display/player_head/join_team with storage mad: team.a
execute if predicate mad:gamerule/team_rules/1/number_of_teams/ge_2 if score #mad_team_b NumberOfPlayers < #mad_team_b MaxNumberOfPlayers as @p[predicate=mad:player/team/no,sort=random] run function mad:system/setting/team_member/manual/display/player_head/join_team with storage mad: team.b
execute if predicate mad:gamerule/team_rules/1/number_of_teams/ge_3 if score #mad_team_c NumberOfPlayers < #mad_team_c MaxNumberOfPlayers as @p[predicate=mad:player/team/no,sort=random] run function mad:system/setting/team_member/manual/display/player_head/join_team with storage mad: team.c
execute if predicate mad:gamerule/team_rules/1/number_of_teams/ge_4 if score #mad_team_d NumberOfPlayers < #mad_team_d MaxNumberOfPlayers as @p[predicate=mad:player/team/no,sort=random] run function mad:system/setting/team_member/manual/display/player_head/join_team with storage mad: team.d

## 所属チーム無しメンバーが居れば追加でランダム設定
execute if entity @p[predicate=mad:player/team/no] run function mad:system/setting/team_member/random/set_member