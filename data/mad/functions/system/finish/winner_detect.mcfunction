#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Title
title @a times 20 80 20
execute if score #mad IsTeam matches 0 if entity @p[predicate=mad:ongame/player/participant_alive] run function mad:system/finish/winner/individual
execute if entity @p[predicate=mad:ongame/player/team_a_alive] run function mad:system/finish/winner/team_a
execute if entity @p[predicate=mad:ongame/player/team_b_alive] run function mad:system/finish/winner/team_b
execute if entity @p[predicate=mad:ongame/player/team_c_alive] run function mad:system/finish/winner/team_c
execute if entity @p[predicate=mad:ongame/player/team_d_alive] run function mad:system/finish/winner/team_d
execute if entity @p[predicate=mad:ongame/player/team_e_alive] run function mad:system/finish/winner/team_e