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
#### 犠牲者
function mad:system/game/detect_dying/kill/storages/victim/ \
  with storage mad: death
#### 攻撃者
function mad:system/game/detect_dying/kill/storages/killer/ \
  with storage mad: death
#### マッチモードごと
$function mad:system/game/detect_dying/kill/storages/$(type) \
  with storage mad: death

## PvP分岐
#### PvP解禁後、犠牲者は蘇生しない
execute if predicate mad:system/game/timer/pvp/mode/pvp_on \
  if predicate mad:system/game/detect_dying/other_team run \
  function mad:system/game/detect_dying/kill/pvp_on
#### PvP解禁前、犠牲者は蘇生する
execute if predicate mad:system/game/timer/pvp/mode/pvp_off \
  if predicate mad:system/game/detect_dying/same_team run \
  function mad:system/game/detect_dying/kill/pvp_off

## リスポーンバナー設置
execute if predicate mad:system/game/timer/pvp/mode/pvp_on \
  if predicate mad:system/game/detect_dying/other_team run \
  function mad:system/game/respawn_banner/construct/ \
    with storage mad: death

## メッセージ表示
#### 加害者と犠牲者(チーム戦の場合チームも)に死亡通知
function mad:message/game/detect_dying/kill/ \
  with storage mad: death

## タイトル表示
function mad:message/game/detect_dying/kill/title \
  with storage mad: death
