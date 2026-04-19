#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 1秒減算
scoreboard players remove #mad Second 1

## チーム分岐
#### チームが生きているときにチーム内秒数計算とタイムアップ判定を実施
execute if predicate mad:system/game/timer/team/a run \
  function mad:system/game/timer/team/ \
    with storage mad: team.a
execute if predicate mad:system/game/timer/team/b run \
  function mad:system/game/timer/team/ \
    with storage mad: team.b
execute if predicate mad:system/game/timer/team/c run \
  function mad:system/game/timer/team/ \
    with storage mad: team.c
execute if predicate mad:system/game/timer/team/d run \
  function mad:system/game/timer/team/ \
    with storage mad: team.d
