#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 範囲内にエンド大陸が存在するかの判定
#### ワールド範囲 X軸正(東) - 範囲内にエンド大陸が存在するかの算出用
execute store result score #mad TmpX run \
  data get storage mad: rules.world_size.half 1.0
scoreboard players operation #mad TmpX += #mad PosX
execute store result storage mad: rules.world_size.x_east int 1 run \
  scoreboard players get #mad TmpX
#### ワールド範囲 Z軸正(南) - 範囲内にエンド大陸が存在するかの算出用
execute store result score #mad TmpZ run \
  data get storage mad: rules.world_size.half 1.0
scoreboard players operation #mad TmpZ += #mad PosZ
execute store result storage mad: rules.world_size.z_south int 1 run \
  scoreboard players get #mad TmpZ
#### ワールド範囲 X軸負(西) - 範囲内にエンド大陸が存在するかの算出用
execute store result score #mad TmpX run \
  data get storage mad: rules.world_size.half -1.0
scoreboard players operation #mad TmpX += #mad PosX
execute store result storage mad: rules.world_size.x_west int 1 run \
  scoreboard players get #mad TmpX
#### ワールド範囲 Z軸負(北) - 範囲内にエンド大陸が存在するかの算出用
execute store result score #mad TmpZ run \
  data get storage mad: rules.world_size.half -1.0
scoreboard players operation #mad TmpZ += #mad PosZ
execute store result storage mad: rules.world_size.z_north int 1 run \
  scoreboard players get #mad TmpZ
#### 範囲内にエンド大陸が存在するか - 支援物資「エンドポータルフレーム」判定用
execute if predicate mad:system/wait/initialize/check_the_end run \
  data modify storage mad: rules.the_end_exists set value 1
execute unless predicate mad:system/wait/initialize/check_the_end run \
  data modify storage mad: rules.the_end_exists set value 0
