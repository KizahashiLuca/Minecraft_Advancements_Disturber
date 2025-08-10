#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## ボスバー
#### ゲームフェーズ
bossbar set minecraft:bossbar name ['',{text:'ゲームフェーズ'}]
bossbar set minecraft:bossbar players @a[predicate=mad:player/spectator]

## ボスバー設定
execute if predicate mad:gamerule/match_mode/individual/ as @a[predicate=mad:player/] run function mad:system/game/initialize/bossbars/individual/
execute if predicate mad:gamerule/team_rules/1/number_of_teams/ge_1 run function mad:system/game/initialize/bossbars/team with storage mad: team.a
execute if predicate mad:gamerule/team_rules/1/number_of_teams/ge_2 run function mad:system/game/initialize/bossbars/team with storage mad: team.b
execute if predicate mad:gamerule/team_rules/1/number_of_teams/ge_3 run function mad:system/game/initialize/bossbars/team with storage mad: team.c
execute if predicate mad:gamerule/team_rules/1/number_of_teams/ge_4 run function mad:system/game/initialize/bossbars/team with storage mad: team.d