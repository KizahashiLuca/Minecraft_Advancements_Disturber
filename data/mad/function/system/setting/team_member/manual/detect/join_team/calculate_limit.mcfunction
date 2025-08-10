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

## チーム追加
$execute if score #mad_team_$(team) NumberOfPlayers < #mad_team_$(team) MaxNumberOfPlayers run function mad:system/setting/team_member/manual/detect/join_team/in with storage mad: team.$(team)
$execute if score #mad_team_$(team) NumberOfPlayers >= #mad_team_$(team) MaxNumberOfPlayers run function mad:system/setting/team_member/manual/detect/join_team/not_in with storage mad: team.$(team)

## プレイヤー計数
function mad:system/common/count_players/