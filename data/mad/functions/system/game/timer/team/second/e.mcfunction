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
scoreboard players remove #mad_team_e Second 1

## Time over
execute if predicate mad:system/game/timer/team/second/lt_zero/e run kill @a[predicate=mad:player/alive/e]

## Bossbar
execute store result bossbar mad:bossbar/team/e max run scoreboard players get #mad_team_e TimeLimit
execute store result bossbar mad:bossbar/team/e value run scoreboard players get #mad_team_e Second
bossbar set mad:bossbar/team/e name ["",{"translate":"%s - 生存時間 残り %s 秒","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"score":{"name":"#mad_team_e","objective":"Second"},"color":"green","bold":true}],"color":"white","bold":false,"italic":false}]