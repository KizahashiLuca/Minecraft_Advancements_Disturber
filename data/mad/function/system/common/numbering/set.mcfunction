#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## プレイヤー番号設定
#### 既に設定されている番号の場合はスキップ
scoreboard players set #mad PlayerNumberSkip 0
execute as @a[predicate=mad:player/] \
  if score @s PlayerNumber = #mad PlayerNumber run \
  scoreboard players set #mad PlayerNumberSkip 1
#### この番号が設定されているプレイヤーがいない場合は、番号をランダムに割り当て
execute if score #mad PlayerNumberSkip matches 0 run \
  scoreboard players operation @p[predicate=mad:player/,scores={PlayerNumber=0},sort=random,limit=1] PlayerNumber = #mad PlayerNumber

## 次の番号へ
scoreboard players add #mad PlayerNumber 1

## 番号未設定の人がいなくなるまでループ
execute if score #mad PlayerNumber <= #mad_player NumberOfPlayers run \
  function mad:system/common/numbering/set
