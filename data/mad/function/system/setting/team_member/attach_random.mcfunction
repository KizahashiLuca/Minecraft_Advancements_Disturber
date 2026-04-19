#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## プレイヤー計数
function mad:system/common/count_players/

## メンバーランダム設定
execute if predicate mad:gamerule/team_rules/number_of_teams/ge_1 \
  as @p[predicate=mad:player/team/indie,sort=random] run \
  function mad:system/setting/team_member/join_team \
    with storage mad: team.a
execute if predicate mad:gamerule/team_rules/number_of_teams/ge_2 \
  as @p[predicate=mad:player/team/indie,sort=random] run \
  function mad:system/setting/team_member/join_team \
    with storage mad: team.b
execute if predicate mad:gamerule/team_rules/number_of_teams/ge_3 \
  as @p[predicate=mad:player/team/indie,sort=random] run \
  function mad:system/setting/team_member/join_team \
    with storage mad: team.c
execute if predicate mad:gamerule/team_rules/number_of_teams/ge_4 \
  as @p[predicate=mad:player/team/indie,sort=random] run \
  function mad:system/setting/team_member/join_team \
    with storage mad: team.d

## メンバー個人設定
execute if predicate mad:gamerule/match_mode/individual/ run \
  function mad:system/setting/team_member/individual

## 所属チーム無しメンバーが居れば追加でランダム設定
execute if entity @p[predicate=mad:player/team/indie] run \
  function mad:system/setting/team_member/attach_random
