#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players remove #mad_team_d Second 1

## Time over
execute if predicate mad:system/game/timer/team/second/lt_zero/d as @a[predicate=mad:player/alive/d] run function mad:system/game/timer/team/time_up/d

## Bossbar
execute store result bossbar minecraft:bossbar_team_d max run scoreboard players get #mad_team_d TimeLimit
execute store result bossbar minecraft:bossbar_team_d value run scoreboard players get #mad_team_d Second
bossbar set minecraft:bossbar_team_d name ["",{"translate":"%s - 生存時間 残り %s 秒","with":[{"text":"緑チーム","color":"green","bold":true},{"score":{"name":"#mad_team_d","objective":"Second"},"color":"green","bold":true}],"color":"white","bold":false,"italic":false}]