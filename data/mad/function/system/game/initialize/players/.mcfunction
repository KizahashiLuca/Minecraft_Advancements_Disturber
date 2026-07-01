#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## プレイヤーゲームモード
gamemode survival @a[predicate=mad:player/]
gamemode spectator @a[predicate=mad:player/spectator]

## ペットをキル
execute as @e[type=!minecraft:player] \
  if data entity @s Owner run \
  kill @s

## インベントリ
clear @a

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

## スポーン地点設定
execute as @a[predicate=mad:player/] run \
  spawnpoint @s ~ ~ ~

## レシピ剥奪
recipe take @a *

## 初期物資
loot give @a[predicate=mad:player/] loot mad:system/game/first_items
