#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## サウンドイベント
#### 個人戦の場合
execute if predicate mad:gamerule/match_mode/individual/ \
  as @a[predicate=mad:player/] \
  at @s run \
  playsound minecraft:entity.zombie_horse.hurt block @s ~ ~ ~ 1.0 1.0 1.0
#### チーム戦の場合
$execute if predicate mad:gamerule/match_mode/team \
  as @a[predicate=mad:player/team/$(caller_team)] \
  at @s run \
  playsound minecraft:entity.zombie_horse.hurt block @s ~ ~ ~ 1.0 1.0 1.0

## メッセージ表示
function mad:message/item/emergency_call/dead \
  with storage mad: item.emergency_call.tmp
