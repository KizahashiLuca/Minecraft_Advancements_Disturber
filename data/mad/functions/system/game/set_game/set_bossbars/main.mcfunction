#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset bossbar
bossbar set minecraft:bossbar name ["",{"text":"ゲームフェーズ","color":"white","bold":false,"italic":false}]
bossbar set minecraft:bossbar players @a[predicate=mad:player/not_participant]

## Set bossbar
execute if predicate mad:gamerules/match_mode/individual run function mad:system/game/set_game/set_bossbars/individual/main
execute if predicate mad:gamerules/match_mode/team run function mad:system/game/set_game/set_bossbars/team/main