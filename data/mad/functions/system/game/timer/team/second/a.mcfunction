#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players remove #mad_team_a Second 1

## Time over
execute if predicate mad:system/game/timer/team/second/lt_zero/a as @a[predicate=mad:player/alive/a] run function mad:system/game/timer/team/time_up/a

## Bossbar
execute store result bossbar minecraft:bossbar_team_a max run scoreboard players get #mad_team_a TimeLimit
execute store result bossbar minecraft:bossbar_team_a value run scoreboard players get #mad_team_a Second
bossbar set minecraft:bossbar_team_a name ["",{"translate":"%s - 生存時間 残り %s 秒","with":[{"text":"赤チーム","color":"red","bold":true},{"score":{"name":"#mad_team_a","objective":"Second"},"color":"green","bold":true}],"color":"white","bold":false,"italic":false}]