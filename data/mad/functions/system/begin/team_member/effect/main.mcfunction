#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Effect
execute if predicate mad:gamerules/team_match/number_of_teams/ge_1 positioned 7 2 7 run function mad:system/begin/team_member/effect/team_a
execute if predicate mad:gamerules/team_match/number_of_teams/ge_2 positioned -7 2 -7 run function mad:system/begin/team_member/effect/team_b
execute if predicate mad:gamerules/team_match/number_of_teams/ge_3 positioned 7 2 -7 run function mad:system/begin/team_member/effect/team_c
execute if predicate mad:gamerules/team_match/number_of_teams/ge_4 positioned -7 2 7 run function mad:system/begin/team_member/effect/team_d
execute if predicate mad:gamerules/team_match/number_of_teams/ge_5 positioned 7 2 0 run function mad:system/begin/team_member/effect/team_e