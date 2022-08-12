#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Set bossbar players
execute if predicate mad:gamerules/num_of_participants/ge_1 run function mad:system/game/set_game/set_bossbars/individual/part_a
execute if predicate mad:gamerules/num_of_participants/ge_6 run function mad:system/game/set_game/set_bossbars/individual/part_b
execute if predicate mad:gamerules/num_of_participants/ge_11 run function mad:system/game/set_game/set_bossbars/individual/part_c
execute if predicate mad:gamerules/num_of_participants/ge_16 run function mad:system/game/set_game/set_bossbars/individual/part_d