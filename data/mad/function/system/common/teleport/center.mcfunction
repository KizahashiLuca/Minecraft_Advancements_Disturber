#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ワールド中心へのテレポート
tp @s @e[predicate=mad:marker/world_spawn,limit=1]

## スコアボード設定
scoreboard players set @s TeleportToWorldCenter 0
scoreboard players enable @s TeleportToWorldCenter