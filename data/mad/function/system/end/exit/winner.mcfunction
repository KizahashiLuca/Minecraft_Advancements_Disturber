#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 対戦形式分岐
execute if predicate mad:gamerule/match_mode/individual/ if entity @p[predicate=mad:player/alive/] run function mad:message/end/winner/individual
execute if predicate mad:gamerule/match_mode/team if entity @p[predicate=mad:player/alive/a] run function mad:message/end/winner/team with storage mad: team.a
execute if predicate mad:gamerule/match_mode/team if entity @p[predicate=mad:player/alive/b] run function mad:message/end/winner/team with storage mad: team.b
execute if predicate mad:gamerule/match_mode/team if entity @p[predicate=mad:player/alive/c] run function mad:message/end/winner/team with storage mad: team.c
execute if predicate mad:gamerule/match_mode/team if entity @p[predicate=mad:player/alive/d] run function mad:message/end/winner/team with storage mad: team.d