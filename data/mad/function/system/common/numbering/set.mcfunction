#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ランダムでひとり プレイヤー番号設定
scoreboard players set #mad PlayerNumberSkip 0
execute as @a[predicate=mad:player/] if score @s PlayerNumber = #mad PlayerNumber run scoreboard players set #mad PlayerNumberSkip 1
execute if score #mad PlayerNumberSkip matches 0 run scoreboard players operation @p[predicate=mad:player/,scores={PlayerNumber=0},sort=random,limit=1] PlayerNumber = #mad PlayerNumber

## 番号未設定の人がいなくなるまでループ
scoreboard players add #mad PlayerNumber 1
execute if score #mad PlayerNumber <= #mad_player NumberOfPlayers run function mad:system/common/numbering/set