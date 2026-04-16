#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## トリガーの処理
#### スペクテイタートリガー
execute if entity @p[predicate=mad:system/not_in_game/triggered/spectator/] run \
  function mad:system/not_in_game/triggered/spectator/
#### ゲーム制御トリガー
execute if entity @p[predicate=mad:system/not_in_game/triggered/execute/] run \
  function mad:system/not_in_game/triggered/execute/
