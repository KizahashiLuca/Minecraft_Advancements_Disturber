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
#### 死亡した地点の座標算出
function mad:system/game/detect_dying/death/storages/get_coordinates/ \
  with storage mad: death
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
