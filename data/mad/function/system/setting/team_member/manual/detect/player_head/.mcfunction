#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## サウンド
execute at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 1.0 1.0 1.0

## スコアボード設定
scoreboard players operation #mad PlayerNumber = @s PlayerHeadNumber
execute as @a[predicate=mad:player/] if score @s PlayerNumber = #mad PlayerNumber run tag @s add MAD_PlayerToLeaveTeam

## チーム離脱メッセージ表示
execute as @p[tag=MAD_PlayerToLeaveTeam,predicate=mad:player/team/a] run function mad:message/setting/team_member/leave_team/ with storage mad: team.a
execute as @p[tag=MAD_PlayerToLeaveTeam,predicate=mad:player/team/b] run function mad:message/setting/team_member/leave_team/ with storage mad: team.b
execute as @p[tag=MAD_PlayerToLeaveTeam,predicate=mad:player/team/c] run function mad:message/setting/team_member/leave_team/ with storage mad: team.c
execute as @p[tag=MAD_PlayerToLeaveTeam,predicate=mad:player/team/d] run function mad:message/setting/team_member/leave_team/ with storage mad: team.d

## チーム離脱
team join mad_player @p[tag=MAD_PlayerToLeaveTeam,predicate=mad:player/team/]

## タグ削除
tag @e remove MAD_PlayerToLeaveTeam

## リロード用スコアボード設定
scoreboard players set #mad ReloadDisplay 1

## インタラクション検知削除
data remove entity @s interaction