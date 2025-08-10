#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム離脱メッセージ表示
$function mad:message/setting/team_member/leave_team/ with storage mad: team.$(team)

## タグ削除
tag @s remove mad_team_a
tag @s remove mad_team_b
tag @s remove mad_team_c
tag @s remove mad_team_d
tag @s remove mad_team_no

## タグ設定
tag @s add mad_team_no

## チームメンバーを参加者チームに参加
team join mad_player @s