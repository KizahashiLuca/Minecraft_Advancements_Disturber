#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players remove #mad_team_b Second 1

## Time over
execute if predicate mad:system/game/timer/team/second/lt_zero/b run kill @a[predicate=mad:player/alive/b]

## Bossbar
execute store result bossbar mad:bossbar/team/b max run scoreboard players get #mad_team_b TimeLimit
execute store result bossbar mad:bossbar/team/b value run scoreboard players get #mad_team_b Second
bossbar set mad:bossbar/team/b name ["",{"translate":"%s - 生存時間 残り %s 秒","with":[{"text":"青チーム","color":"blue","bold":true},{"score":{"name":"#mad_team_b","objective":"Second"},"color":"green","bold":true}],"color":"white","bold":false,"italic":false}]