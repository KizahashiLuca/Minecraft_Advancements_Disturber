#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ格納(すべて相対座標)
#### ワールド中心
data modify storage mad: rules.world_size.x \
  set value 0
data modify storage mad: rules.world_size.z \
  set value 0
#### ワールド範囲 X軸正(東) - 支援物資投下地点/進捗「この世界の片隅に」算出用
execute store result score #mad TmpX run \
  data get storage mad: rules.world_size.half 1.0
execute store result storage mad: rules.world_size.x_east int 1 run \
  scoreboard players get #mad TmpX
#### ワールド範囲 Z軸正(南) - 支援物資投下地点/進捗「この世界の片隅に」算出用
execute store result score #mad TmpZ run \
  data get storage mad: rules.world_size.half 1.0
execute store result storage mad: rules.world_size.z_south int 1 run \
  scoreboard players get #mad TmpZ
#### ワールド範囲 X軸負(西) - 支援物資投下地点/進捗「この世界の片隅に」算出用
execute store result score #mad TmpX run \
  data get storage mad: rules.world_size.half -1.0
execute store result storage mad: rules.world_size.x_west int 1 run \
  scoreboard players get #mad TmpX
#### ワールド範囲 Z軸負(北) - 支援物資投下地点/進捗「この世界の片隅に」算出用
execute store result score #mad TmpZ run \
  data get storage mad: rules.world_size.half -1.0
execute store result storage mad: rules.world_size.z_north int 1 run \
  scoreboard players get #mad TmpZ
#### ワールド各象限内点 X軸正(東) - ランダムスポーン用
execute store result storage mad: rules.world_size.x_inner_east int 0.5 run \
  data get storage mad: rules.world_size.x_east
#### ワールド各象限内点 Z軸正(南) - ランダムスポーン用
execute store result storage mad: rules.world_size.z_inner_south int 0.5 run \
  data get storage mad: rules.world_size.z_south
#### ワールド各象限内点 X軸負(西) - ランダムスポーン用
execute store result storage mad: rules.world_size.x_inner_west int 0.5 run \
  data get storage mad: rules.world_size.x_west
#### ワールド各象限内点 Z軸負(北) - ランダムスポーン用
execute store result storage mad: rules.world_size.z_inner_north int 0.5 run \
  data get storage mad: rules.world_size.z_north

#### ストレージ設定 - ランダムリスポーン範囲
function mad:system/wait/initialize/storages/world_size/random_respawn \
  with storage mad: rules.world_size
