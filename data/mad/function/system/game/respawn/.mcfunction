#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 初期物資
loot give @s loot mad:system/game/first_items

## プレイヤーリスポーン場所変更
execute unless data entity @s respawn run function mad:system/game/respawn/random_respawn/ with storage mad: gamerule.world_border