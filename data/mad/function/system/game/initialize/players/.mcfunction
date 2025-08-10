#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## プレイヤーゲームモード
gamemode survival @a[predicate=mad:player/]
gamemode spectator @a[predicate=mad:player/spectator]

## ペットをキル
execute as @e[type=!minecraft:player] if data entity @s Owner run kill @s

## インベントリ
clear @a

## 各プレイヤーのエンダーチェストからアイテムを消去
function mad:system/game/initialize/players/clear_enderchest

## 初期物資
loot give @a[predicate=mad:player/] loot mad:system/game/first_items

## 経験値
experience set @a 0 levels
experience set @a 0 points

## ステータス効果
effect clear @a[predicate=mad:player/]
effect give @a[predicate=mad:player/spectator] minecraft:invisibility infinite 1 true
effect give @a[predicate=mad:player/spectator] minecraft:night_vision infinite 1 true

## 全進捗剥奪
advancement revoke @a everything
advancement grant @a until mad:original/root
advancement grant @a until mad:achievement/root

## レシピ剥奪
recipe take @a *