#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Title
title @a times 20 40 20
execute if entity @p[team=TeamA,scores={Phase=21,Death=0}] run function mad:system/finish_team/winner/team_a
execute if entity @p[team=TeamB,scores={Phase=21,Death=0}] run function mad:system/finish_team/winner/team_b
execute if entity @p[team=TeamC,scores={Phase=21,Death=0}] run function mad:system/finish_team/winner/team_c
execute if entity @p[team=TeamD,scores={Phase=21,Death=0}] run function mad:system/finish_team/winner/team_d
execute if entity @p[team=TeamE,scores={Phase=21,Death=0}] run function mad:system/finish_team/winner/team_e