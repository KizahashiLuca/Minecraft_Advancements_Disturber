#####################################
## Minecraft Advancements Disturber
## MC-MCVersion: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## MCVersion   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボード追加
scoreboard objectives add DataVersion dummy
scoreboard objectives add MCVersion dummy
scoreboard players set #mad DataVersion 0
scoreboard players set #mad MCVersion 13

## マインクラフトバージョン検出
execute store result score #mad DataVersion run data get entity @p DataVersion
execute if score #mad DataVersion matches 0..1631 run scoreboard players set #mad MCVersion 13
execute if score #mad DataVersion matches 1901..2069 run scoreboard players set #mad MCVersion 14
execute if score #mad DataVersion matches 2200..2321 run scoreboard players set #mad MCVersion 15
execute if score #mad DataVersion matches 2504..2586 run scoreboard players set #mad MCVersion 16
execute if score #mad DataVersion matches 2681..2730 run scoreboard players set #mad MCVersion 17
execute if score #mad DataVersion matches 2825..2975 run scoreboard players set #mad MCVersion 18
execute if score #mad DataVersion matches 3066..3337 run scoreboard players set #mad MCVersion 19
execute if score #mad DataVersion matches 3442..3839 run scoreboard players set #mad MCVersion 20

## ロードメッセージ表示
tellraw @a ["",{"text":"  バージョンエラー","color":"yellow","bold":true}]
tellraw @a ["",{"text":"  対応バージョン     : ","color":"white"},{"text":"JE 1.21.7 Release 以降","color":"green"}]
execute if score #mad DataVersion matches 0..3839 run tellraw @a ["",{"text":"  あなたのバージョン : ","color":"white"},{"text":"JE 1.","color":"red","bold":true},{"score":{"name":"#mad","objective":"MCVersion"},"color":"red","bold":true}]
execute if score #mad DataVersion matches 3940..3944 run tellraw @a ["",{"text":"  あなたのバージョン : ","color":"white"},{"text":"JE 1.21.0 Snapshot","color":"red","bold":true}]

## スコアボード削除
scoreboard objectives remove DataVersion
scoreboard objectives remove MCVersion