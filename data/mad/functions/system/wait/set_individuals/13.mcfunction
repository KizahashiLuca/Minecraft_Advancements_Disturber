#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set bossbar
bossbar add minecraft:bossbar_individual_13 ["",{"translate":"%s - 生存時間 残り %s 秒","with":[{"selector":"@s","color":"red","bold":true},{"score":{"name":"@s","objective":"Second"},"color":"green","bold":true}],"color":"white","bold":false,"italic":false}]
bossbar set minecraft:bossbar_individual_13 color white
bossbar set minecraft:bossbar_individual_13 style notched_10
bossbar set minecraft:bossbar_individual_13 visible true
execute store result bossbar minecraft:bossbar_individual_13 max run scoreboard players get @s TimeLimit
execute store result bossbar minecraft:bossbar_individual_13 value run scoreboard players get @s Second