#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 招集処理
$teleport @a[predicate=mad:player/team/$(caller_team)] @p[tag=mad_player$(caller_number)]

## サウンドイベント
#### 個人戦の場合
execute if predicate mad:gamerule/match_mode/individual/ \
  as @a[predicate=mad:player/] \
  at @s run \
  playsound minecraft:entity.zombie_horse.ambient block @s ~ ~ ~ 1.0 1.0 1.0
#### チーム戦の場合
$execute if predicate mad:gamerule/match_mode/team \
  as @a[predicate=mad:player/team/$(caller_team)] \
  at @s run \
  playsound minecraft:entity.zombie_horse.ambient block @s ~ ~ ~ 1.0 1.0 1.0

## メッセージ表示
function mad:message/item/emergency_call/accept \
  with storage mad: item.emergency_call.tmp
