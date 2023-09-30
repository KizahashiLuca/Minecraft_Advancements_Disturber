#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players remove #mad_team_c Second 1

## Time over
execute if predicate mad:system/game/timer/team/second/lt_zero/c as @a[predicate=mad:player/alive/c] run function mad:system/game/timer/team/time_up/c

## Bossbar
execute store result bossbar minecraft:bossbar_team_c max run scoreboard players get #mad_team_c TimeLimit
execute store result bossbar minecraft:bossbar_team_c value run scoreboard players get #mad_team_c Second
bossbar set minecraft:bossbar_team_c name ["",{"translate":"%s - 生存時間 残り %s 秒","with":[{"text":"黄チーム","color":"yellow","bold":true},{"score":{"name":"#mad_team_c","objective":"Second"},"color":"green","bold":true}],"color":"white","bold":false,"italic":false}]