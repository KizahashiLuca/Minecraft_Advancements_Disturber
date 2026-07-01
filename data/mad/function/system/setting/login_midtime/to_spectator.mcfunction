#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## プレイヤー情報
#### タグ
tag @s remove mad_player
tag @s remove mad_team_a
tag @s remove mad_team_b
tag @s remove mad_team_c
tag @s remove mad_team_d
tag @s remove mad_indie_player
tag @s add mad_spectator
#### プレイヤーゲームモード
gamemode spectator @s
#### インベントリ
clear @s
#### 経験値
experience set @s 0 levels
experience set @s 0 points
#### ステータス効果
effect clear @s
#### 全進捗剥奪
advancement revoke @s everything

## チーム
team leave @s

## スコアボード設定
function mad:system/start/initialize/set_scoreboards/player/reset
function mad:system/start/initialize/set_scoreboards/spectator

## プレイヤー計数
function mad:system/common/count_players/
