#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボードのリセット
function mad:system/setting/team_member/scoreboards

## タグ削除
tag @s remove mad_team_a
tag @s remove mad_team_b
tag @s remove mad_team_c
tag @s remove mad_team_d
tag @s remove mad_indie_player

## タグ設定
tag @s add mad_indie_player

## チームメンバーを参加者チームに参加
team join mad_player @s

## チーム変更メッセージ表示
function mad:message/setting/team_member/leave_team

## 頭防具変更
item replace entity @s armor.head \
  with minecraft:air
