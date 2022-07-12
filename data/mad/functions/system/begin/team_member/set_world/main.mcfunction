#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Set world
worldborder set 32 0

## Teleport
tp @a 0 2.5 0 0 0

## Set block
execute in mad:world run setblock 0 1 0 minecraft:beacon
execute if predicate mad:gamerules/team_match/number_of_teams/ge_1 positioned 7 1 7 run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:red_concrete
execute if predicate mad:gamerules/team_match/number_of_teams/ge_2 positioned -7 1 -7 run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:blue_concrete
execute if predicate mad:gamerules/team_match/number_of_teams/ge_3 positioned 7 1 -7 run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:yellow_concrete
execute if predicate mad:gamerules/team_match/number_of_teams/ge_4 positioned -7 1 7 run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:green_concrete
execute if predicate mad:gamerules/team_match/number_of_teams/ge_5 positioned 7 1 0 run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:purple_concrete

## Effect
execute in mad:world run function mad:system/begin/team_member/effect/main