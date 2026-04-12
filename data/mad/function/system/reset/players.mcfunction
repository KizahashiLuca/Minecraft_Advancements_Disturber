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
#gamemode adventure @a

## ペットをキル
execute as @e[type=!minecraft:player] \
  if data entity @s Owner run \
  kill @s

## インベントリ
#clear @a

## 経験値
#experience set @a 0 levels
#experience set @a 0 points

## ステータス効果
effect clear @a

## 全進捗剥奪
#advancement revoke @a everything
