#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## フェーズ変更メッセージ表示
function mad:message/setting/team_member/

## スコアボード設定
execute if predicate mad:gamerule/team_rules/1/number_of_teams/2 run scoreboard players set #mad_team_a MaxNumberOfPlayers 12
execute if predicate mad:gamerule/team_rules/1/number_of_teams/2 run scoreboard players set #mad_team_b MaxNumberOfPlayers 12
execute if predicate mad:gamerule/team_rules/1/number_of_teams/3 run scoreboard players set #mad_team_a MaxNumberOfPlayers 9
execute if predicate mad:gamerule/team_rules/1/number_of_teams/3 run scoreboard players set #mad_team_b MaxNumberOfPlayers 9
execute if predicate mad:gamerule/team_rules/1/number_of_teams/3 run scoreboard players set #mad_team_c MaxNumberOfPlayers 9
execute if predicate mad:gamerule/team_rules/1/number_of_teams/4 run scoreboard players set #mad_team_a MaxNumberOfPlayers 6
execute if predicate mad:gamerule/team_rules/1/number_of_teams/4 run scoreboard players set #mad_team_b MaxNumberOfPlayers 6
execute if predicate mad:gamerule/team_rules/1/number_of_teams/4 run scoreboard players set #mad_team_c MaxNumberOfPlayers 6
execute if predicate mad:gamerule/team_rules/1/number_of_teams/4 run scoreboard players set #mad_team_d MaxNumberOfPlayers 6

## チーム数変更時に無いチームのメンバーは離脱
function mad:system/setting/team_member/manual/display/leave_team/

## ディスプレイ召喚
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] positioned ~ ~1 ~6.45 run function mad:system/setting/team_member/manual/display/

## フェーズ設定
function mad:phase/setting/team_member/manual