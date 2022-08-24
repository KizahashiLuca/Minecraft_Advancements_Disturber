#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Title
title @s title ["",{"text":"死んでしまった！","color":"red","bold": true,"italic":false}]
title @s times 20 80 20

## Detect death
gamemode survival @s
scoreboard players set @s Death 0
scoreboard players set @s Phase 21

## Death penalty
execute as @s[predicate=mad:player/team/a] run scoreboard players operation #mad_team_a Second -= #mad DeathPenaltyTime
execute as @s[predicate=mad:player/team/b] run scoreboard players operation #mad_team_b Second -= #mad DeathPenaltyTime
execute as @s[predicate=mad:player/team/c] run scoreboard players operation #mad_team_c Second -= #mad DeathPenaltyTime
execute as @s[predicate=mad:player/team/d] run scoreboard players operation #mad_team_d Second -= #mad DeathPenaltyTime
execute as @s[predicate=mad:player/team/e] run scoreboard players operation #mad_team_e Second -= #mad DeathPenaltyTime