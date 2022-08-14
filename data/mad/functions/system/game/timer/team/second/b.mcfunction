#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players remove #mad_team_b Second 1

## Time over
execute if predicate mad:system/game/timer/team/second/lt_zero/b run kill @a[predicate=mad:player/alive/b]

## Bossbar
execute store result bossbar minecraft:bossbar_team_b max run scoreboard players get #mad_team_b TimeLimit
execute store result bossbar minecraft:bossbar_team_b value run scoreboard players get #mad_team_b Second
bossbar set minecraft:bossbar_team_b name ["",{"translate":"%s - 生存時間 残り %s 秒","with":[{"text":"青チーム","color":"blue","bold":true},{"score":{"name":"#mad_team_b","objective":"Second"},"color":"green","bold":true}],"color":"white","bold":false,"italic":false}]