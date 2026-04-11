#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## タグ削除
tag @s remove mad_team_a
tag @s remove mad_team_b
tag @s remove mad_team_c
tag @s remove mad_team_d
tag @s remove mad_indie_player

## タグ設定
$tag @s add mad_team_$(team)

## チーム追加
team join mad_player @s[tag=mad_indie_player]
$team join mad_team_$(team) @s[tag=!mad_indie_player]