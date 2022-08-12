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
scoreboard players remove #mad_team_d Second 1

## Time over
execute if predicate mad:system/game/timer/team/second/lt_zero/d run kill @a[predicate=mad:player/alive/d]

## Bossbar
execute store result bossbar minecraft:bossbar/team/d max run scoreboard players get #mad_team_d TimeLimit
execute store result bossbar minecraft:bossbar/team/d value run scoreboard players get #mad_team_d Second
bossbar set minecraft:bossbar/team/d name ["",{"translate":"%s - 生存時間 残り %s 秒","with":[{"text":"緑チーム","color":"green","bold":true},{"score":{"name":"#mad_team_d","objective":"Second"},"color":"green","bold":true}],"color":"white","bold":false,"italic":false}]