#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 疑似乱数 - 初期設定
#### 乱数の種を初期化
scoreboard players set #mad RandomizerSeed 0
#### プレイヤーの向きから乱数の種を生成
execute as @a store result score @s RandomizerSeed run \
  data get entity @s Rotation[0] 5
execute as @a[scores={RandomizerSeed=..0}] run \
  scoreboard players add @s RandomizerSeed 1800
execute as @a run \
  scoreboard players operation #mad RandomizerSeed += @s RandomizerSeed
