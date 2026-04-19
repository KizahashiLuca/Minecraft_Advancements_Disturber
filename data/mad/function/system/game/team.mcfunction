#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## スポーンポイント設定
#### スポーンポイントが設定されていない場合、
#### リスポーン直後にそれぞれチーム範囲にテレポート
execute as @a[predicate=mad:player/alive/respawn] \
  unless data entity @s respawn run \
  function mad:system/game/respawn/ with storage mad: rules.world_size

## 死亡処理
#### チームのプレイヤーが死亡した場合、スペクテイターモードに変更されて、
#### 同チームの生存しているプレイヤーの視点になる。
#### もし同チームの生存しているプレイヤーが居なければ、
#### チームを死亡フェーズに移行する。
execute if predicate mad:gamerule/team_rules/number_of_teams/ge_1 run \
  function mad:system/game/count_alive/ with storage mad: team.a
execute if predicate mad:gamerule/team_rules/number_of_teams/ge_2 run \
  function mad:system/game/count_alive/ with storage mad: team.b
execute if predicate mad:gamerule/team_rules/number_of_teams/ge_3 run \
  function mad:system/game/count_alive/ with storage mad: team.c
execute if predicate mad:gamerule/team_rules/number_of_teams/ge_4 run \
  function mad:system/game/count_alive/ with storage mad: team.d

## リスポーンバナー
execute if entity @p[predicate=mad:player/dead/] run function mad:system/game/respawn_banner/

# ## Respawn beacon system
# execute as @e[predicate=mad:area_effect_cloud/respawn_beacon/structure] at @s run function mad:system/common/respawn_beacon/main
# execute as @e[predicate=mad:marker/respawn_beacon/position] at @s run function mad:system/common/respawn_beacon/construct