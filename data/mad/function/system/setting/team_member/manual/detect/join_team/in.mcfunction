#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム追加
$team join mad_team_$(team) @s
$tag @s add mad_team_$(team)

## チーム変更メッセージ表示
$function mad:message/setting/team_member/join_team with storage mad: team.$(team)

## リロード用スコアボード設定
scoreboard players set #mad ReloadDisplay 1