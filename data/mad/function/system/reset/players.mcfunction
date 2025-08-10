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
#gamemode adventure @a

## ペットをキル
execute as @e[type=!minecraft:player] if data entity @s Owner run kill @s

## インベントリ
#clear @a

## 経験値
#experience set @a 0 levels
#experience set @a 0 points

## ステータス効果
effect clear @a

## 全進捗剥奪
#advancement revoke @a everything