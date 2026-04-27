#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## データ算出
#### X座標を取得
execute store result score @s PosX run \
  data get entity @s Pos[0] 1
#### Y座標を取得
execute store result score @s PosY run \
  data get entity @s Pos[1] 1
#### Z座標を取得
execute store result score @s PosZ run \
  data get entity @s Pos[2] 1
#### 角度(方向)を取得
execute store result score @s Angle run \
  data get entity @s Rotation[0] 10

## 中心座標との差分を抽出
#### オーバーワールド
execute as @s[predicate=mad:dimension/overworld] run \
  function mad:system/common/position/get_data/difference \
    with storage mad: world_spawn.minecraft:overworld
#### ネザー
execute as @s[predicate=mad:dimension/the_nether] run \
  function mad:system/common/position/get_data/difference \
    with storage mad: world_spawn.minecraft:the_nether
#### エンド
execute as @s[predicate=mad:dimension/the_end] run \
  function mad:system/common/position/get_data/difference \
    with storage mad: world_spawn.minecraft:the_end
