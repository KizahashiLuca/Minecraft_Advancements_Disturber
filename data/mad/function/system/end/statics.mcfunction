#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 統計開始メッセージ表示
function mad:message/end/statics/begin

## 統計メッセージ表示
#### 個人戦
execute if predicate mad:gamerule/match_mode/individual/ \
  as @a[predicate=mad:player/] run \
  function mad:message/end/statics/individual
#### チーム戦
execute if predicate mad:gamerule/team_rules/number_of_teams/ge_1 run \
  function mad:message/end/statics/team/ \
    with storage mad: team.a
execute if predicate mad:gamerule/team_rules/number_of_teams/ge_1 \
  as @a[predicate=mad:player/team/a] run \
  function mad:message/end/statics/team/player \
    with storage mad: team.a
execute if predicate mad:gamerule/team_rules/number_of_teams/ge_2 run \
  function mad:message/end/statics/team/ \
    with storage mad: team.b
execute if predicate mad:gamerule/team_rules/number_of_teams/ge_2 \
  as @a[predicate=mad:player/team/b] run \
  function mad:message/end/statics/team/player \
    with storage mad: team.b
execute if predicate mad:gamerule/team_rules/number_of_teams/ge_3 run \
  function mad:message/end/statics/team/ \
    with storage mad: team.c
execute if predicate mad:gamerule/team_rules/number_of_teams/ge_3 \
  as @a[predicate=mad:player/team/c] run \
  function mad:message/end/statics/team/player \
    with storage mad: team.c
execute if predicate mad:gamerule/team_rules/number_of_teams/ge_4 run \
  function mad:message/end/statics/team/ \
    with storage mad: team.d
execute if predicate mad:gamerule/team_rules/number_of_teams/ge_4 \
  as @a[predicate=mad:player/team/d] run \
  function mad:message/end/statics/team/player \
    with storage mad: team.d
