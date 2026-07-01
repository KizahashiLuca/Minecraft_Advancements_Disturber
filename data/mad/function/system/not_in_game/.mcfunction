#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## トリガーの処理
#### スペクテイタートリガー
execute as @a[predicate=mad:system/not_in_game/triggered/spectator/] \
  at @s run \
  function mad:system/not_in_game/triggered/spectator/
#### ゲーム制御トリガー
execute as @p[predicate=mad:system/not_in_game/triggered/execute/] \
  at @s run \
  function mad:system/not_in_game/triggered/execute/
