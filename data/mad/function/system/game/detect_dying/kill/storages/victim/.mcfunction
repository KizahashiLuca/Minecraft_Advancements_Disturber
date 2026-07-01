#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージに死亡時の状況を保持
#### 犠牲者のターゲットセレクタ(メッセージ表示用)
$data modify storage mad: death.victim \
  set value '@p[tag=mad_player$(victim_number)]'
#### 死亡した地点のディメンション
data modify storage mad: death.dimension \
  set from entity @s LastDeathLocation.dimension
#### 死亡した地点の座標算出
function mad:system/game/detect_dying/kill/storages/get_coordinates/ \
  with storage mad: death
#### 追加メッセージ(撃破ボーナスありの場合のメッセージ表示用)
data modify storage mad: death.message \
  set value ''
#### 犠牲者のチーム番号(メッセージ表示用)
execute as @s[predicate=mad:player/team/a] run \
  data modify storage mad: death.victim_team \
    set value 'a'
execute as @s[predicate=mad:player/team/b] run \
  data modify storage mad: death.victim_team \
    set value 'b'
execute as @s[predicate=mad:player/team/c] run \
  data modify storage mad: death.victim_team \
    set value 'c'
execute as @s[predicate=mad:player/team/d] run \
  data modify storage mad: death.victim_team \
    set value 'd'
