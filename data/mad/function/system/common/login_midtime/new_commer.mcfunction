#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## プレイヤー情報
#### タグ
tag @s add MAD_Spectator
#### プレイヤーゲームモード
gamemode spectator @s
#### ペットをキル
execute as @e[type=!minecraft:player] if data entity @s Owner run kill @s
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

## テレポート
tp @s @e[predicate=mad:marker/respawn_beacon,limit=1]

## スコアボード設定
function mad:system/start/initialize/set_scoreboards/spectator