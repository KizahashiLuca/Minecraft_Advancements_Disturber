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
tag @s remove MAD_Spectator
tag @s add mad_player
tag @s add mad_team_no
#### プレイヤーゲームモード
gamemode adventure @s
#### ペットをキル
execute as @e[type=!minecraft:player] if data entity @s Owner run kill @s
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
#### 全進捗剥奪
advancement revoke @s everything

## チーム
team join mad_player @s

## ボスバー
bossbar set minecraft:bossbar players @a

## テレポート
tp @s @e[predicate=mad:marker/respawn_beacon,limit=1]

## スコアボード設定
function mad:system/start/initialize/set_scoreboards/player/
function mad:system/start/initialize/set_scoreboards/player/advancements

## プレイヤー計数
function mad:system/common/count_players/

## プレイヤー番号設定
function mad:system/common/numbering/add

## インタラクション検知削除
execute as @e[tag=MAD_Interaction] run data remove entity @s interaction