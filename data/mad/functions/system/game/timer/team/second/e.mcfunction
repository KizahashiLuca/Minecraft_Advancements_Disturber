#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players remove #mad_team_e Second 1

## Time over
execute if predicate mad:system/game/timer/team/second/lt_zero/e as @a[predicate=mad:player/alive/e] run function mad:system/game/timer/team/time_up/e

## Bossbar
execute store result bossbar minecraft:bossbar_team_e max run scoreboard players get #mad_team_e TimeLimit
execute store result bossbar minecraft:bossbar_team_e value run scoreboard players get #mad_team_e Second
bossbar set minecraft:bossbar_team_e name ["",{"translate":"%s - 生存時間 残り %s 秒","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"score":{"name":"#mad_team_e","objective":"Second"},"color":"green","bold":true}],"color":"white","bold":false,"italic":false}]