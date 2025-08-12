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
execute at @s run playsound minecraft:ui.button.click ui @a

## プレイヤー情報
#### タグ
tag @s remove mad_player
tag @s remove mad_team_a
tag @s remove mad_team_b
tag @s remove mad_team_c
tag @s remove mad_team_d
tag @s remove mad_team_no
tag @s add MAD_Spectator
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

## インタラクション検知削除
execute as @e[tag=MAD_Interaction] run data remove entity @s interaction