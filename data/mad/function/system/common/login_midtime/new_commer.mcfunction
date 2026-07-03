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
tag @s add mad_spectator
#### プレイヤーゲームモード
gamemode spectator @s
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
#### 全進捗剥奪
advancement revoke @s everything

## ボスバー
bossbar set minecraft:bossbar players @a

## ウェイポイント
attribute @s minecraft:waypoint_transmit_range base set 0

## テレポート
tp @s @e[predicate=mad:marker/world_spawn,limit=1]

## スコアボード設定
function mad:system/start/initialize/set_scoreboards/spectator
