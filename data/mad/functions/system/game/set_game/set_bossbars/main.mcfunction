#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Set bossbar
execute if predicate mad:gamerules/match_mode/individual run function mad:system/game/set_game/set_bossbars/individual/main
execute if predicate mad:gamerules/match_mode/team run function mad:system/game/set_game/set_bossbars/team/main