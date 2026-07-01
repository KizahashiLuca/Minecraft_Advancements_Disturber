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
tag @s remove mad_spectator
tag @s add mad_player
tag @s add mad_indie_player
#### プレイヤーゲームモード
gamemode adventure @s
#### ペットをキル
execute as @e[type=!minecraft:player] \
  if data entity @s Owner run \
  kill @s
#### インベントリ
clear @s
#### 経験値
experience set @s 0 levels
experience set @s 0 points
#### ステータス効果
effect clear @s
effect give @s minecraft:resistance infinite 6 true
effect give @s minecraft:saturation infinite 10 true
effect give @s minecraft:regeneration infinite 10 true
effect give @s minecraft:weakness infinite 6 true
#### 全進捗剥奪
advancement revoke @s everything

## チーム
team join mad_player @s

## ボスバー
bossbar set minecraft:bossbar players @a

## テレポート
tp @s @e[predicate=mad:marker/world_spawn,limit=1]

## スコアボード設定
function mad:system/start/initialize/set_scoreboards/player/
function mad:system/start/initialize/set_scoreboards/player/advancements

## プレイヤー計数
function mad:system/common/count_players/

## プレイヤー番号設定
function mad:system/common/numbering/add

## メッセージ
function mad:message/setting/login_midtime/to_spectator
