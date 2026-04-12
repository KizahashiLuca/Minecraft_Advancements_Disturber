#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 場所移動検知
execute if predicate mad:gamerule/team_rules/number_of_teams/ge_2 positioned ~3.1 ~ ~3.1 as @a[predicate=mad:player/team/not_a,dx=2,dy=4,dz=2] run function mad:system/setting/team_member/manual/detect/join_team/calculate_limit with storage mad: team.a
execute if predicate mad:gamerule/team_rules/number_of_teams/ge_2 positioned ~-6.1 ~ ~-6.1 as @a[predicate=mad:player/team/not_b,dx=2,dy=4,dz=2] run function mad:system/setting/team_member/manual/detect/join_team/calculate_limit with storage mad: team.b
execute if predicate mad:gamerule/team_rules/number_of_teams/ge_3 positioned ~3.1 ~ ~-6.1 as @a[predicate=mad:player/team/not_c,dx=2,dy=4,dz=2] run function mad:system/setting/team_member/manual/detect/join_team/calculate_limit with storage mad: team.c
execute if predicate mad:gamerule/team_rules/number_of_teams/ge_4 positioned ~-6.1 ~ ~3.1 as @a[predicate=mad:player/team/not_d,dx=2,dy=4,dz=2] run function mad:system/setting/team_member/manual/detect/join_team/calculate_limit with storage mad: team.d