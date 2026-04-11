#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム戦生存者検出
execute if predicate mad:gamerule/team_rules/1/number_of_teams/ge_1 run function mad:system/game/count_alive/each_team with storage mad: team.a
execute if predicate mad:gamerule/team_rules/1/number_of_teams/ge_2 run function mad:system/game/count_alive/each_team with storage mad: team.b
execute if predicate mad:gamerule/team_rules/1/number_of_teams/ge_3 run function mad:system/game/count_alive/each_team with storage mad: team.c
execute if predicate mad:gamerule/team_rules/1/number_of_teams/ge_4 run function mad:system/game/count_alive/each_team with storage mad: team.d