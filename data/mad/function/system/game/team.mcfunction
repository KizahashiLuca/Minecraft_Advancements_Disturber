#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 死亡処理
#### チームのプレイヤーが死亡した場合、スペクテイターモードに変更されて、
#### 同チームの生存しているプレイヤーの視点になる。
#### もし同チームの生存しているプレイヤーが居なければ、
#### チームを死亡フェーズに移行する。
execute if predicate mad:gamerule/team_rules/number_of_teams/ge_1 run \
  function mad:system/game/count_alive/ \
    with storage mad: team.a
execute if predicate mad:gamerule/team_rules/number_of_teams/ge_2 run \
  function mad:system/game/count_alive/ \
    with storage mad: team.b
execute if predicate mad:gamerule/team_rules/number_of_teams/ge_3 run \
  function mad:system/game/count_alive/ \
    with storage mad: team.c
execute if predicate mad:gamerule/team_rules/number_of_teams/ge_4 run \
  function mad:system/game/count_alive/ \
    with storage mad: team.d

## リスポーンバナー判定処理
execute if entity @p[predicate=mad:player/dead/] run \
  function mad:system/game/respawn_banner/
