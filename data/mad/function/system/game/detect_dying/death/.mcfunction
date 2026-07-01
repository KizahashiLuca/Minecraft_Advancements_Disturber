#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 通常デス時の詳細設定
#### ストレージ
$function mad:system/game/detect_dying/death/storages/$(type) \
  with storage mad: 
#### スコアボード
$function mad:system/game/detect_dying/death/scoreboards/$(type) \
  with storage mad: death
#### ゲームモード(ハードコア時のみスペクテイターモード(観戦)に)
execute unless predicate mad:gamerule/difficulty/hardcore run \
  function mad:system/game/detect_dying/death/hardcore/false
execute if predicate mad:gamerule/difficulty/hardcore run \
  function mad:system/game/detect_dying/death/hardcore/true

## メッセージ表示
function mad:message/game/detect_dying/death/ \
  with storage mad: death

## タイトル表示
function mad:message/game/detect_dying/death/title \
  with storage mad: death
