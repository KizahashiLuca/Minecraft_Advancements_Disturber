#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム追加
$team join mad_team_$(team) @s
$tag @s add mad_team_$(team)

## チーム変更メッセージ表示
$function mad:message/setting/team_member/join_team with storage mad: team.$(team)

## リロード用スコアボード設定
scoreboard players set #mad ReloadDisplay 1