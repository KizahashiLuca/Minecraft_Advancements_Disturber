#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボード設定
scoreboard players remove #mad Second 1

## チーム分岐
execute if predicate mad:system/game/timer/team/a run function mad:system/game/timer/team/each_team with storage mad: team.a
execute if predicate mad:system/game/timer/team/b run function mad:system/game/timer/team/each_team with storage mad: team.b
execute if predicate mad:system/game/timer/team/c run function mad:system/game/timer/team/each_team with storage mad: team.c
execute if predicate mad:system/game/timer/team/d run function mad:system/game/timer/team/each_team with storage mad: team.d