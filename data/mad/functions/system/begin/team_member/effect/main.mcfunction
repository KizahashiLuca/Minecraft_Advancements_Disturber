#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Effect
execute if predicate mad:gamerules/team_match/number_of_teams/ge_1 positioned ~7 ~1 ~7 run function mad:system/begin/team_member/effect/team_a
execute if predicate mad:gamerules/team_match/number_of_teams/ge_2 positioned ~-7 ~1 ~-7 run function mad:system/begin/team_member/effect/team_b
execute if predicate mad:gamerules/team_match/number_of_teams/ge_3 positioned ~7 ~1 ~-7 run function mad:system/begin/team_member/effect/team_c
execute if predicate mad:gamerules/team_match/number_of_teams/ge_4 positioned ~-7 ~1 ~7 run function mad:system/begin/team_member/effect/team_d
execute if predicate mad:gamerules/team_match/number_of_teams/ge_5 positioned ~7 ~1 ~0 run function mad:system/begin/team_member/effect/team_e