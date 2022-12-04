#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set block
fill ~-11 ~ ~-11 ~11 ~9 ~11 minecraft:bedrock hollow
fill ~-10 ~1 ~-10 ~10 ~8 ~10 minecraft:sea_lantern hollow
setblock ~ ~1 ~ minecraft:beacon
execute if predicate mad:gamerules/team_match/number_of_teams/ge_1 positioned ~7 ~1 ~7 run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:red_concrete
execute if predicate mad:gamerules/team_match/number_of_teams/ge_2 positioned ~-7 ~1 ~-7 run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:blue_concrete
execute if predicate mad:gamerules/team_match/number_of_teams/ge_3 positioned ~7 ~1 ~-7 run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:yellow_concrete
execute if predicate mad:gamerules/team_match/number_of_teams/ge_4 positioned ~-7 ~1 ~7 run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:green_concrete
execute if predicate mad:gamerules/team_match/number_of_teams/ge_5 positioned ~7 ~1 ~0 run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:purple_concrete