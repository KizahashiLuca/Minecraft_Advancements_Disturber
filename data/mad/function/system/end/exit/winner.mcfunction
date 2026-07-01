#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 対戦形式分岐
#### 個人戦
execute if predicate mad:gamerule/match_mode/individual/ \
  if entity @p[predicate=mad:player/alive/] run \
  function mad:message/end/winner/individual
#### チーム戦
execute if predicate mad:gamerule/match_mode/team \
  if entity @p[predicate=mad:player/alive/a] run \
  function mad:message/end/winner/team \
    with storage mad: team.a
execute if predicate mad:gamerule/match_mode/team \
  if entity @p[predicate=mad:player/alive/b] run \
  function mad:message/end/winner/team \
    with storage mad: team.b
execute if predicate mad:gamerule/match_mode/team \
  if entity @p[predicate=mad:player/alive/c] run \
  function mad:message/end/winner/team \
    with storage mad: team.c
execute if predicate mad:gamerule/match_mode/team \
  if entity @p[predicate=mad:player/alive/d] run \
  function mad:message/end/winner/team \
    with storage mad: team.d
