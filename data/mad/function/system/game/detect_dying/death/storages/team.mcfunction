#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ格納
#### 通知先のターゲットセレクタ(メッセージ表示用)
execute as @s[predicate=mad:player/dying/a] run \
  data modify storage mad: death.address \
    set value '[predicate=mad:player/team/a]'
execute as @s[predicate=mad:player/dying/b] run \
  data modify storage mad: death.address \
    set value '[predicate=mad:player/team/b]'
execute as @s[predicate=mad:player/dying/c] run \
  data modify storage mad: death.address \
    set value '[predicate=mad:player/team/c]'
execute as @s[predicate=mad:player/dying/d] run \
  data modify storage mad: death.address \
    set value '[predicate=mad:player/team/d]'
#### 死亡した地点のディメンション
data modify storage mad: death.dimension \
  set from entity @s LastDeathLocation.dimension
#### 死亡した地点の絶対座標
execute store result storage mad: death.absolute_x int 1.0 run \
  data get entity @s LastDeathLocation.pos[0] 1.0
execute store result storage mad: death.absolute_y int 1.0 run \
  data get entity @s LastDeathLocation.pos[1] 1.0
execute store result storage mad: death.absolute_z int 1.0 run \
  data get entity @s LastDeathLocation.pos[2] 1.0
#### 死亡した地点の相対座標(ゲームの開始地点からの相対座標(メッセージ表示用))
execute store result score @s TmpX run \
  data get entity @s LastDeathLocation.pos[0] 1.0
execute store result score @s TmpY run \
  data get entity @s LastDeathLocation.pos[1] 1.0
execute store result score @s TmpZ run \
  data get entity @s LastDeathLocation.pos[2] 1.0
scoreboard players operation @s TmpX -= #mad PosX
scoreboard players operation @s TmpZ -= #mad PosZ
execute store result storage mad: death.x int 1.0 run \
  scoreboard players get @s TmpX
execute store result storage mad: death.y int 1.0 run \
  scoreboard players get @s TmpY
execute store result storage mad: death.z int 1.0 run \
  scoreboard players get @s TmpZ
#### 追加メッセージ(死亡ペナルティありの場合のメッセージ表示用)
execute if predicate mad:gamerule/death_penalty_time/eq_zero run \
  data modify storage mad: death.message \
    set value ''
execute if predicate mad:gamerule/death_penalty_time/neq_zero run \
  data modify storage mad: death.message \
    set value 'たため %s%s 失い'
#### 死因(サブタイトル表示用)
data modify storage mad: death.text \
  set value ''
