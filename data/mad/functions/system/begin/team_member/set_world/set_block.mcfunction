#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Set block
setblock 0 1 0 minecraft:beacon
execute if predicate mad:gamerules/team_match/number_of_teams/ge_1 positioned 7 1 7 run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:red_concrete
execute if predicate mad:gamerules/team_match/number_of_teams/ge_2 positioned -7 1 -7 run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:blue_concrete
execute if predicate mad:gamerules/team_match/number_of_teams/ge_3 positioned 7 1 -7 run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:yellow_concrete
execute if predicate mad:gamerules/team_match/number_of_teams/ge_4 positioned -7 1 7 run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:green_concrete
execute if predicate mad:gamerules/team_match/number_of_teams/ge_5 positioned 7 1 0 run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:purple_concrete