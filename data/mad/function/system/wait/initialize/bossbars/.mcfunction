#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボード設定
scoreboard players operation #mad GeneralTick = #mad TimeOfWaitPhase
scoreboard players operation #mad GeneralTick *= #mad 20

## ボスバー
#### 待機フェーズ
bossbar set minecraft:bossbar players @a
bossbar set minecraft:bossbar name ['',{text:'待機フェーズ',color:'light_purple'}]
execute store result bossbar minecraft:bossbar max run scoreboard players get #mad GeneralTick
execute store result bossbar minecraft:bossbar value run scoreboard players get #mad GeneralTick
bossbar set minecraft:bossbar color white
bossbar set minecraft:bossbar style notched_10
bossbar set minecraft:bossbar visible true

## ボスバー設定
execute if predicate mad:gamerule/match_mode/individual/ as @a[predicate=mad:player/] run function mad:system/wait/initialize/bossbars/individual/