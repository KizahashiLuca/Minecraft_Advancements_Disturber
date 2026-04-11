#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## プレイヤー計数
function mad:system/common/count_players/

## チーム追加
$execute if score #mad_team_$(team) NumberOfPlayers < #mad_team_$(team) MaxNumberOfPlayers run function mad:system/setting/team_member/manual/detect/join_team/in with storage mad: team.$(team)
$execute if score #mad_team_$(team) NumberOfPlayers >= #mad_team_$(team) MaxNumberOfPlayers run function mad:system/setting/team_member/manual/detect/join_team/not_in with storage mad: team.$(team)

## プレイヤー計数
function mad:system/common/count_players/