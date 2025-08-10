#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## ワールド中心へのテレポート
tp @s @e[predicate=mad:marker/world_spawn,limit=1]

## スコアボード設定
scoreboard players set @s TeleportToWorldCenter 0
scoreboard players enable @s TeleportToWorldCenter