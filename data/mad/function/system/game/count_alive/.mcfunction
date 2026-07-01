#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## スペクテイターモードへ変更
$execute as @a[predicate=mad:player/dead/$(team)] \
  at @s run \
  function mad:system/game/count_alive/spectate \
    with storage mad: team.$(team)

## チーム終了を検出
#### もし同チームの生存しているプレイヤーが居なければ、
#### チームを死亡フェーズに移行する
$execute unless entity @p[predicate=mad:player/alive/$(team)] \
  unless entity @p[predicate=mad:player/dying/$(team)] \
  if predicate mad:phase/game/$(team) run \
  function mad:system/game/count_alive/set_end \
    with storage mad: team.$(team)
