#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 死亡した地点の絶対座標
execute store result storage mad: death.absolute_x int 1.0 run \
  data get entity @s LastDeathLocation.pos[0] 1.0
execute store result storage mad: death.absolute_y int 1.0 run \
  data get entity @s LastDeathLocation.pos[1] 1.0
execute store result storage mad: death.absolute_z int 1.0 run \
  data get entity @s LastDeathLocation.pos[2] 1.0

## 死亡した地点の相対座標(ゲームの開始地点からの相対座標(メッセージ表示用))
#### 相対座標の基となる絶対座標を取得
execute store result score @s TmpX run \
  data get entity @s LastDeathLocation.pos[0] 1.0
execute store result score @s TmpY run \
  data get entity @s LastDeathLocation.pos[1] 1.0
execute store result score @s TmpZ run \
  data get entity @s LastDeathLocation.pos[2] 1.0
#### 差分で相対座標算出
$function mad:system/game/detect_dying/death/storages/get_coordinates/difference \
  with storage mad: world_spawn.$(dimension)
#### ストレージに格納
execute store result storage mad: death.x int 1.0 run \
  scoreboard players get @s TmpX
execute store result storage mad: death.y int 1.0 run \
  scoreboard players get @s TmpY
execute store result storage mad: death.z int 1.0 run \
  scoreboard players get @s TmpZ
